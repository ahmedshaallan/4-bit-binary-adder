fid = fopen('test_bcd.txt','wt') ;
for i = 0 : 9 
    x = randi ([0, 9]) ;
     y = randi([0, 9]) ;
     sum= x + y ;
     if (sum >9 ) 
         sum = sum + 6 ;
     end
     x_bin = dec2bin(x,4) ;
     y_bin = dec2bin(y,4) ;
     sum_bin = dec2bin(sum,5) ;
     fprintf(fid,'%s\n',x_bin) ;
     fprintf(fid,'%s\n',y_bin) ;
     fprintf(fid,'%s\n',sum_bin) ;
end
     
    