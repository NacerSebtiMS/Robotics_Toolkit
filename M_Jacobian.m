function J = M_Jacobian(DH)

T00 = Homo_Matrix(DH,0);
T01 = Homo_Matrix(DH,1);
T02 = Homo_Matrix(DH,2);
T03 = Homo_Matrix(DH,3);
T04 = Homo_Matrix(DH,4);

z0 = T00(1:3,3);
z1 = T01(1:3,3);
z2 = T02(1:3,3);
z3 = T03(1:3,3);
%ze = T04(1:3,3);

p0 = T00(1:3,4);
p1 = T01(1:3,4);
p2 = T02(1:3,4);
p3 = T03(1:3,4);
pe = T04(1:3,4);

J = [cross(z0,pe-p0) cross(z1,pe-p1) cross(z2,pe-p2) cross(z3,pe-p3);z0 z1 z2 z3];
end