# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{‚ } ne "\x82\xa0";

use HP15;
print "1..1\n";

#
# split
#
@X = split(/(.)/, "‚ ‚¢‚¤t‚¦‚¨");
$x = $#X;
if ($x != 11) {
    print "not ok - 1 $^X 04jperlsplit.pl\n";
}
else {
    print "ok - 1 $^X 04jperlsplit.pl\n";
}

__END__
