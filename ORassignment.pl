#!/usr/bin/perl

#you can assign a variable by testing others, even undef is tested
$x=0;
$y='yyy'; 
print  $z = $x || $y || $w; #$z receives 'yyy'

$x=0;
$y=10; 
print  "\n", $z = $x || $y || $w, "\n"; #$z receives 10

$x=1;
$y=10; 
print  $z = $x || $y || $w, "\n"; #$z receives 1

$x=2;
$y=30; 
print  @z = $x, $q, $y, $w; #$z receives all values
