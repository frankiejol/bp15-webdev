package BookZone::Controller::Example;
use Mojo::Base 'Mojolicious::Controller';

sub welcome {
  my $self = shift;

  $self->render(data => 
      _header().
      _navigation().
      '<div class="container"><div class="jumbotron">'.
      "<h1>Welcome !</h1>\n".
      '</div></div>'.
      _footer()
  );
}

sub _header {
    return 
'<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
';
}

sub _footer {
    return '
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body></html>
';
}

sub _navigation {
    return '
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">BookZone</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Buy <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/books">Books</a></li>
                <li><a href="/comics">Comic Books</a></li>
                <li><a href="/magazines">Magazines</a></li>
                <li><a href="/jewelry">Jewelry</a></li>
              </ul>
            </li>
            <li><a href="/cart.html">Cart</a></li>
            <li><a href="/about.html">Login</a></li>
          </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
'           
}

1;
