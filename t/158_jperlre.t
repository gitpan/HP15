# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あ]う' =~ /(あ[^]い]う)/) {
    print "not ok - 1 $^X jperlre057.pl not ('あ]う' =~ /あ[^]い]う/).\n";
}
else {
    print "ok - 1 $^X jperlre057.pl not ('あ]う' =~ /あ[^]い]う/).\n";
}

__END__
