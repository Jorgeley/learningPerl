#!/usr/bin/perl

$var1 = 10;

{
	print "### THIS IS A NAKED BLOCK:\n\tUseful for defining scopes ###\n";
	my $var2 = 20;
	print "this variable \$var2 exists just only in the naked scope: $var2 \n";
	print "the global variable \$var1 also exist in the naked scope: $var1 \n";
}
print "the variable \$var2 doesn't exist in this global scope: $var2 \n";
