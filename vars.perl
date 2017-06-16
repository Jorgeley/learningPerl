#!/usr/bin/perl

print $s = 'string' . "\n";
print $s = $s.$s . "\n";
print $s .= $s . "\n"; #same as above
print $n = 10 . "\n";
print $sn = $s+$n . "\n";
print $nn = $n*$n . "\n";
print $nn += $n . "\n"; #same as above
print $nn++, "\n";
print $nn--, "\n";
