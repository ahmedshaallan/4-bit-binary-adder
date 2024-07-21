module bit_adder (A , B ,C0,S,C4);
input wire [3:0] A ;
input wire [3:0] B ;
input wire C0 ;
output wire [3:0] S ;
output wire C4 ;
wire C1,C2,C3 ;

full_adder ff0 (
                  .A(A[0]), 
                  .B(B[0]),
                  .Ci(C0), 
                  .S(S[0]), 
                  .Co(C1)
) ;

full_adder ff1 (
                  .A(A[1]), 
                  .B(B[1]),
                  .Ci(C1), 
                  .S(S[1]), 
                  .Co(C2)
) ;

full_adder ff2 (
                  .A(A[2]), 
                  .B(B[2]),
                  .Ci(C2), 
                  .S(S[2]), 
                  .Co(C3)
) ;

full_adder ff3 (
                  .A(A[3]), 
                  .B(B[3]),
                  .Ci(C3), 
                  .S(S[3]), 
                  .Co(C4)
) ;




endmodule