%cal
clc;clear;close all;
width = input('請輸入Width');
height = input('請輸入Height');
angle = input('請輸入angle');
x = floor(width/2);
y = floor(height/2);
figure(1);
hold on;
rectangle('Position',[-x -y 2*x 2*y])
[pt1,pt2,pt3,pt4,s3,s6,s9,s12,ss3,ss6,ss9,ss12,npt1,npt2,npt3,npt4,snpt1,snpt2,snpt3,snpt4]=rotate(x,y,angle);


line([npt1(1),npt2(1)],[npt1(2),npt2(2)]);axis equal;
line([npt1(1),npt4(1)],[npt1(2),npt4(2)]);
line([npt2(1),npt3(1)],[npt2(2),npt3(2)]);
line([npt4(1),npt3(1)],[npt4(2),npt3(2)]);
axis([-npt1(1)-100,npt1(1)+100,-npt2(2)-100,npt2(2)+100])

line([snpt1(1),snpt2(1)],[snpt1(2),snpt2(2)]);
line([snpt1(1),snpt4(1)],[snpt1(2),snpt4(2)]);
line([snpt2(1),snpt3(1)],[snpt2(2),snpt3(2)]);
line([snpt4(1),snpt3(1)],[snpt4(2),snpt3(2)]);

plot(s3.a,s3.b,'ro');
plot(s6.a,s6.b,'ro');
plot(s9.a,s9.b,'ro');
plot(s12.a,s12.b,'ro');

plot(ss3.a,ss3.b,'ro');
plot(ss6.a,ss6.b,'ro');
plot(ss9.a,ss9.b,'ro');
plot(ss12.a,ss12.b,'ro');


line([0,pt1(1)],[0,pt1(2)]);
line([0,pt2(1)],[0,pt2(2)]);
line([0,pt3(1)],[0,pt3(2)]);
line([0,pt4(1)],[0,pt4(2)]);



plot(0,0,'ro');

x_set = [s3.a,s6.a,s9.a,s12.a,ss3.a,ss6.a,ss9.a,ss12.a];
y_set = [s3.b,s6.b,s9.b,s12.b,ss3.b,ss6.b,ss9.b,ss12.b];
x_set = eval(x_set);
y_set = eval(y_set);

find(x_set==min(abs(x_set-0)),4)
find(y_set==min(abs(y_set-0)),4)

