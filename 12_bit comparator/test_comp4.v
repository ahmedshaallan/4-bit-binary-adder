module test_comp4 ();
reg [3:0]A;
reg [3:0]B;
reg [1:0]S3;
reg g,e,l ;
wire Agreater,Bgreater,Equall ;
integer test_comp , i ;

comp4 comp(
    .A(A),
    .B(B),
    .Agreater(Agreater) ,
    .Bgreater(Bgreater) , 
    .Equall(Equall)
);

   initial
   begin
    test_comp=$fopen("test_comp.txt","rb");
    #1 ;
    for(i=0 ; i<16; i=i+1)
    begin
        #1;
        $fscanf(test_comp,"%b",A);
        $fscanf(test_comp,"%b",B);
        $fscanf(test_comp,"%b",S3);
        if(S3 == 2'b10) begin
           #1;
            l= 1'b1 ;
            e= 1'b0 ;
            g= 1'b0 ;
        end else if (S3 == 2'b01) begin
            #1 ;
            l= 1'b0 ;
            e= 1'b0 ;
            g= 1'b1 ;
        end
        else begin
            #1 ;
            l= 1'b0 ;
            e= 1'b1 ;
            g= 1'b0 ;
        end
        if(l == Bgreater && e == Equall && g == Agreater)
        begin
            #1 ;
            $display("#####correct case number%d",i+1);
            if(g==1'b1) begin
               $display(" A is greater than B , A = %b",A , " B= %b",B); 
            end else if (l==1'b1) begin
                $display(" B is greater than A , A = %b",A , " B= %b",B);
            end else begin
                $display(" A is equall to  B , A = %b",A , " B= %b",B);
            end
        end
        else begin
            $display("g = %b",g , " l= %b" , l , "e = %b",e , " Agreater= %b",Agreater," Bgreater= %b",Bgreater, " equall= %b",Equall) ;
        end

    end
   end
endmodule