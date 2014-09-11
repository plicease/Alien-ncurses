package Alien::ncurses;

use strict;
use warnings;
use base qw( Alien::Base );

# ABSTRACT: Build and make available ncurses
# VERSION

=head1 SYNOPSIS

In your C<Build.PL>:

 use Alien::ncurses;
 use Module::Build;
 
 my $build = Module::Build->new(
   ...
   extra_compiler_flags => Alien::ncurses->cflags,
   extra_linker_flags   => Alien::ncurses->libs,
   ...
 );
 
 $build->create_build_script;

In your L<FFI::Raw> script:

 use Alien::ncurses;
 use FFI::Raw;
 
 my($dll) = Alien::ncurses->dynamic_libs;
 FFI::Raw->new($dll, '...', ...);

=head1 DESCRIPTION

This distribution installs ncurses so that it can be used by other Perl distributions.  If already
installed for your operating system, and it can be found, this distribution will use the ncurses
that comes with your operating system, otherwise it will download it from the Internet, build and
install it fro you.

=cut

1;
