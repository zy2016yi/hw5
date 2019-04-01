clear;
pi1= imread('test1.pgm');
pi1=double(pi1);
PQ1= paddedsize(size(pi1));
% ��test1���д���
d0=80;n=2;
H1=lpfilter('btw',PQ1(1),PQ1(2),d0,n);%��������lpfiltre butterworth �˲���
[g1,pibi1]=dftfilt(pi1,H1);
outputfigure('btw',pi1,g1,H1,d0,n,pibi1);
saveas(gcf, '1.png');
H1=lpfilter('gaussian',PQ1(1),PQ1(2),d0,n);%��������lpfiltre butterworth �˲���
[g1,pibi1]=dftfilt(pi1,H1);
outputfigure('gaussian',pi1,g1,H1,d0,n,pibi1);
saveas(gcf, '2.png');
clear;
pi2= imread('test2.tif');
d0=80;n=2;
% ��test2���д���
pi2=double(pi2);
PQ1= paddedsize(size(pi2));
H1=lpfilter('btw',PQ1(1),PQ1(2),d0,n);%��������lpfiltre butterworth �˲���
[g1,pibi1]=dftfilt(pi2,H1);
outputfigure('btw',pi2,g1,H1,d0,n,pibi1);
saveas(gcf, '3.png');
H1=lpfilter('gaussian',PQ1(1),PQ1(2),d0,n);%��������lpfiltre butterworth �˲���
[g1,pibi1]=dftfilt(pi2,H1);
outputfigure('gaussian',pi2,g1,H1,d0,n,pibi1);
saveas(gcf, '4.png');
