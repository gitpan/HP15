# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

use HP15;
print "1..1\n";

# �C���q C<i>, C<I> ����� C<j> �́AC<\p{}>, C<\P{}>, POSIX C<[: :]>.
# (�Ⴆ�� C<\p{IsLower}>, C<[:lower:]> �Ȃ�) �ɂ͍�p���܂���B
# ���̂��߁AC<re('\p{Lower}', 'iI')> �̑����
# C<re('\p{Alpha}')> ���g�p���Ă��������B

# HP15 �\�t�g�E�F�A�� C<\p{}>, C<\P{}>, POSIX C<[: :]> �̋@�\�����Ƃ��Ƒ��݂��Ȃ��B

print "ok - 1 $^X 03sadahiro.pl (NULL)\n";

__END__

http://search.cpan.org/dist/HP-15-Regexp/