package BookZone::Controller::Example;
use Mojo::Base 'Mojolicious::Controller';

sub welcome {
  my $self = shift;

  $self->render(msg => 'BCN Perl Workshop 2015');
}

1;
