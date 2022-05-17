[![Actions Status](https://github.com/raku-community-modules/Locale-US/actions/workflows/test.yml/badge.svg)](https://github.com/raku-community-modules/Locale-US/actions)

NAME
====

Locale::US - Two letter codes for identifying United States territories and vice versa

SYNOPSIS
========

```raku
use Locale::US;

say state-to-code("California");  # CA
say code-to-state("CA");  # CALIFORNIA

.say for all-state-names;  # ALABAMA, ALASKA...
.say for all-state-codes;  # AK, AL, ...
```

DESCRIPTION
===========

A Raku module for mapping two character state abbreviations for United States territories to their state name and vice versa. This module was very much inspired by the Perl module of the same name.

EXPORTED SUBROUTINES
====================

state-to-code
-------------

Map a state name to a two-letter code.

code-to-state
-------------

Map a two-letter code to a state name (all uppercase).

AUTHOR
======

Jonathan Scott Duff

COPYRIGHT AND LICENSE
=====================

Copyright 2012 - 2017 Jonathan Scott Duff

Copyright 2018 - 2022 Raku Community

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

