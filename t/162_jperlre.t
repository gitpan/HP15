# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

if ('あ い' =~ /(あ\Sい)/) {
    print "not ok - 1 $^X jperlre061.pl not ('あ い' =~ /あ\Sい/).\n";
}
else {
    print "ok - 1 $^X jperlre061.pl not ('あ い' =~ /あ\Sい/).\n";
}

__END__
