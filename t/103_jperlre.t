# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('x����' =~ /(������)/) {
    print "not ok - 1 $^X jperlre002.pl not ('x����' =~ /������/).\n";
}
else {
    print "ok - 1 $^X jperlre002.pl not ('x����' =~ /������/).\n";
}

__END__