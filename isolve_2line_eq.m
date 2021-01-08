function [npt1,npt2,s1,s2,s3] = isolve_2line_eq(distant,pt1,pt2)
syms w a b x y
npt1 = [x*cos(w)+y*sin(w),-x*sin(w)+y*cos(w)];
npt2 = [-x*cos(w)+y*sin(w),x*sin(w)+y*cos(w)];

eqn = [npt1(1)*a+b==npt1(2),npt2(1)*a+b==npt2(2)];
s1 = solve(eqn,[a b]);

eqn = [0*a+b==0,pt1(1)*a+b==pt1(2)];

s2 = solve(eqn,[a b]);
eqn = [a*s1.a+s1.b==b,a*s2.a+s2.b==b];
s3 = solve(eqn,[a b],'ReturnConditions', true);
