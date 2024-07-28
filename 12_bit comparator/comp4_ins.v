module comp4_ins (A , B , e , l , g , Fe , Fg , Fl);
input wire [3:0] A ;
input wire [3:0] B ;
input wire e ;
input wire g ;
input wire l ;
output wire Fe , Fg , Fl ;

comp4 comp_complicated (

    .A(A),
    .B(B),
    .Agreater(Fg) ,
    .Bgreater(Fl) , 
    .Equall(Fe)
);


    
endmodule