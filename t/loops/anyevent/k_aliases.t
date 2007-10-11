#!/usr/bin/perl -w
# $Id$

use strict;

use lib qw(/opt/local/lib/perl5/site_perl/5.8.8/POE/Test/Loops);
use Test::More;
use POSIX qw(_exit);

sub skip_tests { return }

BEGIN {
  if (my $why = skip_tests('k_aliases')) {
    plan skip_all => $why
  }
}

# Run the tests themselves.
require 'k_aliases.pm';

_exit 0 if $^O eq 'MSWin32';
CORE::exit 0;
