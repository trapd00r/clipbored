#!/usr/bin/perl
use ExtUtils::MakeMaker;


WriteMakefile(
    NAME => 'clipbored',
    ABSTRACT => 'Manage X selections',
    AUTHOR => 'Magnus Woldrich <trapd00r@trapd00r.se',
    EXE_FILES => ['clipbored', 'scripts/dmenuclip', 'scripts/dmenurl',
                  'scripts/fmenuclip'],
    LICENSE => "GPLv2",
    MIN_PERL_VERSION => 5.000,
);


