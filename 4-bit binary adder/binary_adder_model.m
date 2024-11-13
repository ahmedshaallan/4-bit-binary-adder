%%%%%%test cases for binary addrer%%%
fid = fopen('Test_cases.txt','wt');
for i=0:20
A= randi([0,15]);
B= randi([0,15]);
S= A+B;
A_bin = dec2bin(A,4);
B_bin = dec2bin(B,4);
S_bin = dec2bin(S,5);
fprintf(fid,'%s\n',A_bin);
fprintf(fid,'%s\n',B_bin);
fprintf(fid,'%s\n',S_bin);
end
