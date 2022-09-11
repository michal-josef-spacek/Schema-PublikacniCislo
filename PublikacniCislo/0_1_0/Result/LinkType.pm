package Schema::PublikacniCislo::0_1_0::Result::LinkType;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('link_type');
__PACKAGE__->add_columns(
	'link_type_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'link_type' => {
		'data_type' => 'text',
		'size' => 255,
	},
	'wikidata_property' => {
		'data_type' => 'text',
		'size' => 30,
		'is_nullable' => 1,
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('link_type_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::PublikacniCislo::0_1_0::Result::Person', 'created_by_id');

1;

__END__
