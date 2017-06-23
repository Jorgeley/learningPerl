#!/usr/bin/perl

$array[0] = 1;
$array[10] = 'text';
print $array[0], ',', $array[10], "\n";

$lastIndex = $#array; #get the last index
print "The last index is $lastIndex \n";

#you can use the index above to get the last element, or just do this:
print "The last value is $array[-1] \n"; #if 0 is the first element, so -1 is before it, like a circle queue

#string as index: associatve arrays:
%associativeArray = ( "index1", "value1", "index2", "value2");
print "This is an associative array:\n";
foreach $index (keys %associativeArray){
	print "\t[$index] ", $associativeArray{$index}, "\n";
}
