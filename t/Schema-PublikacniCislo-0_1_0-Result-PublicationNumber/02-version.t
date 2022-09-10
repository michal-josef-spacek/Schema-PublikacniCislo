use strict;
use warnings;

use Schema::PublikacniCislo::0_1_0::Result::PublicationNumber;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::PublikacniCislo::0_1_0::Result::PublicationNumber::VERSION, 0.01, 'Version.');
