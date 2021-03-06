#!/usr/bin/perl
# operators.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	#q (single quote) and qq (double quote) works exactly like ' and "" except you can use ' or " inside the string. just use a symbol after q/qq and close it using the same symbol
    message(q[This is the "template.pl" exercise file from Perl 5 Essential Training.]);
    message(q/This is the "template.pl exercise" file from Perl 5 Essential Training./);
    my $s = 42;
    message(qq/This is the "template.pl exercise" ($s) file from Perl 5 Essential Training./);
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print("$0: $e\n");
    exit 0;
}

