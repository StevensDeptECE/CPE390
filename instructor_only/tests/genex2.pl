use strict;
my $funcnum = 1;
my $labelnum = 1;
my @hexdigs = ('0' ..'9', 'A' .. 'F');

# shift instructions let you pick a random logical shift or rotate
my @shiftInstructions = ("lsr", "lsl", "rol", "ror");

my @arithInstructions = ("add", "sub", "and", "orr", "eor");

my $foundFunc = 0; # false
my $foundLabel = 0;

sub foundFunc {
    $foundFunc = 1; # found a function, so increment at end
    return "f" . $funcnum;
}

sub foundLab {
    $foundLabel = 1; # found a function, so increment at end
    return ".L" . $labelnum;
}
sub hex8 {
    return join '' => map $hexdigs[rand @hexdigs], 1 .. 8;
}

sub hex2 {
    return join '' => map $hexdigs[rand @hexdigs], 1 .. 2;
}

sub rand6 {
    return int(rand(6)); # random shift up to 6 bits
}

sub shiftInst {
    return $shiftInstructions[int(rand(@shiftInstructions))]
}

sub rand255 {
    return int(rand(255));
}

sub nextDef {
    if ($foundFunc) {
	$funcnum++; # add to the count of functions
    }
    if ($foundLabel) {
	$labelnum++;
    }
    print STDERR "FOUND \@END $funcnum $labelnum\n";
    return "";
}

my %regexMap = (
    "\$fn", &foundFunc,
    "\$hw", &hex8,
    "\$hb", &hex2,
    "\$sh", &rand6,
    "\$ish", &shiftInst,
    "\$u8", &rand255,
    "\@END", &nextDef,
    "\$countDown", &rand6,
    "\$lab", &foundLab,
    
    );
#my $search = '\\' . join('|\\', keys(%regexMap));
#print $search, "\n";
while (my $line = <>) {
    $line =~ s/(\$fn|\$hw|\$hb|\$sh|\$ish|\$u8|\@END|\$sh|\$countDown|\$lab)/$regexMap{$1}/e;    
    print $line;
}
