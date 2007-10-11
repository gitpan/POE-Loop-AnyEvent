#!/usr/bin/perl -w
# $Id$

use strict;

use lib qw(/opt/local/lib/perl5/site_perl/5.8.8/POE/Test/Loops);
use Test::More;
use POSIX qw(_exit);

sub skip_tests { return }

BEGIN {
  if (my $why = skip_tests('wheel_readwrite')) {
    plan skip_all => $why
  }
}

# Run the tests themselves.
require 'wheel_readwrite.pm';

_exit 0 if $^O eq 'MSWin32';
CORE::exit 0;