module comp12 (A,B,Fg,Fe,Fl);
input wire [11:0]A ;
input wire [11:0]B ;
output wire Fe,Fg,Fl ;
wire fe1 , fg1 , fl1 ;
wire fe2 , fg2 , fl2 ;

comp4_ins comp4_1 (
   .e(1'b1),
   .g(1'b0),
   .l(1'b0),
   .A(A),
   .B(B),
   .Fe(fe1) ,
   .Fg(fg1) ,
   .Fl(fl1)
);
comp4_ins comp4_2 (
   .e(fe1),
   .g(fg1),
   .l(fl1),
   .A({A[7],A[6],A[5],A[4]}),
   .B({B[7],B[6],B[5],B[4]}),
   .Fe(fe2) ,
   .Fg(fg2) ,
   .Fl(fl2)
);

comp4_ins comp4_3 (
   .e(fe2),
   .g(fg2),
   .l(fl2),
   .A({A[11],A[10],A[9],A[8]}),
   .B({B[11],B[10],B[9],B[8]}),
   .Fe(Fe) ,
   .Fg(Fg) ,
   .Fl(Fl)
);


    
endmodule