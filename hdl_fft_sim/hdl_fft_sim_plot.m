sim_length = 8000;
dmux_out = 1;

valid_in = out.sync_in;
data_valid = double(out.sync_out);
delta_in = out.delta_in;
%of_out = out.of_out;

valid_idx = find(data_valid) + 1;
%valid_length = sim_length /2 - valid_idx ; %(sim_length*dmux_out) - valid_idx*dmux_out;
test_length = 1024;

tmp1 = out.fft_re_0(valid_idx:2:(valid_idx+2048));
tmp2 = out.fft_im_0(valid_idx:2:(valid_idx+2048));

fft_re(1:test_length) = tmp1(1:test_length)
fft_im(1:test_length) = tmp2(1:test_length)
%fft_re(1:test_length) = out.fft_re_0(valid_idx+1:2:(valid_idx+2048));
% 
% fft_im(1:2:valid_length) = out.fft_im_0(valid_idx:2:test_length*2);
% fft_im(2:2:valid_length) = out.fft_im_0(valid_idx+1:2:test_length*2);
% 
figure;
subplot(2,1,1)
plot(fft_re)
hold on;
plot(fft_im,'r');
plot(data_valid/10000,'k');
plot(valid_in/10000,'g');
plot(delta_in,'r');

subplot(2,1,2)
plot(fft_re(1,:) + fft_im(1,:));
% hold on
% plot(of_out,'k')

%simulation gen
% Fs = 100e6; 
% dt = 1/Fs;
% duration = 100e6*dt;
% t = (0:dt:duration-dt)';
% 
% Fc = 1;
% x = cos(2*pi*Fc*t);
% 
% figure;
% plot(t,x);