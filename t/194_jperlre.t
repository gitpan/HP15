# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..6\n";

if ('アABC DEF GHI' =~ /\bABC/) {
    print "ok - 1 $^X jperlre201.pl ('アABC DEF GHI' =~ /\\bABC/)\n";
}
else {
    print "not ok - 1 $^X jperlre201.pl ('アABC DEF GHI' =~ /\\bABC/)\n";
}

if ('アABC DEF GHI' =~ /\bDEF/) {
    print "ok - 2 $^X jperlre201.pl ('アABC DEF GHI' =~ /\\bDEF/)\n";
}
else {
    print "not ok - 2 $^X jperlre201.pl ('アABC DEF GHI' =~ /\\bDEF/)\n";
}

if ('アABC DEF GHI' =~ /\bGHI/) {
    print "ok - 3 $^X jperlre201.pl ('アABC DEF GHI' =~ /\\bGHI/)\n";
}
else {
    print "not ok - 3 $^X jperlre201.pl ('アABC DEF GHI' =~ /\\bGHI/)\n";
}

if ('アABC DEF GHI' =~ /ABC\b/) {
    print "ok - 4 $^X jperlre201.pl ('アABC DEF GHI' =~ /ABC\\b/)\n";
}
else {
    print "not ok - 4 $^X jperlre201.pl ('アABC DEF GHI' =~ /ABC\\b/)\n";
}

if ('アABC DEF GHI' =~ /DEF\b/) {
    print "ok - 5 $^X jperlre201.pl ('アABC DEF GHI' =~ /DEF\\b/)\n";
}
else {
    print "not ok - 5 $^X jperlre201.pl ('アABC DEF GHI' =~ /DEF\\b/)\n";
}

if ('アABC DEF GHI' =~ /GHI\b/) {
    print "ok - 6 $^X jperlre201.pl ('アABC DEF GHI' =~ /GHI\\b/)\n";
}
else {
    print "not ok - 6 $^X jperlre201.pl ('アABC DEF GHI' =~ /GHI\\b/)\n";
}

__END__
