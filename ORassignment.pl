#!/usr/bin/perl

#you can assign a variable by testing others, even undef is tested
$x=0;
$y='yyy'; 
print  $z= $x || $y || $w; #$z receives 'yyy'

$x=0;
$y=10; 
print  "\n", $z= $x || $y || $w, "\n"; #$z receives 10
