R0dB=50;%��������������������-50dB
d=0.5;%��Ԫ֮��ļ��Ϊ�벨��
n__=6;%�Ե�����������
N=19;%����19����Ԫ
x=2:1:178;%�Ƕ�
r0=10^(R0dB/20); %�����ƽҪ��20lgR0=20dB
A=(1/pi).*acosh(r0); 
n_=ceil(2*A^2+1/2);
if n_<n__;
n_=n__;
end

%��̩�շ���ͼ����������Xn
for n=1:1:n_-1;
Xn(n) = n_*sqrt((A^2+(n-1/2)^2)/(A^2+(n_-1/2)^2));
end
Xu=N*d*cos(x.*pi/180);
for n=1:1:n_-1;
Sx0(:,n)=1-((Xu.^2)./(Xn(n).^2));
end
Sx0_p=prod(Sx0');
for n=1:1:n_-1;
Sx1(:,n)=1-((Xu.^2)./(n.^2));
end
Sx1_p=prod(Sx1');
Sx=cosh(pi*A).*(((sin(pi*Xu).*Sx0_p)./((pi*Xu).*Sx1_p)));
Sx_max=max(Sx);
SxdB=20*log10((abs(Sx))/Sx_max);%��һ������ͼ
plot(x,SxdB);