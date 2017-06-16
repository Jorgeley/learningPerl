#!/usr/bin/perl
#you have to use like this: cat file.txt | ./input_lines.perl
foreach $input(<STDIN>){
	print "\t", $input;
}
