#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Spice;

ddg_spice_test(
	[qw( DDG::Spice::IPLookup )],
	'reverse dns 8.8.8.8' => test_spice(
		'/js/spice/iplookup/8.8.8.8',
		call_type => 'include',
		caller => 'DDG::Spice::IPLookup',
	),
	'reverse dns 256.8.8.8' => undef,
	'reverse dns a.b.c.d' => undef,
	'reverse dns duckduckgo.com' => undef,
);

done_testing;