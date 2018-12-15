package HelloWorld;
use strict;
use warnings FATAL => 'all';

sub new {
    my ($proto,%args) = @_;
    my $self = bless {%args}, $proto;
    return $self;
}

sub get_hello {
    return $_[0]->{hello};
}
sub set_hello {
    my ($self, $new_value) = @_;
    $$self{hello} = $new_value;
    return $self;
}
1;