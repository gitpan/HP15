# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15 qw(ord);
print "1..2\n";

my $__FILE__ = __FILE__;

if (ord('あ') eq 0x82A0) {
    print qq{ok - 1 ord('あ') eq 0x82A0 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 ord('あ') eq 0x82A0 $^X $__FILE__\n};
}

$_ = 'い';
if (ord eq 0x82A2) {
    print qq{ok - 2 \$_ = 'い'; ord eq 0x82A2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = 'い'; ord eq 0x82A2 $^X $__FILE__\n};
}

__END__
