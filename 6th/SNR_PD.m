clear all;
clc;
T=10e-6;    %���Ե�Ƶ�ź�����
B=30e6;     %���Ե�Ƶ�źŴ���
K=B/T;      %��Ƶ��
Fs=2*B;     %�����������ο�˹�ض���
Ts=1/Fs;    %�������
N=T/Ts;     %��������
t=linspace(-T/2,T/2,N);
St=exp(j*pi*K*t.^2);
G=1.6450;
counter=0;
counter2=0;
%����ÿ�β�����ֵ����һ�������ǽ���1000��ģ��
for i=1:1:1000
    x=wgn(1,N,0);
    dp = dot(St,x);%�����Ϊ1
    if abs(dp)<G
        counter=counter+1;
    end
    Rt=0.01*St+x;
    dp2 = dot(St,Rt);
    if abs(dp2)>G
        counter2=counter2+1;
    end
end
Pfa=counter/1000.0
Pd=counter2/1000.0
%plot(t,real(r));
%axis tight;