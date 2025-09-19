module maxterm (
    input A, B, C, D,
    output Y
);

assign Y = (B|C|D)&(~D|~B)&(~A|~D);// Enter your equation here

endmodule
