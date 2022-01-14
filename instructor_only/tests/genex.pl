use strict;
my $funcnum = 1;
my $labelnum = 1;
my @hexdigs = ('0' ..'9', 'A' .. 'F');

# shift instructions let you pick a random logical shift or rotate
my @shiftInstructions = ("lsr", "lsl", "rol", "ror");

my @arithInstructions = ("add", "sub", "and", "orr", "eor");

my $foundFunc = 0; # false
my $foundLabel = 0;

while (my $line = <>) {
    if ($line =~ s/\$fn/f$funcnum/) { # if we find a new functions replace with fnum
	$foundFunc = 1; # found a function, so increment at end
    }
    if ($line =~ /\$hw/) {
	my $r = join '' => map $hexdigs[rand @hexdigs], 1 .. 8;
	$line =~ s/\$hw/$r/;
    }
    if ($line =~ /\$hb/) {
	my $r = join '' => map $hexdigs[rand @hexdigs], 1 .. 2;
	$line =~ s/\$hb/$r/;
    }
    if ($line =~ /\$sh/) {
	my $r = int(rand(6)); # random shift up to 6 bits
	$line =~ s/\$sh/$r/;
    }
    if ($line =~ /\$ish/) {
	$line =~ s/\$ish/$shiftInstructions[int(rand(@shiftInstructions))]/;
    }

    if ($line =~ /\$u8/) {
	my $r = int(rand(255));
	$line =~ s/\$u8/$r/;
    }

    if ($line =~ /\$countDown/) {
	my $r = int(rand(20));
	$line =~ s/\$countDown/$r/;
    }

    if ($line =~ s/\@END//) {
	if ($foundFunc) {
	    $funcnum++; # add to the count of functions
	}
	if ($foundLabel) {
	    $labelnum++;
	}
    }
    
    print $line;
}
