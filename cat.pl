#!/usr/bin/perl
# A script that behaves like the cat UNIX utility

use strict;
use warnings;

sub print_file {
  my $file = shift;  # get the filename from the parameters
  open my $fh, $file;
  while (my $line = <$fh>) {
    print "$line";
  }
}

sub cat {
  while (my $file = shift @_) {
    print_file $file;
  }
}

cat @ARGV;