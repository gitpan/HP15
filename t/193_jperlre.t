# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{‚ } ne "\x82\xa0";

use HP15;
print "1..1\n";

eval q!'AAA' =~ /[]/!;
if ($@) {
    print "ok - 1 $^X jperlre110.pl (!'AAA' =~ /[]/!)\n";
}
else {
    print "not ok - 1 $^X jperlre110.pl (!'AAA' =~ /[]/!)\n";
}

__END__
