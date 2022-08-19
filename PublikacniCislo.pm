package Schema::PublikacniCislo;

use base qw(Schema::Abstract);
use strict;
use warnings;

use File::Share ':all';

our $VERSION = 0.01;

sub _versions_json_file {
	my $self = shift;

	my $versions_json_file = dist_file('Schema-PublikacniCislo', 'versions.json');

	return $versions_json_file;
}

1;

__END__
