@file=glob "*.$ARGV[0]";

foreach(@file){
	$p=$_;
	$_=~s!$ARGV[0]!$ARGV[1]!;
	$n=$_;
	system("mv $p $n");
}
print $s;
