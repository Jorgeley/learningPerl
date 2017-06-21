#!/usr/bin/perl

#execute a SO command and save in @lines var
@lines = `perldoc -u -f atan2`;

#change the lines readen using regular expression
foreach (@lines){
   s/\w<([^>]+)>/\U$1/g;
   print;
}
