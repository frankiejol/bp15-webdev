package BookZone::Controller::Example;
use Mojo::Base 'Mojolicious::Controller';

sub welcome {
    my $self = shift;
    $self->render(msg => 'Book Zone for #bcnperl2015', template => 'bootstrap');
}

sub buy {
    my $self = shift;
    my ($category) = $self->req->url->to_abs->path =~ m{/buy/(.*)};
    $self->render(msg => $category, template => 'bootstrap');
}

sub cart {
    my $self = shift;
    $self->render(template => 'cart');
}

sub login {
    my $self = shift;
    $self->render(template => 'login');
}

1;
