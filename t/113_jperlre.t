# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいいいいう' =~ /(.{3,4})/) {
    if ("$1" eq "あいいい") {
        print "ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{3,4}/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{3,4}/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{3,4}/).\n";
}

__END__
