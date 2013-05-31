use strict;
use warnings;
my $file = shift;
if (!defined($file)){
	 die "name of file\n";
}
my $i = 1;
my $j = 1;
my $data;
open FH, $file;
	while (my $line = <FH>){
		 chomp $line;
				
			if ($line =~/\!Sample\_characteristics\_ch1\s+\"race\:\s+.*/){			
		while ($i <= 255){
		
		$data = $line;
				
		my @terms = split('\t', $data);
			print "$terms[$i]\n";
			$i = $i + 1;	
			}
			

	
	}
	
}