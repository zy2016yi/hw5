function outputfigurehp(type,pi1,g1,H1,D0,n,pibi1)
PQ1= paddedsize(size(pi1));

figure;
switch type
    case 'ideal'
       subplot(2,2,1)
imshow(pi1,[])
title('原始图像');
subplot(2,2,2)
imshow(g1,[])
title(['经过理想频域高通滤波图像D0=' ,num2str(D0),'n=',num2str(n)]);
subplot(2,2,3)
imshow(fftshift(H1))
title('理想滤波器');
subplot(2,2,4)
imshow(log(1+abs(fftshift(fft2(pi1,PQ1(1),PQ1(2))))),[])
title(['功率谱比',num2str(pibi1)]);
    case 'btw'
        subplot(2,2,1)
imshow(pi1,[])
title('原始图像');
subplot(2,2,2)
imshow(g1,[])
title(['经过butterworth频域高通滤波图像D0=' ,num2str(D0),'n=',num2str(n)]);
subplot(2,2,3)
imshow(fftshift(H1))
title('butterworth滤波器');
subplot(2,2,4)
imshow(log(1+abs(fftshift(fft2(pi1,PQ1(1),PQ1(2))))),[])
title(['功率谱比',num2str(pibi1)]);
    case 'gaussian'
       subplot(2,2,1)
imshow(pi1,[])
title('原始图像');
subplot(2,2,2)
imshow(g1,[])
title(['经过高斯频域高通滤波图像D0=' ,num2str(D0),'n=',num2str(n)]);
subplot(2,2,3)
imshow(fftshift(H1))
title('高斯滤波器');
subplot(2,2,4)
imshow(log(1+abs(fftshift(fft2(pi1,PQ1(1),PQ1(2))))),[])
title(['功率谱比',num2str(pibi1)]);
    otherwise 
        error('error');






end