# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あいいいいう' =~ /(あい{4,5}いう)/) {
    print "not ok - 1 $^X jperlre022.pl not ('あいいいいう' =~ /あい{4,5}いう/).\n";
}
else {
    print "ok - 1 $^X jperlre022.pl not ('あいいいいう' =~ /あい{4,5}いう/).\n";
}

__END__
