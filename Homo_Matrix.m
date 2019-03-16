function hom_mat = Homo_Matrix(DH,n)
hom_mat = eye(4);
for i = 1:n
    hom_mat = hom_mat * Transf(DH(i,:));
end
end