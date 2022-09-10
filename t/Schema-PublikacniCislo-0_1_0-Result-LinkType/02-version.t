use strict;
use warnings;

use Schema::PublikacniCislo::0_1_0::Result::LinkType;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::PublikacniCislo::0_1_0::Result::LinkType::VERSION, 0.01, 'Version.');
