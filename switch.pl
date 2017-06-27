#!/usr/bin/perl
use Switch;

$x=1; 
unless ($x==1){ #nothing happens, because $x is equal to 1
	switch($x){
		case 0{
			print 'zero first switch'; 
		}
	}
}

$x=0; 
unless ($x==1){ #$x is 0, so the switch happens
	switch($x){
		case 0{
			print "zero second switch\n"; 
		}
	}
}
