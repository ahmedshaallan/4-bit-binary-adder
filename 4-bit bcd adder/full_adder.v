module full_adder ( A , B , Ci , S , Co);
    input wire A ;
    input wire B ;
    input wire Ci ;
    output wire S ;
    output wire Co ;
    wire w ;
    wire g ;
    wire e  ;

half_adder h1 (  .A(A),
                 .B(B), 
                 .S(w), 
                 .C(g)


) ;

half_adder h2 ( .A(Ci),
                .B(w),
                .S(S),
                .C(e)

) ;
assign Co = e | g ;

endmodule