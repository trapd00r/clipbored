#!/usr/bin/perl
use ExtUtils::MakeMaker;


WriteMakefile(
    NAME => 'clipbored',
    ABSTRACT => 'Manage X selections',
    AUTHOR => 'Magnus Woldrich <trapd00r@trapd00r.se',
    EXE_FILES => ['clipbored', 'scripts/dmenuclip', 'scripts/dmenurl'],
    LICENSE => "Perl",
    MIN_PERL_VERSION => 5.000,
);


