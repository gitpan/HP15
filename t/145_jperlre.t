# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{‚ } ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('‚ ‚¤e' =~ /(‚ [‚¢-‚¦]e)/) {
    if ("$1" eq "‚ ‚¤e") {
        print "ok - 1 $^X jperlre044.pl ('‚ ‚¤e' =~ /‚ [‚¢-‚¦]e/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre044.pl ('‚ ‚¤e' =~ /‚ [‚¢-‚¦]e/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre044.pl ('‚ ‚¤e' =~ /‚ [‚¢-‚¦]e/).\n";
}

__END__
