module half_adder ( A , B , S , C
);
    input wire A ;
    input wire B ;
    output wire S ;
    output wire C ;
   assign S = A ^ B ;
   assign C = A & B ; 



endmodule