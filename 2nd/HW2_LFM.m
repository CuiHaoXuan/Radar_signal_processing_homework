B=1e8;  %ɨƵ����100MHz
fs=1e9; %����Ƶ���Ǵ����10����������
T=1e-6; %û��ָ����������Ϊ1us
TB=B*T; %ʱƵ��,100
N=fs*T; %����������1000
alpha=1/(2*100*TB);
n=1:N;
s=exp(j*2*pi*alpha*(n-N/2).^2);
subplot(3,1,1);
t=[-T/2:1/fs:T/2];
t(end)=[];
plot(t*1e6,real(s));
xlabel('ʱ�� \mus');
ylabel('��Ƶ�źŵ�ʵ��');
title('���Ե�Ƶ�źţ�T=1\mus B=100MHz��');
grid on;
subplot(3,1,2);
y=fft(s);%���źŽ���FFT
y=fftshift(y);%�������Ჿ�ֺ͸����Ჿ�ֵ�ͼ��ֱ���ڸ��Ե����ĶԳ�
L=length(y);%FFT�ĵ���
i=[ -L/2: L/2]/L*fs;%fft�µ�Ƶ������Ϊfs
i(end)=[];
plot(i/1e6,abs(y));
grid on;
xlabel('Ƶ�� MHz');
ylabel('��ֵ');
title('���Ե�Ƶ�ź�Ƶ��');
subplot(3,1,3);
plot(i/1e6,unwrap(phase(y)));
xlabel('Ƶ�� MHz');
ylabel('��λ');
title('���Ե�Ƶ�ź���λ����');

