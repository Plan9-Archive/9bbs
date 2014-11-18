9bbs
====

citadel style bbs for plan 9, written in rc

download
========

[9bbs.tgz](http://plan9.stanleylieber.com/src/9bbs.tgz)

[bitbucket](https://bitbucket.org/stanleylieber/9bbs)

install
=====

9bbs is started by a listen(8) script that runs on
an arbitrary port. The example files included with
this distribution are setup to run on port 666, but
may be modified to suit. The following instructions
assume that a listener is already scanning the
directory /rc/bin/service (true by default for
cpu servers).

First, edit src/tcp666 to reflect the location of
the 9bbs files on your system, and set any desired
options.

Next, build and install the programs:

	cd 9bbs/src
	mk install
	cd ..
	mk log
	mk perms

Note: 9bbs uses a modified copy of the Plan 9 pager,
p(1). It is identical in all ways to the original
except that the ! command for issuing shell commands
has been removed. The resulting np binary is copied
to $objtype/bin/, the tcp666 script is copied to
/rc/bin/service/, and a log file is created in
/sys/log/9bbs. All other 9bbs files remain within
the 9bbs directory.

9bbs will now answer telnet connections on port 666.
