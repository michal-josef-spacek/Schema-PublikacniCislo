package Schema::PublikacniCislo::0_1_0::Result::PublicationNumberPrefix;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('publication_number_prefix');
__PACKAGE__->add_columns(
	'publication_number_prefix_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'publication_number_prefix' => {
		'data_type' => 'integer',
		'size' => 5,
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('publication_number_prefix_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::PublikacniCislo::0_1_0::Result::Person', 'created_by_id');

1;

__END__
