use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Schema for publikacnicislo.cz application.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0.05;
author_requires 'Test::More' => 0;
author_requires 'Test::NoWarnings' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
install_share 'share';
license 'bsd';
name 'Schema-PublikacniCislo';
perl_version 5.006002;
readme_from 'PublikacniCislo.pm';
recursive_author_tests('xt');
requires 'File::Share' => 0;
requires 'Schema::Abstract' => 0;
resources 'bugtracker' => 'https://github.com/commons-vote/Schema-PublikacniCislo/issues';
resources 'homepage' => 'https://github.com/commons-vote/Schema-PublikacniCislo';
resources 'repository' => 'git://github.com/commons-vote/Schema-PublikacniCislo';
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
