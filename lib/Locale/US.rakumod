unit module Locale::US;

my constant %code-to-state = q:to/END_OF_STATES/.lines.map: *.split(':').Slip;
  AL:ALABAMA
  AK:ALASKA
  AS:AMERICAN SAMOA
  AZ:ARIZONA
  AR:ARKANSAS
  CA:CALIFORNIA
  CO:COLORADO
  CT:CONNECTICUT
  DE:DELAWARE
  DC:DISTRICT OF COLUMBIA
  FM:FEDERATED STATES OF MICRONESIA
  FL:FLORIDA
  GA:GEORGIA
  GU:GUAM
  HI:HAWAII
  ID:IDAHO
  IL:ILLINOIS
  IN:INDIANA
  IA:IOWA
  KS:KANSAS
  KY:KENTUCKY
  LA:LOUISIANA
  ME:MAINE
  MH:MARSHALL ISLANDS
  MD:MARYLAND
  MA:MASSACHUSETTS
  MI:MICHIGAN
  MN:MINNESOTA
  MS:MISSISSIPPI
  MO:MISSOURI
  MT:MONTANA
  NE:NEBRASKA
  NV:NEVADA
  NH:NEW HAMPSHIRE
  NJ:NEW JERSEY
  NM:NEW MEXICO
  NY:NEW YORK
  NC:NORTH CAROLINA
  ND:NORTH DAKOTA
  MP:NORTHERN MARIANA ISLANDS
  OH:OHIO
  OK:OKLAHOMA
  OR:OREGON
  PW:PALAU
  PA:PENNSYLVANIA
  PR:PUERTO RICO
  RI:RHODE ISLAND
  SC:SOUTH CAROLINA
  SD:SOUTH DAKOTA
  TN:TENNESSEE
  TX:TEXAS
  UT:UTAH
  VT:VERMONT
  VI:VIRGIN ISLANDS
  VA:VIRGINIA
  WA:WASHINGTON
  WV:WEST VIRGINIA
  WI:WISCONSIN
  WY:WYOMING
  END_OF_STATES

my constant @codes  = %code-to-state.keys.sort;
my constant @states = %code-to-state.values.sort;
my constant %state-to-code = %code-to-state.invert;

sub state-to-code($state) is export { %state-to-code{$state.uc} }
sub code-to-state($code)  is export { %code-to-state{$code.uc}  }
sub all-state-names() is export { @states }
sub all-state-codes() is export { @codes }

=begin pod

=head1 NAME

Locale::US - Two letter codes for identifying United States territories and vice versa

=head1 SYNOPSIS

=begin code :lang<raku>

use Locale::US;

say state-to-code("California");  # CA
say code-to-state("CA");  # CALIFORNIA

.say for all-state-names;  # ALABAMA, ALASKA...
.say for all-state-codes;  # AK, AL, ...

=end code

=head1 DESCRIPTION

A Raku module for mapping two character state abbreviations for United
States territories to their state name and vice versa. This module was
very much inspired by the Perl module of the same name.

=head1 EXPORTED SUBROUTINES

=head2 state-to-code

Map a state name to a two-letter code.

=head2 code-to-state

Map a two-letter code to a state name (all uppercase).

=head2 all-state-names

Returns a C<List> of all state names in alphabetical order.

=head2 all-state-codes

Returns a C<List> of all state codes in alphabetical order.

=head1 AUTHOR

Jonathan Scott Duff

=head1 COPYRIGHT AND LICENSE

Copyright 2012 - 2017 Jonathan Scott Duff

Copyright 2018 - 2022 Raku Community

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
