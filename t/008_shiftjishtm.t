# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use HP15;
print "1..1\n";

# In string, @dog now must be written as \@dog (Perl 5.6.0まで)
# 「文字列の中では、@dogは今は\@dogと書かなければならない」
if ("花　\flower" eq pack('C10',0x89,0xd4,0x81,0x40,0x0C,0x6c,0x6f,0x77,0x65,0x72)) {
    print qq<ok - 1 "HANA yen flower"\n>;
}
else {
    print qq<not ok - 1 "HANA yen flower"\n>;
}

__END__

HP15.pm の処理結果が以下になることを期待している

if ("花―@\flower" eq pack('C10',0x89,0xd4,0x81,0x40,0x0C,0x6c,0x6f,0x77,0x65,0x72)) {

Shift-JISテキストを正しく扱う
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
