# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あいあいう' =~ /(あいう)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X jperlre006.pl ('あいあいう' =~ /あいう/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre006.pl ('あいあいう' =~ /あいう/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre006.pl ('あいあいう' =~ /あいう/).\n";
}

__END__
