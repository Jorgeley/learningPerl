#!/usr/bin/perl

%planets = (
   Mercury => 0.4,
   Venus   => 0.7,
   Earth   => 1,
   Mars    => 1.5,
   Ceres   => 2.77,
   Jupiter => 5.2,
   Saturn  => 9.5,
   Uranus  => 19.6,
   Neptune => 30,
   Pluto   => 39,
   Charon  => 39,
);
 
print "no sorting:\n";
foreach my $name (keys %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}

print "sorting by keys:\n";
foreach my $name (sort keys %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}

print "sorting by values:\n";
foreach my $name (sort values %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}
