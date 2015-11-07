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
  $r->get('/')->to('main#welcome');

  $r->get('/cart.html')->to(controller=> 'main', action =>'cart');
  $r->get('/login.html')->to('main#login');

  $r->get('/buy/*')->to('main#buy');
  $r->get('/categories.json')->to('main#categories');

}

1;
