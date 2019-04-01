function H = hpfilter( type,M,N,D0,n )

HLP=lpfilter( type,M,N,D0,n );
H=1-HLP;