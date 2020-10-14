sim_length = 1024;
dmux_out = 2;

valid_in = out.sync_in;
data_valid = out.sync_out;
delta_in = out.delta_in;
of_out = out.of_out;

valid_idx = find(data_valid) + 1;
valid_length = (sim_length*dmux_out) - valid_idx*2;

fft_re(1:2:valid_length+4) = out.fft_re_0(valid_idx:end);
fft_re(2:2:valid_length+4) = out.fft_re_1(valid_idx:end);

fft_im(1:2:valid_length+4) = out.fft_im_0(valid_idx:end);
fft_im(2:2:valid_length+4) = out.fft_im_1(valid_idx:end);

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
hold on
plot(of_out,'k')