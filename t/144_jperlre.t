# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あいえ' =~ /(あ[い-え]e)/) {
    print "not ok - 1 $^X jperlre043.pl not ('あいえ' =~ /あ[い-え]e/).\n";
}
else {
    print "ok - 1 $^X jperlre043.pl not ('あいえ' =~ /あ[い-え]e/).\n";
}

__END__
