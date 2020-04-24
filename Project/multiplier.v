module reg_file(input wire clk,reset,write,cout,input wire [15:0]b,input wire[31:0] sum,output wire [31:0] prod);
    wire [31:0] r0;
    read re1(clk,write,r0,b,prod);
    write w1(clk,reset,write,cout,sum,r0);
endmodule

module seq_mul (input wire clk,write,reset, input wire [15:0] mul,b,output wire [31:0] prod);
    wire [31:0]sum;
    wire carry;
    alu_slice a1(prod,mul,sum,carry);
    reg_file rf1(clk,reset,write,carry,b,sum,prod);
endmodule

module read (input wire clk,write, input wire [31:0] x,input wire [15:0] b, output wire [31:0] y);
    wire zero = 1'b0;
    mux2 m1(x[0],b[0],write,y[0]);
    mux2 m2(x[1],b[1],write,y[1]);
    mux2 m3(x[2],b[2],write,y[2]);
    mux2 m4(x[3],b[3],write,y[3]);
    mux2 m5(x[4],b[4],write,y[4]);
    mux2 m6(x[5],b[5],write,y[5]);
    mux2 m7(x[6],b[6],write,y[6]);
    mux2 m8(x[7],b[7],write,y[7]);
    mux2 m9(x[8],b[8],write,y[8]);
    mux2 m10(x[9],b[9],write,y[9]);
    mux2 m11(x[10],b[10],write,y[10]);
    mux2 m12(x[11],b[11],write,y[11]);
    mux2 m13(x[12],b[12],write,y[12]);
    mux2 m14(x[13],b[13],write,y[13]);
    mux2 m15(x[14],b[14],write,y[14]);
    mux2 m16(x[15],b[15],write,y[15]);
    mux2 m17(x[16],zero,write,y[16]);
    mux2 m18(x[17],zero,write,y[17]);
    mux2 m19(x[18],zero,write,y[18]);
    mux2 m20(x[19],zero,write,y[19]);
    mux2 m21(x[20],zero,write,y[20]);
    mux2 m22(x[21],zero,write,y[21]);
    mux2 m23(x[22],zero,write,y[22]);
    mux2 m24(x[23],zero,write,y[23]);
    mux2 m25(x[24],zero,write,y[24]);
    mux2 m26(x[25],zero,write,y[25]);
    mux2 m27(x[26],zero,write,y[26]);
    mux2 m28(x[27],zero,write,y[27]);
    mux2 m29(x[28],zero,write,y[28]);
    mux2 m30(x[29],zero,write,y[29]);
    mux2 m31(x[30],zero,write,y[30]);
    mux2 m32(x[31],zero,write,y[31]);
endmodule

module write(input wire clk,reset,write,cout, input wire [31:0] sum,output [31:0] out);
    wire load = 1'b1;
    dfrl p0(clk,reset,load,sum[1],out[0]);
    dfrl p1(clk,reset,load,sum[2],out[1]);
    dfrl p2(clk,reset,load,sum[3],out[2]);
    dfrl p3(clk,reset,load,sum[4],out[3]);
    dfrl p4(clk,reset,load,sum[5],out[4]);
    dfrl p5(clk,reset,load,sum[6],out[5]);
    dfrl p6(clk,reset,load,sum[7],out[6]);
    dfrl p7(clk,reset,load,sum[8],out[7]);
    dfrl p8(clk,reset,load,sum[9],out[8]);
    dfrl p9(clk,reset,load,sum[10],out[9]);
    dfrl p10(clk,reset,load,sum[11],out[10]);
    dfrl p11(clk,reset,load,sum[12],out[11]);
    dfrl p12(clk,reset,load,sum[13],out[12]);
    dfrl p13(clk,reset,load,sum[14],out[13]);
    dfrl p14(clk,reset,load,sum[15],out[14]);
    dfrl p15(clk,reset,load,sum[16],out[15]);
    dfrl p16(clk,reset,load,sum[17],out[16]);
    dfrl p17(clk,reset,load,sum[18],out[17]);
    dfrl p18(clk,reset,load,sum[19],out[18]);
    dfrl p19(clk,reset,load,sum[20],out[19]);
    dfrl p20(clk,reset,load,sum[21],out[20]);
    dfrl p21(clk,reset,load,sum[22],out[21]);
    dfrl p22(clk,reset,load,sum[23],out[22]);
    dfrl p23(clk,reset,load,sum[24],out[23]);
    dfrl p24(clk,reset,load,sum[25],out[24]);
    dfrl p25(clk,reset,load,sum[26],out[25]);
    dfrl p26(clk,reset,load,sum[27],out[26]);
    dfrl p27(clk,reset,load,sum[28],out[27]);
    dfrl p28(clk,reset,load,sum[29],out[28]);
    dfrl p29(clk,reset,load,sum[30],out[29]);
    dfrl p30(clk,reset,load,sum[31],out[30]);
    dfrl p31(clk,reset,load,cout,out[31]);
