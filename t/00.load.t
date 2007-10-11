use Test::More tests => 2;

BEGIN {
use_ok('POE');
use_ok( 'POE::Loop::AnyEvent' );
}

diag( "Testing POE::Loop::AnyEvent $POE::Loop::AnyEvent::VERSION" );
