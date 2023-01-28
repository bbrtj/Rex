#
# (c) Jan Gehring <jan.gehring@gmail.com>
#

package Rex::Helper::Misc;

use 5.010001;
use strict;
use warnings;

our $VERSION = '9999.99.99_99'; # VERSION

sub get_random {
  my $count = shift;
  my @chars = @_;

  my $ret = "";
  for ( 1 .. $count ) {
    $ret .= $chars[ int( rand( scalar(@chars) - 1 ) ) ];
  }

  return $ret;
}

1;
