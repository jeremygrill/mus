Before running the testall.sh, make sure to run the following command:
$ ocamlbuild toplevel.native

The test script prints out “OK” when a test of the format test-*.mus is successfully reduced by running ./toplevel.native test-*.mus.  The test script prints out “OK” when a test of the format fail-*.mus is NOT successfully reduced by running ./toplevel.native faill-*.mus.  A successful run of the testall.sh file will print the following:

$ ./testall.sh
test-1...OK
test-2...OK
test-3...OK
test-4...OK
test-5...OK
fail-1...OK
fail-2...OK
fail-3...OK
fail-4...OK
fail-5...OK

Before running testall script, run the command
$ chmod +x testall.sh

To run a test on an individual file, in the top-level directory, run the following (for example):

$./toplevel.native tests/test-3.mus 

To build the toplevel.native file, run the following:
$ ocamlbuild topleve.native

To test the parser, run the following:
$ ocamlyacc parser.mly
