# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use HP15;
print "1..1\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F�@�\') || die "Can't open file: F�@�\\n";
print FILE "1\n";
close(FILE);

# lstat
if (lstat('F�@�\')) {
    print "ok - 1 lstat $^X $__FILE__\n";
}
else {
    print "not ok - 1 lstat: $! $^X $__FILE__\n";
}

unlink('F�@�\');

__END__