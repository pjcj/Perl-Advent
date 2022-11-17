use Acme::Grep2D;

#Count all the stars in the sky
$g2d = Acme::Grep2D->new(text => do{ local $/ = undef; <DATA> });

printf "There are %i stars.\n", scalar( @matches = $g2d->Grep(qr/star/i) );

foreach( @matches ){
    printf '%2$2i=>%4$2i, %3$2i=>%5$2i = %7$s'."\n", @{$_}, $g2d->extract($_)
}

__DATA__
skyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskSskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskTskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskAskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skySTARkRsRATSyskyskyskyskyskyskyskyskyskyskyskyskyskySkyskyskyskyskyskyskysky
skyskysAyAkyskyskyskyskyskyskyskyskyskyskyskyskyskyskyTkyskyskyskyskyskyskysky
skyskyTkysTyskyskyskyskyskyskyskyskyskyskyskyskyskyskyAkyskyskyskyskyskyskysky
skyskSskyskSskyskyskyskyskyskyskyskyskyskyskyskysSTARyRkRATSskyskyskyskyskysky
skyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskAsAyskyskyskyskyskyskysky
skyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysTyskTskyskyskyskyskyskysky
skyskyskyskyskyskyskyskySkyskyskyskyskyskyskyskyskySkyskySkyskyskyskyskyskysky
skyskyskyskyskyskyskyskyTkyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskyskyskyskyskyskyAkyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskyskyskyskysSTARyRkRATSskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskyskyskyskyskyskAsAyskyskyskyskyskyskyskyskyskyskyskyskSskyskyskyskysky
skyskyskyskyskyskyskysTyskTskyskyskyskyskyskyskyskyskyskyskyskTskyskyskyskysky
skyskyskyskyskyskyskySkyskySkyskyskyskyskyskyskyskyskyskyskyskAskyskyskyskysky
skyskyskyskyskyskSskyskyskyskyskyskyskyskyskyskyskyskyskySTARkRsRATSyskyskysky
skyskyskyskyskyskTskyskyskyskyskyskyskyskyskyskyskyskyskyskysAyAkyskyskyskysky
skyskyskyskyskyskAskyskyskyskyskyskyskyskyskyskyskyskyskyskyTkysTyskyskyskysky
skyskyskyskySTARkRsRATSyskyskyskyskyskyskyskyskyskyskyskyskSskyskSskyskyskysky
skyskyskyskyskysAyAkyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskyskyskyTkysTyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskyskyskSskyskSskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
skyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskyskysky
