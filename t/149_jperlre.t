# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{‚ } ne "\x82\xa0";

use HP15;
print "1..1\n";

eval q< '-' =~ /(‚ [‚¢-‚ ])/ >;
if ($@) {
    print "ok - 1 $^X 149_jperlre.t die ('-' =~ /‚ [‚¢-‚ ]/).\n";
}
else {
    print "not ok - 1 $^X 149_jperlre.t die ('-' =~ /‚ [‚¢-‚ ]/).\n";
}

__END__
