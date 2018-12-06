B=1e8;  %ɨƵ����100MHz
fs=1.4e8; %����Ƶ���Ǵ����1.4����������
num=1;
for i=[0.1,0.5,1]
    subplot(3,2,num);
    T=i*1e-6; %û��ָ����������Ϊ1us
    TB=B*T; %ʱƵ��,100
    N=fs*T; %����������1000
    alpha=1/(2*1.4*1.4*TB);
    n=1:N;
    s=exp(j*2*pi*alpha*(n-N/2).^2);
    h=conj(s(end:-1:1));%ƥ���˲�������
    h_out=fft(h); %��������ź�
    h_out=fftshift(h_out);%���źŽ���ƽ��
    L=length(h_out);%FFT�ĵ���
    i=[ -L/2: L/2]/L*fs;%fft�µ�Ƶ������Ϊfs
    i(end)=[];
    plot(i/1e6,abs(h_out));
    xlabel('Ƶ�� MHz');
    ylabel('��ֵ');
    title(['ƥ���˲���Ƶ�� TBP=',num2str(TB)]);
    grid on;
    num=num+1;
    subplot(3,2,num);
    plot(i/1e6,unwrap(phase(h_out)));
    xlabel('Ƶ�� MHz');
    ylabel('����');
    title(['ƥ���˲�����λ TBP=',num2str(TB)]);
    grid on;
    num=num+1;
end
