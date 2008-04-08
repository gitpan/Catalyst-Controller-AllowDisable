use strict;
use warnings;
use inc::Module::Install;

name 'Catalyst-Controller-AllowDisable';
author 'Tomohiro Teranishi <tomohiro.teranishi@gmail.com>';
all_from 'lib/Catalyst/Controller/AllowDisable.pm';
requires 'Test::More'        => 0;
requires 'Catalyst::Runtime' => 5.70;
requires 'Test::Spelling'    => 0;
license 'perl';
auto_install;
WriteAll;

