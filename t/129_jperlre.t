# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{‚ } ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('‚ ‚¢‚¤' =~ /(‚ ‚¢{0,1}‚¤)/) {
    if ("$1" eq "‚ ‚¢‚¤") {
        print "ok - 1 $^X jperlre028.pl ('‚ ‚¢‚¤' =~ /‚ ‚¢{0,1}‚¤/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre028.pl ('‚ ‚¢‚¤' =~ /‚ ‚¢{0,1}‚¤/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre028.pl ('‚ ‚¢‚¤' =~ /‚ ‚¢{0,1}‚¤/).\n";
}

__END__
