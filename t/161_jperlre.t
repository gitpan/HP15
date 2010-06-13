# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{‚ } ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('‚ -‚¢' =~ /(‚ \s‚¢)/) {
    print "not ok - 1 $^X jperlre060.pl not ('‚ -‚¢' =~ /‚ \s‚¢/).\n";
}
else {
    print "ok - 1 $^X jperlre060.pl not ('‚ -‚¢' =~ /‚ \s‚¢/).\n";
}

__END__
