#!/usr/bin/perl

$n=10;
sub sum{
   print '$n now is: ', ++$n, "\n"; #refers to the global $n
}
&sum;
&sum;
&sum;

sub return{
   print 'returning ';
   #the last instruction is always returned
   10+1;
}
print &return, "\n";

#you can stop the execution using the 'return' statement
sub return2{
   foreach (1..100){
      print "$_ "; #this will never be execute after 50
      if ($_ == 50){
         return $_;
      }
   }
}
print "return2 subroutine stoped at ",&return2,"\n";

sub params{ #Witchcraft again: perl use his default variable $_ for arguments
   print "you gave me @_\n";
   print "the first argument was $_[0]\n";
}
&params('x', 'y', 'z'); #it's up to you
&params(10, 20);

#by default, all variables are global, if you want a private one use 'my($var)'
sub privates{
   my($x, $y);
   $x = 1;
   $y = 2;
   print "private vars: $x, $y\n";
}
&privates;
print "you cannot access the private variables from the global scope: $x, $y\n";

#you can even limit your scope to a structure control like for, while, if, etc
$global = -5;
while ($global <= 0){
   my($my) = $global++;
   print $my, "\t";
}
print "you cannot access a private structure variable (for, while, etc) $my\n";
