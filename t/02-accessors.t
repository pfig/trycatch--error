#!perl -T

use Test::More tests => 4;

use TryCatch::Error;

my $e = TryCatch::Error->new;

is( $e->get_value, 0, 'Correct value' );
is( $e->get_string, '', 'Correct string' );


$e->set_value( 1 );
$e->set_string( 'An error' );

is( $e->get_value, 1, 'Correct value' );
is( $e->get_string, 'An error', 'Correct string' );
