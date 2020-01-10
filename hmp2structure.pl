#!/usr/bin/perl

use warnings;
use strict;

while (my $row = <STDIN>) {
	chomp $row;
	my @data = split(/\t/,$row);

	if ($row =~ /^rs/) {
		my @output;
		for (my $i=11;$i<scalar(@data);$i++) {
			push(@output,$data[$i]);
		};

		print "$data[0]\t";
		my $output = join("\t",@output);
		print "$output\n";
		
	} else {
		if ($data[1] =~ /\//) {
			my $count = (() = $data[1] =~ m/\//g);
			next if ($count > 1);
			my($nuc1, $nuc2) = split(/\//,$data[1]);
			my @output2;
			for (my $i=11;$i<scalar(@data);$i++) {
				my $geno = $data[$i];
				$geno =~ s/$nuc1/0/mi;
				$geno =~ s/$nuc2/1/mi;
				$geno =~ s/n/-1/i;
				push(@output2,$geno);
			};
			my $output2 = join("\t",@output2);
			print "$data[0]\t$output2\n";
		}
	}
}

