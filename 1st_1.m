clear all;
clc;
Fs=45e6;
PRT=300e-6;
tt=100e-6;
N=Fs*PRT;%13500����
index=linspace(1,N,N);

%�ο��ź�
imported_data = importdata('C:\Users\Administrator\Desktop\B��data\b1.dat');
x=imported_data(:,1)';
y=imported_data(:,2)';
N_total = length(x);%135000���㣬���Է�����10������
for z=1:1:N
    signal(z)=x(z+10000)+1i*y(z+10000);%ȡ�ڶ����ο��ź�����
end
subplot(3,2,1);
plot(index,abs(signal));
subplot(3,2,2);
signal_fft = fft(signal);
plot(index,abs(signal_fft));

%�нǷ���Ļز��ź�
imported_data_with_reflect = importdata('C:\Users\Administrator\Desktop\B��data\b1_back2.dat');
x_reflect=imported_data_with_reflect(:,1);
y_reflect=imported_data_with_reflect(:,2);
for z=1:1:N
      signal_reflect(z)=x_reflect(z+10000)+1i*y_reflect(z+10000);%ȡ�ڶ����ο��źŵĻز��ź�����
end
subplot(3,2,3);
plot(index,abs(signal_reflect));
signal_reflect_fft = fft(signal_reflect);
subplot(3,2,4);
plot(index,abs(signal_reflect_fft));

% %�нǷ���Ļز��ź�
% imported_data_with_reflect_2 = importdata('C:\Users\Administrator\Desktop\B��data\b2_back2.dat');
% x_reflect_2=imported_data_with_reflect_2(:,1);
% y_reflect_2=imported_data_with_reflect_2(:,2);
% for z=1:1:N
%       signal_reflect_2(z)=x_reflect_2(z+10000)+1i*y_reflect_2(z+10000);%ȡ�ڶ����ο��źŵĻز��ź�����
% end
% subplot(3,1,2);
% signal_reflect_defect = signal_reflect_2;
% signal_reflect_fft = fft(signal_reflect_defect);
% plot(index,abs(signal_reflect_defect));

subplot(3,2,5);
u = conj(signal_fft).*signal_reflect_fft
t = ifft(u);
plot(index,10*log(t));
subplot(3,2,6);
plot(index,abs(u));