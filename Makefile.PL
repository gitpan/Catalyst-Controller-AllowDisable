use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Catalyst::Controller::AllowDisable',
    AUTHOR              => 'Tomohiro teranishi <tomohiro.teranishi@gmail.com>',
    VERSION_FROM        => 'lib/Catalyst/Controller/AllowDisable.pm',
    ABSTRACT_FROM       => 'lib/Catalyst/Controller/AllowDisable.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Catalyst::Runtime' => 5.70,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Catalyst-Controller-AllowDisable-*' },
);
