# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('えef' =~ /(()ef)/) {
    if ("$1-$2" eq "ef-") {
        print "ok - 1 $^X jperlre077.pl ('えef' =~ /()ef/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre077.pl ('えef' =~ /()ef/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre077.pl ('えef' =~ /()ef/).\n";
}

__END__
