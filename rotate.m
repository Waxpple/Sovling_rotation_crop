function [pt1,pt2,pt3,pt4,s3,s6,s9,s12,ss3,ss6,ss9,ss12,npt1,npt2,npt3,npt4,snpt1,snpt2,snpt3,snpt4] = rotate(x,y,degree)

% 2-------1
% |   o   |
% 3-------4
pt1 = [x,y];
pt2 = [-x,y];
pt3 = [-x,-y];
pt4 = [x,-y];
npt1 = rotate_transform(pt1,degree);
npt2 = rotate_transform(pt2,degree);
npt3 = rotate_transform(pt3,degree);
npt4 = rotate_transform(pt4,degree);

snpt1 = rotate_transform(pt1,-degree);
snpt2 = rotate_transform(pt2,-degree);
snpt3 = rotate_transform(pt3,-degree);
snpt4 = rotate_transform(pt4,-degree);

%第一象限
[s1,s2,s3] = solve_2line_eq(npt1,npt2,degree,pt1,pt2);
[ss1,ss2,ss3] = solve_2line_eq(snpt1,snpt2,-degree,pt1,pt2);

%第二象限
[s4,s5,s6] = solve_2line_eq(npt2,npt3,degree,pt2,pt3);
[ss4,ss5,ss6] = solve_2line_eq(snpt2,snpt3,-degree,pt2,pt3);


%第三象限
[s7,s8,s9] = solve_2line_eq(npt3,npt4,degree,pt3,pt4);
[ss7,ss8,ss9] = solve_2line_eq(snpt3,snpt4,-degree,pt3,pt4);

%第四象限
[s10,s11,s12] = solve_2line_eq(npt4,npt1,degree,pt4,pt1);
[ss10,ss11,ss12] = solve_2line_eq(snpt4,snpt1,-degree,pt4,pt1);




