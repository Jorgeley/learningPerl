#!/usr/bin/perl

#this is really nice, you build a conditional for assignment:
# true because $x is undef == false, !false==true, so assignment happens
(!$x) && ($x='initial value');
print "$x\n";

#or even for another command:
$n = 10;
# true        false       ,so nothing happens
($n > 0) && ($n > 20) && ( print "first print: $n\n");
# true        true        ,so print happens
($n > 0) && ($n < 20) && ( print "second print: $n\n");
