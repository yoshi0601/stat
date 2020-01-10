#!/usr/bin/perl

use warnings;
use strict;

while (<>) {
	chomp;
	s/0\/\.//g;
	s/\.\/0//g;
	s/1\/\.//g;
	s/\.\/1//g;

	my @data = split(/\t/);
	
	if ($data[4] =~ /,/ or $data[3]=~ /-/ or $data[4] =~ /\./  or $data[3] =~ /\./) {
		next;
	} else {
		print "$_\n";
	}
}

