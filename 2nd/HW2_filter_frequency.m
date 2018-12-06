B=1e8;  %ɨƵ����100MHz
fs=1e9; %����Ƶ���Ǵ����10����������
T=1e-6; %û��ָ����������Ϊ1us
TB=B*T; %ʱƵ��,100
N=fs*T; %����������1000
alpha=1/(2*100*TB);
n=1:N;
s=exp(j*2*pi*alpha*(n-N/2).^2);
h=conj(s(end:-1:1));%ƥ���˲�������
s_out=ifft(fft(s).*fft(h)); %��������ź�
s_out=ifftshift(s_out);%���źŽ���ƽ��
L=length(s_out);%IFFT�ĵ���
i=[ 0: L-1]/L*T;%fft�µ�ʱ������ΪT
plot(i*1e6,abs(s_out));
xlabel('ʱ�� \mus');
ylabel('�źŷ�ֵ');
title('���Ե�Ƶ�źž���ƥ���˲��� T=1\mus  B=100MHz');