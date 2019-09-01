
module duh_test(
    input hclk,
    input hrstn,

    input   hsel,
    input   hwrite,
    input   hreadyin,
    input   [9:0]  haddr,
    input   [31:0] hwdata,
    input   [1:0]  htrans,
    input   [2:0]  hsize,
    input   [2:0]  hburst,
    output  hreadyout,
    output  [1:0]  hresp,
    output  reg [31:0] hrdata
);

endmodule

