use HP15;
print "1..1\n";

if ('-' =~ /(\D)/) {
    if ("-" eq "-") {
        print "ok - 1 $^X jperlre066.pl ('-' =~ /\D/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre066.pl ('-' =~ /\D/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre066.pl ('-' =~ /\D/).\n";
}

__END__
