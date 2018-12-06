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
for z=1:1:N_total
    signal(z)=x(z)+1i*y(z);%ȡ�ڶ����ο��ź�����
end
subplot(3,1,1);
plot(abs(signal));

imported_data_with_reflect = importdata('C:\Users\Administrator\Desktop\B��data\b1_back2.dat');
x_reflect=imported_data_with_reflect(:,1);
y_reflect=imported_data_with_reflect(:,2);
for z=1:1:N_total
      signal_reflect(z)=x_reflect(z)+1i*y_reflect(z);%ȡ�ڶ����ο��źŵĻز��ź�����
end
subplot(3,1,2);
plot(abs(signal_reflect));

%�нǷ���Ļز��ź�
imported_data_with_reflect_2 = importdata('C:\Users\Administrator\Desktop\B��data\b2_back2.dat');
x_reflect_2=imported_data_with_reflect_2(:,1);
y_reflect_2=imported_data_with_reflect_2(:,2);
for z=1:1:N_total
      signal_reflect_2(z)=x_reflect_2(z)+1i*y_reflect_2(z);%ȡ�ڶ����ο��źŵĻز��ź�����
end
subplot(3,1,3);
plot(abs(signal_reflect_2));