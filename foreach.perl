#!/usr/bin/perl

foreach $n(1..10){
   print $n,"\n";
}

foreach $s(qw| text1 text2 text3 text4 text5|){
   print $s,"\n";
}

#WITCHCRAFT: perl has a default variable $_
foreach (-5..5){ #no variable, so $_ receives the list
   print; #no variable again, prints $_
   print "\n";
}
