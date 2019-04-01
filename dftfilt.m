function [g,pubi]= dftfilt(f,H)
[f,revertclass]=tofloat(f);
PQ1 = paddedsize(size(f));
F=fft2(f,PQ1(1),PQ1(2));
G=H.*F;
% g=ifftshift(G);
g=ifft2(G);
g=g(1:size(f,1),1:size(f,2));

i1=0;i2=0;
for u=1:size(f,1)
    for v=1:size(f,2)
        L1=(abs(G(u,v)))^2;
        i1=i1+L1;
        L2=(abs(F(u,v)))^2;
        i2=i2+L2;
    end
end

pubi=L1/L2

end