# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('������������' =~ /(����{4,5}����)/) {
    print "not ok - 1 $^X jperlre022.pl not ('������������' =~ /����{4,5}����/).\n";
}
else {
    print "ok - 1 $^X jperlre022.pl not ('������������' =~ /����{4,5}����/).\n";
}

__END__