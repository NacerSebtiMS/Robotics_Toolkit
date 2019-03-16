function rot = Angle2Rotation(axis,a)
if axis == 1 % Rx
    rot = [1 0 0;0 cos(a) -sin(a);0 sin(a) cos(a)];
elseif axis == 2 % Ry
    rot = [cos(a) 0 sin(a);0 1 0;-sin(a) 0 cos(a)];
else % Rz
    rot = [cos(a) -sin(a) 0;sin(a) cos(a) 0;0 0 1];
end