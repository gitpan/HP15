# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あうe' =~ /(あ[い-え]e)/) {
    if ("$1" eq "あうe") {
        print "ok - 1 $^X jperlre044.pl ('あうe' =~ /あ[い-え]e/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre044.pl ('あうe' =~ /あ[い-え]e/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre044.pl ('あうe' =~ /あ[い-え]e/).\n";
}

__END__
