# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あAい' =~ /あ[^-]い/) {
    print "ok - 1 $^X jperlre103.pl ('あAい' =~ /あ[^-]い/)\n";
}
else {
    print "not ok - 1 $^X jperlre103.pl ('あAい' =~ /あ[^-]い/)\n";
}

__END__
