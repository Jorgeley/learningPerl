#!/usr/bin/perl

#Dont worry about undefined variables, perl assigns 'undef' to not intialized variables, its like a different type scalar value

#you can use this function to check if a var is undef or not
if (!defined($sum)){
   print '$sum is not defined, so his type is "undef" like a scalar type.
Anyway, no problem, Perl doesnt care about undefined vars, go on', "\n";
}

print $sum += 1, "\n"; #no problem, other languages could be a problem
