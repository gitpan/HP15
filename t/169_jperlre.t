# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あ-い' =~ /(あ[\s]い)/) {
    print "not ok - 1 $^X jperlre068.pl not ('あ-い' =~ /あ[\s]い/).\n";
}
else {
    print "ok - 1 $^X jperlre068.pl not ('あ-い' =~ /あ[\s]い/).\n";
}

__END__
