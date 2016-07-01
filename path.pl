#!/usr/bin/perl

open(IN,"$ARGV[0]");
open(OUT,">$ARGV[0].php");

print OUT "<?php"."\n";
while($line=<IN>){
	if($line=~m!document\.write!){
		$line=~s!document\.write!print!;
	}

	if($line!~m!http.+!){
		if($line=~m!src=!){
			$line=~s!src=\"!src=\"\'\.\dir\.\'!;
		}

		if($line=~m!href=!){
			if($line!~m!\#!){
				$line=~s!href=\"!href=\"\'\.\dir\.\'!;
			}
		}

		$line=~s!dir!\$dir!g;
	}

	print OUT $line;
}
print OUT "?>";

close(IN);
close(OUT);

