# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use HP15;
print "1..1\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

mkdir('directory',0777);
mkdir('D機能',0777);
open(FILE,'>D機能/file1.txt') || die "Can't open file: D機能/file1.txt\n";
print FILE "1\n";
close(FILE);
open(FILE,'>D機能/file2.txt') || die "Can't open file: D機能/file2.txt\n";
print FILE "1\n";
close(FILE);
open(FILE,'>D機能/file3.txt') || die "Can't open file: D機能/file3.txt\n";
print FILE "1\n";
close(FILE);

# system
if (system('dir /b D機能 >NUL 2>NUL') == 0) {
    print "ok - 1 system $^X $__FILE__\n";
}
else {
    print "not ok - 1 system: $! $^X $__FILE__\n";
}

unlink('D機能/file1.txt');
unlink('D機能/file2.txt');
unlink('D機能/file3.txt');
rmdir('directory');
rmdir('D機能');

__END__
