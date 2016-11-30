#!/usr/bin/perl
use warnings;
use strict;
use utf8;
use Encode;
use URI::Escape;

my $filename = shift;
my $outfile = 'out_'.$filename;
open my $IN, '<',$filename;
open my $OUT, '>:encoding(utf8)', $outfile;
for my $line (<$IN>){
    while ($line =~s/(\\\d{3})+/OCTAL/){
        my $string = $&;
        my @temp= split(/\\/,$string);
        for my $i (@temp){
             $i = sprintf("%X",oct($i));
        }
        shift @temp;
        $string = '%'.join('%',@temp);
        $string = decode('ja_JP.UTF-8',uri_unescape($string));
        $line =~ s/OCTAL/$string/;
    }
    print $OUT $line;
}
