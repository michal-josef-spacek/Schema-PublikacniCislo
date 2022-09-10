package Schema::PublikacniCislo::0_1_0::Result::PublicationNumberLink;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('publication_number_link');
__PACKAGE__->add_columns(
	'publication_number_id' => {
		'data_type' => 'integer',
	},
	'link' => {
		'data_type' => 'text',
		'size' => 255,
	},
	'link_type_id' => {
		'data_type' => 'integer',
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('publication_number_id', 'link_type_id');
__PACKAGE__->belongs_to('publication_number' => 'Schema::PublikacniCislo::0_1_0::Result::PublicationNumber', 'publication_number_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::PublikacniCislo::0_1_0::Result::Person', 'created_by_id');
__PACKAGE__->belongs_to('link_type' => 'Schema::PublikacniCislo::0_1_0::Result::LinkType', 'link_type_id');

1;

__END__
