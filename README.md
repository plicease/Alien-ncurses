# Alien::ncurses

Build and make available ncurses

# SYNOPSIS

In your `Build.PL`:

    use Alien::ncurses;
    use Module::Build;
    
    my $build = Module::Build->new(
      ...
      extra_compiler_flags => Alien::ncurses->cflags,
      extra_linker_flags   => Alien::ncurses->libs,
      ...
    );
    
    $build->create_build_script;

In your [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus) script:

    use Alien::ncurses;
    use FFI::Platypus;
    
    my $ffi = FFI::Platypus->new;
    $ffi->lib(Alien::ncurses->dynamic_libs);
    $ffi->attach( ... );

# DESCRIPTION

This distribution installs ncurses so that it can be used by other Perl distributions.  If already
installed for your operating system, and it can be found, this distribution will use the ncurses
that comes with your operating system, otherwise it will download it from the Internet, build and
install it fro you.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
