module demux1_2(i, s, y0, y1);
input i,s;
output y0, y1;
wire ns;
not (ns, s);
and (y0, i, ns);
and (y1, i, s);
endmodule
