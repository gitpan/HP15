# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あeえ' =~ /(あ[^いう]え)/) {
    if ("$1" eq "あeえ") {
        print "ok - 1 $^X jperlre053.pl ('あeえ' =~ /あ[^いう]え/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre053.pl ('あeえ' =~ /あ[^いう]え/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre053.pl ('あeえ' =~ /あ[^いう]え/).\n";
}

__END__
