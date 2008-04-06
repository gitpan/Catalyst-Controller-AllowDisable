package Catalyst::Controller::AllowDisable;

use warnings;
use strict;

our $VERSION = '0.02';

use base qw/Catalyst::Controller/;
use strict;
use warnings;

sub new {
    my $self = shift;
    my $app = $_[0];
    if ( !$app->config->{on_controller_disable} ) {
        my $new = $self->NEXT::new(@_);
        $new->_application( $app );
        return $new;
    }
    return $app;
}


1;

=head1 NAME

Catalyst::Controller::AllowDisable - Use when you want to disable your controller.

=head1 SYNOPSIS

    Package App::Web::Controller::Devel;

    use base qw/Catalyst::Controller::AllowDisable/;

    sub make_10000_users : Local {

    }

    1;


myapp.yml

 on_controller_disable:1


=head1 DESCRIPTION

I sometime create controller only for developers which I do not want to ship it to production but I do not want to remove it also. So I create this controller module. You can disable controller which using this module using on_controller_disable=1 at config.

=head1 METHOD

=head2 new

=head1 AUTHOR

Tomohiro Teranishi, C<< <tomohiro.teranishi at gmail.com> >>

=head1 COPYRIGHT & LICENSE

Copyright 2008 Tomohiro Teranishi, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

