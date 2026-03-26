module mux_8_1(
  input[7:0]i,
  input[2:0]sel,
  output y);
   assign y = sel[2] ? 
     (sel[1] ? (sel[0] ? i[7] : i[6]) : (sel[0] ? i[5] : i[4])) :
     (sel[1] ? (sel[0] ? i[3] : i[2]) : (sel[0] ? i[1] : i[0]));
endmodule
