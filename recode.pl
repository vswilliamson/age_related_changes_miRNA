use strict;
use warnings;

my $geneexpression = shift;
my $results = shift;
my $i = shift;
if (!defined($i)){
	 die "gene expression results i\n";
}
my %probes;

open FH, $geneexpression;
	while (my $line = <FH>){
		 chomp $line;
			if ($line =~/(\S+)\t\S+.*/){
			$probes{$i} = $1;
			$i = $i +1;
			}
			
			
	}
#	print $i;
#	print values %probes;
open SH, $results;
		while (my $line = <SH>){
			 chomp $line;
				if ($line =~/(\S+)\t(\S+)\t(\S+)/){
				my $gene = $1;
				#print $gene;
				if (exists $probes{$gene}){
				print "$probes{$1}\t$3\n";
				}
				}
		}
	