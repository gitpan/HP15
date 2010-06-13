# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{‚ } ne "\x82\xa0";

use HP15;
print "1..1\n";

eval q< '-' =~ /(‚ [‚¢-‚ ])/ >;
if ($@) {
    print "ok - 1 $^X jperlre048.pl die ('-' =~ /‚ [‚¢-‚ ]/).\n";
}
else {
    print "not ok - 1 $^X jperlre048.pl die ('-' =~ /‚ [‚¢-‚ ]/).\n";
}

__END__
