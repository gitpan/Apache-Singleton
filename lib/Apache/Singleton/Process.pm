package Apache::Singleton::Process;
BEGIN {
  $Apache::Singleton::Process::VERSION = '0.12';
}

# ABSTRACT: One instance per One Process

use strict;
use base 'Apache::Singleton';

no strict 'refs';

sub _get_instance {
    my $class = shift;
    my $global = "$class\::_instance";
    return $$global;
}

sub _set_instance {
    my($class, $instance) = @_;
    my $global = "$class\::_instance";
    $$global = $instance;
}

1;



=pod

=head1 NAME

Apache::Singleton::Process - One instance per One Process

=head1 VERSION

version 0.12

=head1 SYNOPSIS

  package Printer;
  use base qw(Apache::Singleton::Process);

=head1 DESCRIPTION

See L<Apache::Singleton>.

=head1 SEE ALSO

L<Apache::Singleton>

=head1 SOURCE

The development version is on github at L<http://github.com/mschout/apache-singleton>
and may be cloned from L<git://github.com/mschout/apache-singleton.git>

=head1 BUGS

Please report any bugs or feature requests to bug-apache-singleton@rt.cpan.org or through the web interface at:
 http://rt.cpan.org/Public/Dist/Display.html?Name=Apache-Singleton

=head1 AUTHOR

Michael Schout <mschout@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Michael Schout.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__
