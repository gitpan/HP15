# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

use HP15 qw(reverse);
print "1..2\n";

my $__FILE__ = __FILE__;

@_ = reverse('����������', '����������', '����������');
if ("@_" eq "���������� ���������� ����������") {
    print qq{ok - 1 \@_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \@_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}

$_ = reverse('����������', '����������', '����������');
if ($_ eq "������������������������������") {
    print qq{ok - 2 \$_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = reverse('����������', '����������', '����������') $^X $__FILE__\n};
}

__END__
