use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Schema::PublikacniCislo::0_1_0::Result::PersonRole');
}

# Test.
require_ok('Schema::PublikacniCislo::0_1_0::Result::PersonRole');
