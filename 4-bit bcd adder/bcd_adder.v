module bcd_adder (A,B,Ci,S,Co);
input wire [3:0] A ;
input wire [3:0] B ;
input wire Ci ;
output wire [3:0] S ;
output wire Co ;
wire [3:0] Z ;
wire Y ;
wire X ;
assign X = Y | (Z[3] & Z[2]) | (Z[3] & Z[1]) ;
bit_adder bcd1(
                .A(A),
                .B(B),
                .C0(Ci),
                .S(Z),
                .C4(Y)

);


bit_adder bcd2(
                .A(Z),
                .B({1'b0,X,X,1'b0}),
                .C0(1'b0),
                .S(S),
                .C4(Co)

);





endmodule