# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..2\n";

my $__FILE__ = __FILE__;

if (length('あいうえお') == 10) {
    print qq{ok - 1 length('あいうえお') == 10 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 length('あいうえお') == 10 $^X $__FILE__\n};
}

if (HP15::length('あいうえお') == 5) {
    print qq{ok - 2 HP15::length('あいうえお') == 5 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 HP15::length('あいうえお') == 5 $^X $__FILE__\n};
}

__END__
