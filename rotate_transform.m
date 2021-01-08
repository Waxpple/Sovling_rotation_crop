function [npt] = rotate_transform(pt,degree)
w = degree/180*pi;
npt = [pt(1)*cos(w)+pt(2)*sin(w),-pt(1)*sin(w)+pt(2)*cos(w)];

end