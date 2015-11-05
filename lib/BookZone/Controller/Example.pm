package BookZone::Controller::Example;
use Mojo::Base 'Mojolicious::Controller';

sub welcome {
    my $self = shift;
    $self->render(msg => 'Book Zone for #bcnperl2015', template => 'bootstrap');
}

sub buy {
    my $self = shift;
    my ($section) = $self->req->url->to_abs->path =~ m{/buy/(.*)};
    $self->render(section => $section, template => 'buy');
}

sub cart {
    my $self = shift;
    $self->render(template => 'cart');
}

sub categories {
    my $self = shift;
    $self->render(json => [
            {id_category => 1 , category => 'Mistery '},
            {id_category => 2 , category => 'Horror' },
            {id_category => 2 , category => 'Cooking' },
    ]);
}

sub articles_list {
    my $self = shift;
    $self->render(json => [
            {id_article => 1 , article => 'Foo'},
            {id_article => 2 , article => 'Bar' },
            {id_article => 3 , article => 'Meh' },
    ]);
}

sub article {
    my $self = shift;
    $self->render(json => 
            {title => 'Moby Dick',
                author => 'Charles Dickens',
                price => 34
            }
        );
    }


sub login {
    my $self = shift;
    $self->render(template => 'login');
}

1;
