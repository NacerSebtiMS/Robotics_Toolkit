function transf = Transf(link)
a = link(1);
alpha = link(2);
d = link(3);
theta = link(4);

transf = [cos(theta) -sin(theta)*cos(alpha) sin(theta)*sin(alpha) a*cos(theta);sin(theta) cos(theta)*cos(alpha) -cos(theta)*sin(alpha) a*sin(theta);0 sin(alpha) cos(alpha) d;0 0 0 1];
end