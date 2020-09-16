`define mem_width 8
`define mem_words 256
`define mem_addr_width 8

module fakeMem
	(
		input  clk,
		input  [`mem_width-1:0] mem_in,
		input  [`mem_addr_width-1:0] mem_addr,
		input  mem_wen,
		output reg [`mem_width-1:0] mem_out
	);

	reg [`mem_width-1:0] mem [`mem_words-1:0];

	initial begin
		/*mem[0]	 = 0;	mem[1]   = 1;	mem[2]   = 2;	mem[3]   = 3;	mem[4]   = 4;	mem[5]   = 5;	mem[6]   = 6;	mem[7]   = 7;	mem[8]   = 8;	mem[9]   = 9;
		mem[10]  = 10;	mem[11]  = 11;	mem[12]  = 12;	mem[13]  = 13;	mem[14]  = 14;	mem[15]  = 15;	mem[16]  = 16;	mem[17]  = 17;	mem[18]  = 18;	mem[19]  = 19;
		mem[20]  = 20;	mem[21]  = 21;	mem[22]  = 22;	mem[23]  = 23;	mem[24]  = 24;	mem[25]  = 25;	mem[26]  = 26;	mem[27]  = 27;	mem[28]  = 28;	mem[29]  = 29;
		mem[30]  = 30;	mem[31]  = 31;	mem[32]  = 32;	mem[33]  = 33;	mem[34]  = 34;	mem[35]  = 35;	mem[36]  = 36;	mem[37]  = 37;	mem[38]  = 38;	mem[39]  = 39;
		mem[40]  = 40;	mem[41]  = 41;	mem[42]  = 42;	mem[43]  = 43;	mem[44]  = 44;	mem[45]  = 45;	mem[46]  = 46;	mem[47]  = 47;	mem[48]  = 48;	mem[49]  = 49;
		mem[50]  = 50;	mem[51]  = 51;	mem[52]  = 52;	mem[53]  = 53;	mem[54]  = 54;	mem[55]  = 55;	mem[56]  = 56;	mem[57]  = 57;	mem[58]  = 58;	mem[59]  = 59;
		mem[60]  = 60;	mem[61]  = 61;	mem[62]  = 62;	mem[63]  = 63;	mem[64]  = 64;	mem[65]  = 65;	mem[66]  = 66;	mem[67]  = 67;	mem[68]  = 68;	mem[69]  = 69;
		mem[70]  = 70;	mem[71]  = 71;	mem[72]  = 72;	mem[73]  = 73;	mem[74]  = 74;	mem[75]  = 75;	mem[76]  = 76;	mem[77]  = 77;	mem[78]  = 78;	mem[79]  = 79;
		mem[80]  = 80;	mem[81]  = 81;	mem[82]  = 82;	mem[83]  = 83;	mem[84]  = 84;	mem[85]  = 85;	mem[86]  = 86;	mem[87]  = 87;	mem[88]  = 88;	mem[89]  = 89;
		mem[90]  = 90;	mem[91]  = 91;	mem[92]  = 92;	mem[93]  = 93;	mem[94]  = 94;	mem[95]  = 95;	mem[96]  = 96;	mem[97]  = 97;	mem[98]  = 98;	mem[99]  = 99;
		mem[100] = 100;	mem[101] = 101;	mem[102] = 102;	mem[103] = 103;	mem[104] = 104;	mem[105] = 105;	mem[106] = 106;	mem[107] = 107;	mem[108] = 108;	mem[109] = 109;
		mem[110] = 110;	mem[111] = 111;	mem[112] = 112;	mem[113] = 113;	mem[114] = 114;	mem[115] = 115;	mem[116] = 116;	mem[117] = 117;	mem[118] = 118;	mem[119] = 119;
		mem[120] = 120;	mem[121] = 121;	mem[122] = 122;	mem[123] = 123;	mem[124] = 124;	mem[125] = 125;	mem[126] = 126;	mem[127] = 127;	mem[128] = 128;	mem[129] = 129;
		mem[130] = 130;	mem[131] = 131;	mem[132] = 132;	mem[133] = 133;	mem[134] = 134;	mem[135] = 135;	mem[136] = 136;	mem[137] = 137;	mem[138] = 138;	mem[139] = 139;
		mem[140] = 140;	mem[141] = 141;	mem[142] = 142;	mem[143] = 143;	mem[144] = 144;	mem[145] = 145;	mem[146] = 146;	mem[147] = 147;	mem[148] = 148;	mem[149] = 149;
		mem[150] = 150;	mem[151] = 151;	mem[152] = 152;	mem[153] = 153;	mem[154] = 154;	mem[155] = 155;	mem[156] = 156;	mem[157] = 157;	mem[158] = 158;	mem[159] = 159;
		mem[160] = 160;	mem[161] = 161;	mem[162] = 162;	mem[163] = 163;	mem[164] = 164;	mem[165] = 165;	mem[166] = 166;	mem[167] = 167;	mem[168] = 168;	mem[169] = 169;
		mem[170] = 170;	mem[171] = 171;	mem[172] = 172;	mem[173] = 173;	mem[174] = 174;	mem[175] = 175;	mem[176] = 176;	mem[177] = 177;	mem[178] = 178;	mem[179] = 179;
		mem[180] = 180;	mem[181] = 181;	mem[182] = 182;	mem[183] = 183;	mem[184] = 184;	mem[185] = 185;	mem[186] = 186;	mem[187] = 187;	mem[188] = 188;	mem[189] = 189;
		mem[190] = 190;	mem[191] = 191;	mem[192] = 192;	mem[193] = 193;	mem[194] = 194;	mem[195] = 195;	mem[196] = 196;	mem[197] = 197;	mem[198] = 198;	mem[199] = 199;
		mem[200] = 200;	mem[201] = 201;	mem[202] = 202;	mem[203] = 203;	mem[204] = 204;	mem[205] = 205;	mem[206] = 206;	mem[207] = 207;	mem[208] = 208;	mem[209] = 209;
		mem[210] = 210;	mem[211] = 211;	mem[212] = 212;	mem[213] = 213;	mem[214] = 214;	mem[215] = 215;	mem[216] = 216;	mem[217] = 217;	mem[218] = 218;	mem[219] = 219;
		mem[220] = 220;	mem[221] = 221;	mem[222] = 222;	mem[223] = 223;	mem[224] = 224;	mem[225] = 225;	mem[226] = 226;	mem[227] = 227;	mem[228] = 228;	mem[229] = 229;
		mem[230] = 230;	mem[231] = 231;	mem[232] = 232;	mem[233] = 233;	mem[234] = 234;	mem[235] = 235;	mem[236] = 236;	mem[237] = 237;	mem[238] = 238;	mem[239] = 239;
		mem[240] = 240;	mem[241] = 241;	mem[242] = 242;	mem[243] = 243;	mem[244] = 244;	mem[245] = 245;	mem[246] = 246;	mem[247] = 247;	mem[248] = 248;	mem[249] = 249;
		mem[250] =250;	mem[251] = 251;	mem[252] = 252;	mem[253] = 253;	mem[254] = 254;	mem[255] = 255;*/
	end

	always @(posedge clk) 
		begin
			if (mem_wen == 1'b1) 
				begin
					mem[mem_addr] <= mem_in;
					mem_out <= 0;
				end
			else 
				begin
					mem_out <= mem[mem_addr];
				end
		end
endmodule