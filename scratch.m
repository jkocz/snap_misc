

fft_re(1:2:2048) = out.fft_re_0(1:1024);
fft_re(2:2:2048) = out.fft_re_1(1:1024);

fft_im(1:2:2048) = out.fft_im_0(1:1024);
fft_im(2:2:2048) = out.fft_im_1(1:1024);

data_valid = out.sync_out;

figure;
subplot(2,1,1)
plot(fft_re)
hold on;
plot(fft_im,'r');
plot(data_valid/10000,'k');
subplot(2,1,2)
plot(fft_re(1,:) + fft_im(1,:));
