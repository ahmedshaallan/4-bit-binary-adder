fid = fopen('test_comp.txt','wt');
for i= 0:15 
    A=randi([0,15]);
    B=randi([0,15]);
    A_bin=dec2bin(A,4) ;
    B_bin=dec2bin(B,4) ;
    s=dec2bin(0,2);
    z=dec2bin(1,2) ;
    x=dec2bin(2,2);
    
    fprintf(fid,'%s\n',A_bin);
    fprintf(fid,'%s\n',B_bin);
    if(A==B)
        fprintf(fid,'%s\n',s);
    else if(A>B)
             fprintf(fid,'%s\n',z);
        else  fprintf(fid,'%s\n',x);
        end
    end
end