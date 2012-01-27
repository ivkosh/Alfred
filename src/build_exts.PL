#!/usr/bin/perl

use strict;

foreach (<*>)
{
	make_ext($_) if ( -d )
}

sub make_ext
{
	my $dir = shift;
	my $extname = "../../extensions/$dir.alfredextension";
	system("cd '$dir'; zip '$extname' *");
}
