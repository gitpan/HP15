# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あxyzう' =~ /(あ.*う)/) {
    if ("$1" eq "あxyzう") {
        print "ok - 1 $^X jperlre039.pl ('あxyzう' =~ /あ.*う/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre039.pl ('あxyzう' =~ /あ.*う/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre039.pl ('あxyzう' =~ /あ.*う/).\n";
}

__END__
