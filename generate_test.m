A = [1 1 3; 3 3 2; 1 2 2];
legend(1,2) = "one";
legend(1,1) = int2str(1);
legend(2,2) = "two";
legend(2,1) = int2str(2);
legend(3,2) = "three";
legend(3,1) = int2str(3);

B = strings(3,3);

for r = 1 : 3
    r_name = legend (r, 2);
    [r_indices_i, r_indices_j] = find(A == r);
    num = size (r_indices_i, 1);
    for ind = 1 : num
        B(r_indices_i(ind), r_indices_j(ind)) = r_name;
    end
end