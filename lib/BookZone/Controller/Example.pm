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
    my ($section) = $self->req->url->to_abs->path =~ m{/categories/(.*).json};
    $self->render(json => [
            {id_category => 1 , category => 'Mistery '},
            {id_category => 2 , category => 'Horror' },
            {id_category => 3 , category => 'Cooking' },
            {id_category => 4 , category => 'Classic' },
    ]);
}

sub articles_list {
    my $self = shift;
    $self->render(json => [
            {id_article => 1 , article => 'Moby Dick'},
            {id_article => 2 , article => 'Les Miserables' },
            {id_article => 3 , article => 'Oliver Twist' },
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
