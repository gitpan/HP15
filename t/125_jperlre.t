# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あいう' =~ /(あい?いう)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X jperlre024.pl ('あいう' =~ /あい?いう/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre024.pl ('あいう' =~ /あい?いう/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre024.pl ('あいう' =~ /あい?いう/).\n";
}

__END__
