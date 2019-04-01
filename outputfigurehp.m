function outputfigurehp(type,pi1,g1,H1,D0,n,pibi1)
PQ1= paddedsize(size(pi1));

figure;
switch type
    case 'ideal'
       subplot(2,2,1)
imshow(pi1,[])
title('ԭʼͼ��');
subplot(2,2,2)
imshow(g1,[])
title(['��������Ƶ���ͨ�˲�ͼ��D0=' ,num2str(D0),'n=',num2str(n)]);
subplot(2,2,3)
imshow(fftshift(H1))
title('�����˲���');
subplot(2,2,4)
imshow(log(1+abs(fftshift(fft2(pi1,PQ1(1),PQ1(2))))),[])
title(['�����ױ�',num2str(pibi1)]);
    case 'btw'
        subplot(2,2,1)
imshow(pi1,[])
title('ԭʼͼ��');
subplot(2,2,2)
imshow(g1,[])
title(['����butterworthƵ���ͨ�˲�ͼ��D0=' ,num2str(D0),'n=',num2str(n)]);
subplot(2,2,3)
imshow(fftshift(H1))
title('butterworth�˲���');
subplot(2,2,4)
imshow(log(1+abs(fftshift(fft2(pi1,PQ1(1),PQ1(2))))),[])
title(['�����ױ�',num2str(pibi1)]);
    case 'gaussian'
       subplot(2,2,1)
imshow(pi1,[])
title('ԭʼͼ��');
subplot(2,2,2)
imshow(g1,[])
title(['������˹Ƶ���ͨ�˲�ͼ��D0=' ,num2str(D0),'n=',num2str(n)]);
subplot(2,2,3)
imshow(fftshift(H1))
title('��˹�˲���');
subplot(2,2,4)
imshow(log(1+abs(fftshift(fft2(pi1,PQ1(1),PQ1(2))))),[])
title(['�����ױ�',num2str(pibi1)]);
    otherwise 
        error('error');






end