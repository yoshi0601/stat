while (<>) {
		chomp;
        @tmp = split;
        push @AoA, [ @tmp ];
}

$nrow = scalar(@AoA);
$ncol = scalar(@{$AoA[0]});

for ($i = 0; $i<$ncol; $i++) {
	for ($j = 1; $j<$nrow; $j++) {
		print("$AoA[0][$i]\t");
		print("$AoA[$j][$i]\n");
	}
}


