use strict;
use warnings;

use Schema::PublikacniCislo;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::PublikacniCislo::VERSION, 0.01, 'Version.');
