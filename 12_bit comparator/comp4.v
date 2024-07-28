module comp4 (A,B,Agreater,Bgreater,Equall);
input wire [3:0] A ;
input wire [3:0] B ;
output wire Agreater , Bgreater , Equall ;
wire X3,X2,X1,X0 ;
assign X3 = (~(A[3]^B[3]));
assign X2 = (~(A[2]^B[2]));
assign X1 = (~(A[1]^B[1]));
assign X0 = (~(A[0]^B[0]));
assign Equall    =  X3 & X2 & X1 & X0 ;
assign Agreater  = (A[3] & (~B[3])) | (X3 & A[2] & (~B[2])) | (X3 & X2 & A[1] & (~B[1])) | (X3 & X2 & X1 & A[0] &(~B[0]) ) ;
assign Bgreater  = (B[3] & (~A[3])) | (X3 & B[2] & (~A[2])) | (X3 & X2 & B[1] & (~A[1])) | (X3 & X2 & X1 & B[0] &(~A[0]) ) ;


    
endmodule