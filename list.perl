#!/usr/bin/perl

# '@' refers to the entire array
print "Building a list: ", @list = ( 1..5, 10, 'text' ), "\n";
print "Adding a new element at index 9: ", $list[9] = 11, "\n";
print "Adding a new element at the beggining: ", unshift @list, "text2";
print "\nAdding a new element at the end: ", push @list, "text3";
print "\nThe whole list: @list \n";

# 'pop' and 'shift' remove the elements and return them
print "The last element is: ", $last = pop @list, "\n";
print "The first element is: ", $first = shift @list, "\n";

print "Now the updated list is: @list \n";

@list = sort @list;
print "The ordered list is: @list.\t";

@list = reverse @list;
print "\nThe reverse order list is: @list.\t";

@qwList = qw( Goku Vegeta 1000 ); #another way to create a list
print "\nJust another list: ", $qwList[0], ' ', $qwList[1], ' ', $qwList[2], "\n"; #of course, printing with '@' is easier
