# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

use HP15;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('�� ��' =~ /(��\S��)/) {
    print "not ok - 1 $^X $__FILE__ not ('�� ��' =~ /��\\S��/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('�� ��' =~ /��\\S��/).\n";
}

__END__
