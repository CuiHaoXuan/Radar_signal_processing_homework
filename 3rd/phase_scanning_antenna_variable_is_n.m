%ʹ��Ļ��󻯣��������߷���ͼ��С���������
scrsz = get(0,'ScreenSize');
set(gcf,'Position',scrsz);

%�������ߣ�ƫ�ƽ�Ϊ60��
a=linspace(0,2*pi);  
f1=sin((cos(a)-0.5)*(6/2)*pi*4/3)./(sin((cos(a)-0.5)*(pi/2)*4/3)*6);
subplot(3,2,1);
polar(a,abs(f1)); 
title('6Ԫ����ʽ����H�棬d=����*2/3');
grid on;
subplot(3,2,2);
plot(180.*a/pi,abs(f1));
axis([0 360 0 1]);
grid on;



a=linspace(0,2*pi);  
f1=sin((cos(a)-0.5)*(10/2)*pi*4/3)./(sin((cos(a)-0.5)*(pi/2)*4/3)*10);
subplot(3,2,3);
polar(a,abs(f1)); 
title('10Ԫ����ʽ����H�棬d=����*2/3');
grid on;
subplot(3,2,4);
plot(180.*a/pi,abs(f1));
axis([0 360 0 1]);
grid on;

a=linspace(0,2*pi);  
f1=sin((cos(a)-0.5)*(10/2)*pi*4/3)./(sin((cos(a)-0.5)*(pi/2)*4/3)*14);
subplot(3,2,5);
polar(a,abs(f1)); 
title('14Ԫ����ʽ����H�棬d=����*2/3');
grid on;
subplot(3,2,6);
plot(180.*a/pi,abs(f1));
axis([0 360 0 1]);
grid on;