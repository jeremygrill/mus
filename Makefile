# Make sure ocamlbuild can find opam-managed packages: first run
#
# eval `opam config env`

# Easiest way to build: using ocamlbuild, which in turn uses ocamlfind

.PHONY : llvm
llvm: all
	export PATH=/usr/local/opt/llvm/bin:$(PATH)

.PHONY : fail
fail: all
	./toplevel.native tests/fail-print.mus 2>> tests/fail-print.err
	llc tests/fail-print.ll 2>> tests/fail-print.err
	cc tests/fail-print.s 2>> tests/fail-print.err
	./a.out 2>> tests/fail-print.err

.PHONY : tests
tests: all
	./toplevel.native tests/test-chord.mus > tests/test-chord.ll
	llc tests/test-chord.ll
	cc tests/test-chord.s
	./a.out > tests/test-chord.out

.PHONY : warmup
warmup: all
	./toplevel.native tests/test-warmup.mus > tests/test-warmup.ll
	llc tests/test-warmup.ll > tests/test-warmup.s
	g++ -c  -std=c++11 MidiFile.cpp MidiEvent.cpp MidiEventList.cpp MidiMessage.cpp Binasc.cpp Options.cpp 
	g++ -c -std=c++11 play.cpp
	g++ -stdlib=libc++ MidiFile.o MidiEvent.o MidiEventList.o MidiMessage.o Binasc.o play.o tests/test-warmup.s printc.o
	./a.out > tests/test-warmup.out
	cat tests/test-warmup.out

.PHONY : hello
hello: all
	./toplevel.native tests/hello.mus > tests/hello.ll
	llc tests/hello.ll > tests/hello.s
	g++ -c  -std=c++11 MidiFile.cpp MidiEvent.cpp MidiEventList.cpp MidiMessage.cpp Binasc.cpp Options.cpp 
	g++ -c -std=c++11 play.cpp
	g++ -stdlib=libc++ MidiFile.o MidiEvent.o MidiEventList.o MidiMessage.o Binasc.o play.o tests/hello.s printc.o
	./a.out > tests/hello.out
	cat tests/hello.out

.PHONY : play
play: 
	g++ -c  -std=c++11 MidiFile.cpp MidiEvent.cpp MidiEventList.cpp MidiMessage.cpp Binasc.cpp
	g++ -c -std=c++11 play.cpp
	gcc MidiFile.o MidiEvent.o MidiEventList.o MidiMessage.o Binasc.o play.o
	#$(MAKE) -f Makefile.programs play
	
.PHONY : all
all : toplevel.native printc.o

.PHONY : toplevel.native
toplevel.native :
	rm -f *.o
	ocamlbuild -use-ocamlfind -pkgs llvm,llvm.analysis -cflags -w,+a-4 \
		toplevel.native


# "make clean" removes all generated files

.PHONY : clean
clean :
	ocamlbuild -clean
	rm -rf testall.log *.diff toplevel scanner.ml parser.ml parser.mli
	rm -rf hello
	rm -rf *.cmx *.cmi *.cmo *.cmx *.o *.s *.ll *.out *.exe *.mid
	rm -rf tests/*.ll tests/*.s

# More detailed: build using ocamlc/ocamlopt + ocamlfind to locate LLVM

OBJS = ast.cmx sast.cmx codegen.cmx parser.cmx scanner.cmx semant.cmx toplevel.cmx

toplevel : $(OBJS)
	g++ -o -DBUILD_TEST printc.cpp
	ocamlfind ocamlopt -linkpkg -package llvm -package llvm.analysis $(OBJS) -o toplevel

scanner.ml : scanner.mll
	ocamllex scanner.mll

parser.ml parser.mli : parser.mly
	ocamlyacc parser.mly

%.cmo : %.ml
	ocamlc -c $<

%.cmi : %.mli
	ocamlc -c $<

%.cmx : %.ml
	ocamlfind ocamlopt -c -package llvm $<

### Generated by "ocamldep *.ml *.mli" after building scanner.ml and parser.ml
ast.cmo :
ast.cmx :
codegen.cmo : ast.cmo
codegen.cmx : ast.cmx
toplevel.cmo : semant.cmo scanner.cmo parser.cmi codegen.cmo ast.cmo
toplevel.cmx : semant.cmx scanner.cmx parser.cmx codegen.cmx ast.cmx
parser.cmo : ast.cmo parser.cmi
parser.cmx : ast.cmx parser.cmi
scanner.cmo : parser.cmi
scanner.cmx : parser.cmx
semant.cmo : ast.cmo
semant.cmx : ast.cmx
parser.cmi : ast.cmo

# Building the tarball

TESTS = 1 2 3 4 5

FAILS = 1 2 3 4 5
  
  
TESTFILES = $(TESTS:%=test-%.mc) $(TESTS:%=test-%.out) \
	    $(FAILS:%=fail-%.mc) $(FAILS:%=fail-%.err)

TARFILES = README \
        ast.ml sast.ml codegen.ml Makefile toplevel.ml parser.mly \
        scanner.mll semant.ml testall.sh hello.c \
	$(TESTFILES:%=tests/%)

tar : toplevel-sast.tar.gz

toplevel-sast.tar.gz : $(TARFILES)
	cd .. && tar czf toplevel-sast/toplevel-sast.tar.gz \
		$(TARFILES:%=toplevel-sast/%)
