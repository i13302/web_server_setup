#!/usr/bin/perl

use strict;

open(IN,"errormessage1.htm");
open(OUT,">new_error.html");

print OUT "\t\t<!--AUTO SCRIPT-->\n";

while(<IN>!~m!<TD>14</TD>!){
	next;	
}
while(<MT2>){
	if($.==167){
		last;
	}
}

while(my $line=<IN>){
	chomp($line);

	$line=~s!<.*?>!<><>!g;

	my($non,$non,$num,$non,$msg,$non,$jan,$non)=split(/<><>/ , $line);

	$jan=~s!^\s!!;

#	print OUT 
#		"\t\t<!-- ここまで -->\n";
	print OUT
		"\t\t<!-- ひとつあたり -->\n";
	print OUT
		"\t\t<p class=\"span\"></p>\n";
	print OUT
		"\t\t<div class=\"No\">No$num</div>\n";
	print OUT
		"\t\t<div class=\"text\">\n";
	print OUT
		"\t\t\t$msg<br>\n";
	print OUT
		"\t\t\t訳：$jan<br>\n";
	print OUT
		"\t\t\t<p class=\"span\"></p>\n";
	print OUT
		"\t\t</div>\n";
	print OUT
		"\t\t<!-- ここまで -->\n";
#	print OUT "$num,$msg,$jan\n";
	
	if($num=~m!227!){
		last;
	}
}

print OUT "\t\t<!--AUTO SCRIPT-->\n";

close(IN);
close(OUT);