endmodule

module alu_slice(input wire[31:0] a,input wire[15:0] b1,output wire [31:0] out,output wire carry);
    wire test = a[0];

    assign out[0] = a[0];
    assign out[1] = a[1];
    assign out[2] = a[2];
    assign out[3] = a[3];
    assign out[4] = a[4];
    assign out[5] = a[5];
    assign out[6] = a[6];
    assign out[7] = a[7];
    assign out[8] = a[8];
    assign out[9] = a[9];
    assign out[10] = a[10];
    assign out[11] = a[11];
    assign out[12] = a[12];
    assign out[13] = a[13];
    assign out[14] = a[14];
    assign out[15] = a[15];

    wire [15:0]b;
    and2 s1(test,b1[0],b[0]);
    and2 s2(test,b1[1],b[1]);
    and2 s3(test,b1[2],b[2]);
    and2 s4(test,b1[3],b[3]);
    and2 s5(test,b1[4],b[4]);
    and2 s6(test,b1[5],b[5]);
    and2 s7(test,b1[6],b[6]);
    and2 s8(test,b1[7],b[7]);
    and2 s9(test,b1[8],b[8]);
    and2 s10(test,b1[9],b[9]);
    and2 s11(test,b1[10],b[10]);
    and2 s12(test,b1[11],b[11]);
    and2 s13(test,b1[12],b[12]);
    and2 s14(test,b1[13],b[13]);
    and2 s15(test,b1[14],b[14]);
    and2 s16(test,b1[15],b[15]);

    wire [14:0] c; 
    fa f1(a[16],b[0],1'b0,out[16],c[0]);
    fa f2(a[17],b[1],c[0],out[17],c[1]);
    fa f3(a[18],b[2],c[1],out[18],c[2]);
    fa f4(a[19],b[3],c[2],out[19],c[3]);
    fa f5(a[20],b[4],c[3],out[20],c[4]);
    fa f6(a[21],b[5],c[4],out[21],c[5]);
    fa f7(a[22],b[6],c[5],out[22],c[6]);
    fa f8(a[23],b[7],c[6],out[23],c[7]);
    fa f9(a[24],b[8],c[7],out[24],c[8]);
    fa f10(a[25],b[9],c[8],out[25],c[9]);
    fa f11(a[26],b[10],c[9],out[26],c[10]);
    fa f12(a[27],b[11],c[10],out[27],c[11]);
    fa f13(a[28],b[12],c[11],out[28],c[12]);
    fa f14(a[29],b[13],c[12],out[29],c[13]);
    fa f15(a[30],b[14],c[13],out[30],c[14]);
    fa f16(a[31],b[15],c[14],out[31],carry);
endmodule


module fa (input wire i0, i1, cin, output wire sum, cout);
   wire t0, t1, t2;
   xor3 _i0 (i0, i1, cin, sum);
   and2 _i1 (i0, i1, t0);
   and2 _i2 (i1, cin, t1);
   and2 _i3 (cin, i0, t2);
   or3 _i4 (t0, t1, t2, cout);
endmodule
    