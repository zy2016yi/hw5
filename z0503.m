pi1= imread('test3_corrupt.pgm');
% pi1=double(pi1);
PQ1= paddedsize(size(pi1));
[pi1,revertclass]=tofloat(pi1);
F=fft2(pi1,PQ1(1),PQ1(2));
[U, V] = dftuv(PQ1(1),PQ1(2));
D =hypot(U,V);
H=4.*1.*pi.^2.*D.^2;
H=1-H;
G=H.*F;
g=ifft2(G);
g=g(1:size(pi1,1),1:size(pi1,2));
i1=0;i2=0;
for u=1:size(pi1,1)
    for v=1:size(pi1,2)
        L1=(abs(G(u,v)))^2;
        i1=i1+L1;
        L2=(abs(F(u,v)))^2;
        i2=i2+L2;
    end
end

pibi1=L1/L2
figure;
subplot(2,2,1)
imshow(pi1,[])
title('原始图像');
subplot(2,2,2)
imshow(g,[])
title(['拉普拉斯高通滤波']);
subplot(2,2,3)
imshow(fftshift(H))
title('理想滤波器');
subplot(2,2,4)
imshow(log(1+abs(fftshift(fft2(pi1,PQ1(1),PQ1(2))))),[])
title(['功率谱比',num2str(pibi1)]);
saveas(gcf, '9.png');
figure;
D0=25;
pi2= imread('test4 copy.bmp');
% pi1=double(pi1);
PQ2= paddedsize(size(pi2));
[pi2,revertclass]=tofloat(pi2);
F=fft2(pi2,PQ2(1),PQ2(2));
[U, V] = dftuv(PQ2(1),PQ2(2));
D =hypot(U,V);
H=exp(-D.^2./(2*D0.^2));
H=1-H;
G=1+1*H.*F;
g2=ifft2(G);
g2=g2(1:size(pi2,1),1:size(pi2,2));
% g2=pi2-g2;
% g2=pi2+1*g2;
i1=0;i2=0;
for u=1:size(pi2,1)
    for v=1:size(pi2,2)
        L1=(abs(G(u,v)))^2;
        i1=i1+L1;
        L2=(abs(F(u,v)))^2;
        i2=i2+L2;
    end
end

pibi2=L1/L2

subplot(2,2,1)
imshow(pi2,[])
title('原始图像');
subplot(2,2,2)
imshow(g2,[])
title(['unmask高通滤波']);
subplot(2,2,3)
imshow(fftshift(H))
title('理想滤波器');
subplot(2,2,4)
imshow(log(1+abs(fftshift(fft2(pi2,PQ2(1),PQ2(2))))),[])

saveas(gcf, '10.png');


