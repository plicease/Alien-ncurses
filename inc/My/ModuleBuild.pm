package My::ModuleBuild;

use strict;
use warnings;
use base qw( Alien::Base::ModuleBuild );

sub new
{
  my($class, %args) = @_;
  
  $args{alien_name} = 'ncurses';
  #$args{alien_build_commands} = [
  #  '%c --prefix=%s',
  #  'make',
  #];
  $args{alien_isolate_dynamic} = 1;
  $args{alien_repository} = {
    protocol => 'http',
    host     => 'ftp.gnu.org',
    location => '/gnu/ncurses/',
    pattern  => qr{^ncurses-.*\.tar\.gz$},
  };
  
  my $self = $class->SUPER::new(%args);
  
  $self;
}

1;
