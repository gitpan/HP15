# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あいえ' =~ /(あ[^いう]え)/) {
    print "not ok - 1 $^X jperlre054.pl not ('あいえ' =~ /あ[^いう]え/).\n";
}
else {
    print "ok - 1 $^X jperlre054.pl not ('あいえ' =~ /あ[^いう]え/).\n";
}

__END__
