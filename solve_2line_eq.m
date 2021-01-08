function [s1,s2,s3] = solve_2line_eq(npt1,npt2,degree,pt1,pt2)
syms a b
%第一象限
eqn = [npt1(1)*a+b==npt1(2),npt2(1)*a+b==npt2(2)];
s1 = solve(eqn,[a b]);
if(degree<0)
    eqn = [0*a+b==0,pt2(1)*a+b==pt2(2)];
else
    eqn = [0*a+b==0,pt1(1)*a+b==pt1(2)];
end

s2 = solve(eqn,[a b]);
eqn = [a*s1.a+s1.b==b,a*s2.a+s2.b==b];
s3 = solve(eqn,[a b]);
end