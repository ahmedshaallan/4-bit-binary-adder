module test_bcdadder ();
reg [3:0] A ;
reg [3:0] B ;
reg [4:0]G ;
wire [3:0] S ;
wire Co ;
integer i , test_bcdadder ;


bcd_adder bcdadd1 (
    .A(A) ,
    .B(B) ,
    .Ci(1'b0) ,
    .S(S) ,
    .Co(Co)
);

initial begin
    test_bcdadder = $fopen("test_bcd.txt" , "rb");
    #1 ;
    for(i=0 ; i<10 ; i=i+1 )
    begin
        #1;
        $fscanf(test_bcdadder,"%b",A);
        $fscanf(test_bcdadder,"%b",B);
        $fscanf(test_bcdadder,"%b",G);
         #1;
        if( G == {Co,S[3],S[2],S[1],S[0]} )
        begin
            $display("######Test case %d passed",i+1);
            $display("A = %b ", A , " , B = %b ", B , " sum = %b ", {Co,S[3],S[2],S[1],S[0]});

        end
        else begin
             $display("######Test case %d failed",i+1);
             $display("A = %b ", A , " , B = %b", B , "sum = %b ", {Co,S[3],S[2],S[1],S[0]}," the correct value is %b ", G);
        end
    end

end

    
endmodule