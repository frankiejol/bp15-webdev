package BookZone;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');

  $r->get('/cart.html')->to('example#cart');
  $r->get('/login.html')->to('example#login');

  $r->get('/categories.json')->to('example#categories');

  $r->get('/buy/*')->to('example#buy');
}

1;
