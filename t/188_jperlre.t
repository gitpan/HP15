# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あA]い' =~ /あ[^]]い/) {
    print "not ok - 1 $^X jperlre105.pl ('あA]い' =~ /あ[^]]い/)\n";
}
else {
    print "ok - 1 $^X jperlre105.pl ('あA]い' =~ /あ[^]]い/)\n";
}

__END__
