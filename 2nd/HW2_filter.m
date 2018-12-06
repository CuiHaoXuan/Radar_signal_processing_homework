B=1e8;  %ɨƵ����100MHz
fs=1e9; %����Ƶ���Ǵ����10����������
T=1e-6; %û��ָ����������Ϊ1us
TB=B*T; %ʱƵ��,100
N=fs*T; %����������1000
alpha=1/(2*100*TB);
n=1:N;
s=exp(j*2*pi*alpha*(n-N/2).^2);
h=conj(s(end:-1:1));%ƥ���˲�������
st=[ -N/2:N/2];
st(end)=[];
ht=st;
num_begin=st(1)+ht(1);%����Ľ�������У���ʼ���Ϊ������ʼ�����ӣ��������Ϊ���߽��������ӣ�����2N-1����
num_end=st(length(s))+ht(length(h));
n=[ num_begin:num_end];
y=conv(s,h);
ty=(n/N)*T;%��һ��ΪT
subplot(2,1,1);
plot(ty*1e6,abs(y));
xlabel('ʱ�� \mus');
ylabel('�źŷ�ֵ');
title('���Ե�Ƶ�źž���ƥ���˲��� T=1\mus  B=100MHz');
grid on;
subplot(2,1,2);
yy=fft(y);%���źŽ���FFT
yy=fftshift(yy);%�������Ჿ�ֺ͸����Ჿ�ֵ�ͼ��ֱ���ڸ��Ե����ĶԳ�
L=length(yy);%FFT�ĵ���
i=[ -L/2: L/2]/L*fs;%fft�µ�Ƶ������Ϊfs
i(end)=[];
plot(i/1e6,abs(yy));
xlabel('Ƶ�� MHz');
ylabel('��ֵ');
title('���Ե�Ƶ�źž���ƥ���˲���Ƶ�� T=1\mus B=100MHz');
grid on;