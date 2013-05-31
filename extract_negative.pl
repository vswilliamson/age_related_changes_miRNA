use strict;
use warnings;
my $correlations = shift;
if(!defined($correlations)){
	 die "name of correlations file\n";
}

open FH, $correlations;
	while (my $line = <FH>){
	 chomp $line;
		if($line =~/(\S+)\t(\S+)\t(\S+)\t(\S+)\t(\S+)\t(\S+)\t(\S+)\t(\S+)\t(\S+)\t(\S+)\t(\S+)\t(\S+)/){
		if($1 ne 0){
		print "\n$1\t";
		}
		if($2 > 0){
		print "$2\t";
		}else{
		print "0\t";
		}
		if($3 > 0){
		print "$3\t";
		}else{
		print "0\t";
		}
		if($4 > 0){
		print "$4\t";
		}else{
		print "0\t";
		}
		if ($5 > 0){
		print "$5\t";
		}else{
		print "0\t";
		}
		if($6 > 0){
		print "$6\t";
		}else{
		print "0\t";
		}
		if($7 > 0){
		print "$7\t";
		}else{
		print "0\t";
		}
		if($8 > 0){
		print "$8\t";
		}else{
		print "0\t";
		}
		if($9 > 0){
		print "$9\t";
		}else{
		print "0\t";
		}
		if($10 > 0){
		print "$10\t";
		}else{
		print "0\t";
		}
		if($11 > 0){
		print "$11\t";
		}else{
		print "0\t";
		}
		if($12 > 0){
		print "$12\t";
		}else{
		print "0\t";
		}
		}
		
		
	}