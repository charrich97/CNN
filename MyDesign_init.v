/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1
// Date      : Mon Nov 15 04:59:50 2021
/////////////////////////////////////////////////////////////


module CNN_DUT ( clk, reset, go, busy, Address, Read_Matrix_Data, 
        Read_Weight_Data, Write_Enable, Write_Address, Write_Data );
  output [11:0] Address;
  input [15:0] Read_Matrix_Data;
  input [15:0] Read_Weight_Data;
  output [11:0] Write_Address;
  output [15:0] Write_Data;
  input clk, reset, go;
  output busy, Write_Enable;
  wire   N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N141, N1396, N1397, N1398, N1399, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614;
  wire   [2:0] FSM_Current_State;
  wire   [15:0] Input_Data;
  wire   [8:0] Weight_Data;

  DFFS_X2 \FSM_Current_State_reg[0]  ( .D(n78), .CK(clk), .SN(reset), .Q(
        FSM_Current_State[0]), .QN(n601) );
  DFFR_X1 \FSM_Current_State_reg[1]  ( .D(n79), .CK(clk), .RN(reset), .Q(
        FSM_Current_State[1]), .QN(n600) );
  DFFR_X1 \FSM_Current_State_reg[2]  ( .D(n613), .CK(clk), .RN(reset), .Q(
        FSM_Current_State[2]), .QN(n596) );
  DFF_X1 \Input_Data_reg[15]  ( .D(N132), .CK(clk), .Q(Input_Data[15]) );
  DFF_X1 \Input_Data_reg[14]  ( .D(N131), .CK(clk), .Q(Input_Data[14]) );
  DFF_X1 \Input_Data_reg[13]  ( .D(N130), .CK(clk), .Q(Input_Data[13]) );
  DFF_X1 \Input_Data_reg[12]  ( .D(N129), .CK(clk), .Q(Input_Data[12]) );
  DFF_X1 \Input_Data_reg[11]  ( .D(N128), .CK(clk), .Q(Input_Data[11]) );
  DFF_X1 \Input_Data_reg[9]  ( .D(N126), .CK(clk), .Q(Input_Data[9]), .QN(n597) );
  DFF_X1 \Input_Data_reg[8]  ( .D(N125), .CK(clk), .Q(Input_Data[8]) );
  DFF_X1 \Input_Data_reg[7]  ( .D(N124), .CK(clk), .Q(Input_Data[7]) );
  DFF_X1 \Input_Data_reg[6]  ( .D(N123), .CK(clk), .Q(Input_Data[6]), .QN(n605) );
  DFF_X1 \Input_Data_reg[5]  ( .D(N122), .CK(clk), .Q(Input_Data[5]), .QN(n608) );
  DFF_X1 \Input_Data_reg[2]  ( .D(N119), .CK(clk), .Q(Input_Data[2]), .QN(n609) );
  DFF_X1 \Input_Data_reg[0]  ( .D(N117), .CK(clk), .Q(Input_Data[0]) );
  DFF_X1 \Weight_Data_reg[8]  ( .D(N141), .CK(clk), .Q(Weight_Data[8]) );
  DFF_X1 \Weight_Data_reg[7]  ( .D(N140), .CK(clk), .Q(Weight_Data[7]), .QN(
        n599) );
  DFF_X1 \Weight_Data_reg[6]  ( .D(N139), .CK(clk), .Q(Weight_Data[6]), .QN(
        n598) );
  DFF_X1 \Weight_Data_reg[5]  ( .D(N138), .CK(clk), .Q(Weight_Data[5]) );
  DFF_X1 \Weight_Data_reg[4]  ( .D(N137), .CK(clk), .Q(n614) );
  DFF_X1 \Weight_Data_reg[3]  ( .D(N136), .CK(clk), .Q(Weight_Data[3]) );
  DFFS_X2 \Input_Data_reg[3]  ( .D(N120), .CK(clk), .SN(1'b1), .Q(
        Input_Data[3]), .QN(n607) );
  SDFF_X1 \Input_Data_reg[10]  ( .D(N127), .SI(1'b0), .SE(1'b0), .CK(clk), .Q(
        Input_Data[10]) );
  SDFF_X1 \Input_Data_reg[4]  ( .D(N121), .SI(1'b0), .SE(1'b0), .CK(clk), .Q(
        Input_Data[4]), .QN(n182) );
  DFFS_X2 \Weight_Data_reg[1]  ( .D(N134), .CK(clk), .SN(1'b1), .Q(
        Weight_Data[1]), .QN(n612) );
  DFF_X2 \Input_Data_reg[1]  ( .D(N118), .CK(clk), .Q(Input_Data[1]), .QN(n610) );
  DFF_X2 \Write_Data_reg[2]  ( .D(N1398), .CK(clk), .Q(Write_Data[2]) );
  DFF_X2 Write_Enable_reg ( .D(n613), .CK(clk), .Q(Write_Enable) );
  DFF_X2 \Write_Data_reg[0]  ( .D(N1396), .CK(clk), .Q(Write_Data[0]), .QN(
        n602) );
  DFF_X2 \Write_Data_reg[1]  ( .D(N1397), .CK(clk), .Q(Write_Data[1]), .QN(
        n603) );
  DFF_X2 \Write_Data_reg[3]  ( .D(N1399), .CK(clk), .Q(Write_Data[3]), .QN(
        n604) );
  DFF_X2 \Weight_Data_reg[2]  ( .D(N135), .CK(clk), .Q(Weight_Data[2]), .QN(
        n606) );
  DFF_X2 \Weight_Data_reg[0]  ( .D(N133), .CK(clk), .Q(Weight_Data[0]), .QN(
        n611) );
  INV_X1 U214 ( .A(n354), .ZN(n81) );
  NAND2_X1 U215 ( .A1(n193), .A2(n353), .ZN(n365) );
  NAND2_X1 U216 ( .A1(n368), .A2(n355), .ZN(n363) );
  BUF_X4 U217 ( .A(n535), .Z(n84) );
  INV_X1 U218 ( .A(n331), .ZN(n325) );
  INV_X1 U219 ( .A(n579), .ZN(n580) );
  NAND2_X1 U220 ( .A1(n273), .A2(n272), .ZN(n332) );
  NAND2_X1 U221 ( .A1(n420), .A2(n419), .ZN(n445) );
  NAND2_X1 U222 ( .A1(n200), .A2(n317), .ZN(n199) );
  NAND3_X1 U223 ( .A1(n445), .A2(n444), .A3(n443), .ZN(N1399) );
  INV_X1 U224 ( .A(n570), .ZN(n613) );
  AND3_X4 U225 ( .A1(n587), .A2(FSM_Current_State[0]), .A3(n596), .ZN(n79) );
  XNOR2_X1 U226 ( .A(n80), .B(n609), .ZN(n514) );
  INV_X2 U227 ( .A(n612), .ZN(n80) );
  INV_X2 U228 ( .A(n250), .ZN(n193) );
  XNOR2_X1 U229 ( .A(n612), .B(n605), .ZN(n250) );
  NAND2_X1 U230 ( .A1(n81), .A2(n366), .ZN(n355) );
  XNOR2_X1 U231 ( .A(n383), .B(n384), .ZN(n402) );
  NAND2_X1 U232 ( .A1(n83), .A2(n82), .ZN(n420) );
  INV_X2 U233 ( .A(n418), .ZN(n82) );
  INV_X2 U234 ( .A(n417), .ZN(n83) );
  INV_X2 U235 ( .A(n518), .ZN(n225) );
  NAND2_X1 U236 ( .A1(n540), .A2(n542), .ZN(n518) );
  NAND4_X1 U237 ( .A1(n234), .A2(n232), .A3(n231), .A4(n229), .ZN(N1397) );
  NAND3_X2 U238 ( .A1(n236), .A2(n235), .A3(n242), .ZN(n234) );
  XNOR2_X2 U239 ( .A(n583), .B(n582), .ZN(n239) );
  XNOR2_X2 U240 ( .A(n606), .B(Input_Data[2]), .ZN(n471) );
  XNOR2_X2 U241 ( .A(n416), .B(n415), .ZN(n421) );
  XNOR2_X2 U242 ( .A(n551), .B(n552), .ZN(n257) );
  XNOR2_X2 U243 ( .A(n552), .B(n519), .ZN(n531) );
  INV_X2 U244 ( .A(n213), .ZN(n198) );
  OAI21_X1 U245 ( .B1(n162), .B2(n161), .A(n505), .ZN(n160) );
  XNOR2_X1 U246 ( .A(n503), .B(n504), .ZN(n162) );
  NAND2_X1 U247 ( .A1(n533), .A2(n532), .ZN(n534) );
  AND2_X1 U248 ( .A1(n209), .A2(n211), .ZN(n202) );
  AND2_X1 U249 ( .A1(n568), .A2(n613), .ZN(n228) );
  INV_X1 U250 ( .A(n346), .ZN(n313) );
  AND3_X1 U251 ( .A1(n576), .A2(n523), .A3(n572), .ZN(n528) );
  XNOR2_X1 U252 ( .A(n304), .B(n303), .ZN(n346) );
  OR2_X1 U253 ( .A1(n467), .A2(n474), .ZN(n468) );
  INV_X2 U254 ( .A(n467), .ZN(n85) );
  OR2_X1 U255 ( .A1(n497), .A2(n499), .ZN(n252) );
  INV_X1 U256 ( .A(n293), .ZN(n196) );
  INV_X1 U257 ( .A(n353), .ZN(n249) );
  NOR2_X1 U258 ( .A1(n189), .A2(n459), .ZN(n173) );
  OR2_X1 U259 ( .A1(n613), .A2(n602), .ZN(n507) );
  OR2_X1 U260 ( .A1(n571), .A2(n570), .ZN(n226) );
  AND2_X1 U261 ( .A1(n486), .A2(n465), .ZN(n466) );
  OR2_X1 U262 ( .A1(n391), .A2(n570), .ZN(n245) );
  INV_X2 U263 ( .A(n459), .ZN(n490) );
  INV_X2 U264 ( .A(n536), .ZN(n561) );
  INV_X2 U265 ( .A(n509), .ZN(n541) );
  INV_X2 U266 ( .A(n471), .ZN(n189) );
  NAND3_X1 U267 ( .A1(n442), .A2(n441), .A3(n440), .ZN(n444) );
  NAND2_X1 U268 ( .A1(n160), .A2(n187), .ZN(n159) );
  NAND3_X1 U269 ( .A1(n233), .A2(n242), .A3(n613), .ZN(n232) );
  INV_X2 U270 ( .A(n242), .ZN(n230) );
  XNOR2_X1 U271 ( .A(n215), .B(n183), .ZN(n184) );
  AND2_X2 U272 ( .A1(n203), .A2(n208), .ZN(n201) );
  INV_X2 U273 ( .A(n534), .ZN(n549) );
  NAND4_X1 U274 ( .A1(n554), .A2(n553), .A3(n569), .A4(n228), .ZN(n227) );
  NAND2_X1 U275 ( .A1(n239), .A2(n584), .ZN(n235) );
  NAND2_X1 U276 ( .A1(n186), .A2(n185), .ZN(n217) );
  NAND2_X1 U277 ( .A1(n220), .A2(n529), .ZN(n533) );
  NAND2_X1 U278 ( .A1(n554), .A2(n553), .ZN(n241) );
  NAND2_X1 U279 ( .A1(n254), .A2(n484), .ZN(n166) );
  NAND2_X1 U280 ( .A1(n462), .A2(n463), .ZN(n464) );
  NAND2_X1 U281 ( .A1(n176), .A2(n477), .ZN(n175) );
  OAI21_X1 U282 ( .B1(n402), .B2(n401), .A(n400), .ZN(n403) );
  INV_X1 U283 ( .A(n402), .ZN(n399) );
  INV_X2 U284 ( .A(n178), .ZN(n176) );
  XNOR2_X1 U285 ( .A(n495), .B(n494), .ZN(n253) );
  OAI21_X1 U286 ( .B1(n346), .B2(n345), .A(n310), .ZN(n315) );
  NAND2_X1 U287 ( .A1(n178), .A2(n455), .ZN(n177) );
  INV_X1 U288 ( .A(n538), .ZN(n546) );
  INV_X2 U289 ( .A(n478), .ZN(n489) );
  NAND2_X1 U290 ( .A1(n535), .A2(n526), .ZN(n223) );
  NAND2_X1 U291 ( .A1(n196), .A2(n333), .ZN(n273) );
  XNOR2_X1 U292 ( .A(n512), .B(n564), .ZN(n517) );
  NAND2_X1 U293 ( .A1(n190), .A2(n459), .ZN(n174) );
  NAND2_X1 U294 ( .A1(n173), .A2(n450), .ZN(n172) );
  NAND2_X2 U295 ( .A1(n326), .A2(n263), .ZN(n293) );
  AND2_X2 U296 ( .A1(n458), .A2(n169), .ZN(n168) );
  INV_X2 U297 ( .A(n450), .ZN(n190) );
  INV_X2 U298 ( .A(n301), .ZN(n86) );
  NAND2_X1 U299 ( .A1(n265), .A2(n279), .ZN(n266) );
  NAND2_X1 U300 ( .A1(n365), .A2(n357), .ZN(n354) );
  NAND2_X1 U301 ( .A1(n516), .A2(n515), .ZN(n540) );
  OR2_X1 U302 ( .A1(n79), .A2(n605), .ZN(n256) );
  AND2_X1 U303 ( .A1(n559), .A2(n536), .ZN(n537) );
  OR2_X1 U304 ( .A1(n613), .A2(n604), .ZN(n443) );
  INV_X2 U305 ( .A(n588), .ZN(n587) );
  NAND3_X2 U306 ( .A1(n596), .A2(n601), .A3(FSM_Current_State[1]), .ZN(n570)
         );
  INV_X2 U307 ( .A(1'b1), .ZN(Address[11]) );
  INV_X2 U308 ( .A(1'b1), .ZN(Address[10]) );
  INV_X2 U309 ( .A(1'b1), .ZN(Address[9]) );
  INV_X2 U310 ( .A(1'b1), .ZN(Address[8]) );
  INV_X2 U311 ( .A(1'b1), .ZN(Address[7]) );
  INV_X2 U312 ( .A(1'b1), .ZN(Address[6]) );
  INV_X2 U313 ( .A(1'b1), .ZN(Address[5]) );
  INV_X2 U314 ( .A(1'b1), .ZN(Address[4]) );
  INV_X2 U315 ( .A(1'b1), .ZN(Address[3]) );
  INV_X2 U316 ( .A(1'b1), .ZN(Address[2]) );
  INV_X2 U317 ( .A(1'b1), .ZN(Address[1]) );
  INV_X2 U318 ( .A(1'b1), .ZN(Address[0]) );
  INV_X2 U319 ( .A(1'b1), .ZN(Write_Address[11]) );
  INV_X2 U320 ( .A(1'b1), .ZN(Write_Address[10]) );
  INV_X2 U321 ( .A(1'b1), .ZN(Write_Address[9]) );
  INV_X2 U322 ( .A(1'b1), .ZN(Write_Address[8]) );
  INV_X2 U323 ( .A(1'b1), .ZN(Write_Address[7]) );
  INV_X2 U324 ( .A(1'b1), .ZN(Write_Address[6]) );
  INV_X2 U325 ( .A(1'b1), .ZN(Write_Address[5]) );
  INV_X2 U326 ( .A(1'b1), .ZN(Write_Address[4]) );
  INV_X2 U327 ( .A(1'b1), .ZN(Write_Address[3]) );
  INV_X2 U328 ( .A(1'b1), .ZN(Write_Address[2]) );
  INV_X2 U329 ( .A(1'b1), .ZN(Write_Address[1]) );
  INV_X2 U330 ( .A(1'b1), .ZN(Write_Address[0]) );
  INV_X2 U331 ( .A(1'b1), .ZN(Write_Data[15]) );
  INV_X2 U332 ( .A(1'b1), .ZN(Write_Data[14]) );
  INV_X2 U333 ( .A(1'b1), .ZN(Write_Data[13]) );
  INV_X2 U334 ( .A(1'b1), .ZN(Write_Data[12]) );
  INV_X2 U335 ( .A(1'b1), .ZN(Write_Data[11]) );
  INV_X2 U336 ( .A(1'b1), .ZN(Write_Data[10]) );
  INV_X2 U337 ( .A(1'b1), .ZN(Write_Data[9]) );
  INV_X2 U338 ( .A(1'b1), .ZN(Write_Data[8]) );
  INV_X2 U339 ( .A(1'b1), .ZN(Write_Data[7]) );
  INV_X2 U340 ( .A(1'b1), .ZN(Write_Data[6]) );
  INV_X2 U341 ( .A(1'b1), .ZN(Write_Data[5]) );
  INV_X2 U342 ( .A(1'b1), .ZN(Write_Data[4]) );
  XNOR2_X2 U379 ( .A(n456), .B(n85), .ZN(n495) );
  XNOR2_X2 U380 ( .A(n480), .B(n490), .ZN(n467) );
  XNOR2_X2 U381 ( .A(Input_Data[6]), .B(Weight_Data[5]), .ZN(n482) );
  NAND3_X2 U382 ( .A1(n163), .A2(n507), .A3(n159), .ZN(N1396) );
  AOI21_X1 U383 ( .B1(n166), .B2(n495), .A(n494), .ZN(n161) );
  XNOR2_X2 U384 ( .A(n167), .B(n164), .ZN(n163) );
  OAI22_X2 U385 ( .A1(n166), .A2(n165), .B1(n493), .B2(n570), .ZN(n164) );
  NAND3_X1 U386 ( .A1(n253), .A2(n251), .A3(n613), .ZN(n165) );
  NOR2_X2 U387 ( .A1(n184), .A2(n570), .ZN(n167) );
  XNOR2_X2 U388 ( .A(n170), .B(n168), .ZN(n478) );
  NAND2_X1 U389 ( .A1(n449), .A2(n471), .ZN(n169) );
  NAND2_X1 U390 ( .A1(n189), .A2(n472), .ZN(n458) );
  NAND3_X2 U391 ( .A1(n174), .A2(n172), .A3(n171), .ZN(n170) );
  NAND2_X1 U392 ( .A1(n189), .A2(n459), .ZN(n171) );
  XNOR2_X2 U393 ( .A(Weight_Data[3]), .B(Input_Data[4]), .ZN(n459) );
  NAND2_X2 U394 ( .A1(n177), .A2(n175), .ZN(n462) );
  XNOR2_X2 U395 ( .A(n489), .B(n482), .ZN(n178) );
  NOR2_X2 U396 ( .A1(n421), .A2(n570), .ZN(n417) );
  XNOR2_X2 U397 ( .A(n614), .B(Input_Data[10]), .ZN(n406) );
  XNOR2_X2 U398 ( .A(Weight_Data[3]), .B(Input_Data[8]), .ZN(n323) );
  NOR2_X2 U399 ( .A1(n213), .A2(n212), .ZN(n200) );
  XNOR2_X2 U400 ( .A(n181), .B(n179), .ZN(n213) );
  XNOR2_X2 U401 ( .A(n180), .B(n86), .ZN(n179) );
  NAND3_X2 U402 ( .A1(n300), .A2(n298), .A3(n299), .ZN(n180) );
  NAND2_X2 U403 ( .A1(n314), .A2(n315), .ZN(n181) );
  AOI21_X2 U404 ( .B1(n241), .B2(n573), .A(n572), .ZN(n238) );
  NAND3_X2 U405 ( .A1(n199), .A2(n197), .A3(n201), .ZN(N1398) );
  NAND2_X2 U406 ( .A1(n198), .A2(n202), .ZN(n197) );
  XNOR2_X2 U407 ( .A(n359), .B(n390), .ZN(n373) );
  AND2_X1 U408 ( .A1(n368), .A2(n367), .ZN(n389) );
  NAND2_X1 U409 ( .A1(n381), .A2(n386), .ZN(n435) );
  XNOR2_X1 U410 ( .A(Weight_Data[0]), .B(n182), .ZN(n261) );
  XNOR2_X1 U411 ( .A(n612), .B(n590), .ZN(n260) );
  INV_X1 U412 ( .A(n359), .ZN(n407) );
  NAND2_X1 U413 ( .A1(n244), .A2(n409), .ZN(n388) );
  AND3_X1 U414 ( .A1(n396), .A2(n395), .A3(n394), .ZN(n400) );
  INV_X1 U415 ( .A(n332), .ZN(n275) );
  INV_X1 U416 ( .A(n358), .ZN(n361) );
  NAND2_X1 U417 ( .A1(n374), .A2(n375), .ZN(n381) );
  INV_X1 U418 ( .A(n572), .ZN(n578) );
  NAND2_X1 U419 ( .A1(n469), .A2(n468), .ZN(n476) );
  NAND3_X1 U420 ( .A1(n478), .A2(n466), .A3(n467), .ZN(n469) );
  NOR2_X1 U421 ( .A1(n319), .A2(n325), .ZN(n290) );
  XOR2_X1 U422 ( .A(n555), .B(n561), .Z(n556) );
  NAND2_X1 U423 ( .A1(n521), .A2(n555), .ZN(n576) );
  NAND2_X1 U424 ( .A1(n225), .A2(n509), .ZN(n224) );
  XNOR2_X1 U425 ( .A(n606), .B(n607), .ZN(n509) );
  NAND2_X1 U426 ( .A1(n448), .A2(n447), .ZN(n472) );
  NAND2_X1 U427 ( .A1(n195), .A2(n279), .ZN(n262) );
  NAND2_X1 U428 ( .A1(n264), .A2(n273), .ZN(n302) );
  INV_X1 U429 ( .A(n400), .ZN(n397) );
  INV_X1 U430 ( .A(n542), .ZN(n510) );
  INV_X1 U431 ( .A(n550), .ZN(n551) );
  INV_X1 U432 ( .A(n310), .ZN(n311) );
  XNOR2_X1 U433 ( .A(n266), .B(n323), .ZN(n301) );
  NAND2_X1 U434 ( .A1(n195), .A2(n280), .ZN(n265) );
  INV_X1 U435 ( .A(n426), .ZN(n431) );
  INV_X1 U436 ( .A(n427), .ZN(n429) );
  NAND3_X1 U437 ( .A1(n435), .A2(n433), .A3(n434), .ZN(n194) );
  NAND2_X1 U438 ( .A1(n380), .A2(n246), .ZN(n425) );
  NAND2_X1 U439 ( .A1(n247), .A2(n409), .ZN(n246) );
  NAND2_X1 U440 ( .A1(n379), .A2(n378), .ZN(n380) );
  INV_X1 U441 ( .A(n381), .ZN(n247) );
  INV_X1 U442 ( .A(n573), .ZN(n557) );
  INV_X1 U443 ( .A(n575), .ZN(n567) );
  INV_X1 U444 ( .A(n496), .ZN(n492) );
  XNOR2_X1 U445 ( .A(n498), .B(n496), .ZN(n254) );
  NAND2_X1 U446 ( .A1(n476), .A2(n475), .ZN(n214) );
  NAND2_X1 U447 ( .A1(n613), .A2(n316), .ZN(n212) );
  NAND2_X1 U448 ( .A1(n570), .A2(Write_Data[2]), .ZN(n208) );
  NAND2_X1 U449 ( .A1(n205), .A2(n204), .ZN(n203) );
  NOR2_X1 U450 ( .A1(n352), .A2(n570), .ZN(n204) );
  INV_X1 U451 ( .A(n389), .ZN(n392) );
  INV_X1 U452 ( .A(n390), .ZN(n393) );
  NAND2_X1 U453 ( .A1(n248), .A2(n365), .ZN(n359) );
  NAND2_X1 U454 ( .A1(n357), .A2(n364), .ZN(n248) );
  NAND2_X1 U455 ( .A1(n454), .A2(n453), .ZN(n455) );
  NAND2_X1 U456 ( .A1(n452), .A2(n465), .ZN(n453) );
  NAND3_X1 U457 ( .A1(n451), .A2(n490), .A3(n457), .ZN(n452) );
  NAND2_X1 U458 ( .A1(n191), .A2(n393), .ZN(n371) );
  INV_X1 U459 ( .A(n363), .ZN(n191) );
  NAND2_X1 U460 ( .A1(n192), .A2(n371), .ZN(n372) );
  NAND2_X1 U461 ( .A1(n408), .A2(n406), .ZN(n192) );
  INV_X1 U462 ( .A(n372), .ZN(n383) );
  INV_X1 U463 ( .A(n514), .ZN(n515) );
  NAND2_X1 U464 ( .A1(n222), .A2(n536), .ZN(n221) );
  NAND3_X1 U465 ( .A1(n224), .A2(n525), .A3(n564), .ZN(n222) );
  NAND2_X1 U466 ( .A1(n450), .A2(n471), .ZN(n457) );
  NAND2_X1 U467 ( .A1(n190), .A2(n189), .ZN(n451) );
  NAND2_X1 U468 ( .A1(n219), .A2(n218), .ZN(n470) );
  INV_X1 U469 ( .A(n447), .ZN(n218) );
  INV_X1 U470 ( .A(n448), .ZN(n219) );
  INV_X1 U471 ( .A(n455), .ZN(n477) );
  OR2_X1 U472 ( .A1(n262), .A2(n280), .ZN(n263) );
  INV_X1 U473 ( .A(n344), .ZN(n309) );
  NAND2_X1 U474 ( .A1(n259), .A2(n258), .ZN(n195) );
  XNOR2_X1 U475 ( .A(Input_Data[6]), .B(n606), .ZN(n280) );
  INV_X1 U476 ( .A(n435), .ZN(n377) );
  NOR2_X1 U477 ( .A1(n461), .A2(n495), .ZN(n185) );
  INV_X1 U478 ( .A(n462), .ZN(n186) );
  INV_X1 U479 ( .A(n320), .ZN(n298) );
  INV_X1 U480 ( .A(n318), .ZN(n299) );
  OAI21_X1 U481 ( .B1(n425), .B2(n382), .A(n245), .ZN(n418) );
  NAND2_X1 U482 ( .A1(n404), .A2(n403), .ZN(n416) );
  NAND3_X1 U483 ( .A1(n244), .A2(n411), .A3(n412), .ZN(n414) );
  NAND2_X1 U484 ( .A1(n524), .A2(n511), .ZN(n512) );
  NAND2_X1 U485 ( .A1(n510), .A2(n541), .ZN(n511) );
  INV_X1 U486 ( .A(n558), .ZN(n560) );
  INV_X1 U487 ( .A(n485), .ZN(n487) );
  INV_X1 U488 ( .A(n321), .ZN(n274) );
  NOR2_X1 U489 ( .A1(n350), .A2(n351), .ZN(n210) );
  INV_X1 U490 ( .A(n348), .ZN(n350) );
  NAND2_X1 U491 ( .A1(n206), .A2(n347), .ZN(n205) );
  NAND2_X1 U492 ( .A1(n341), .A2(n207), .ZN(n206) );
  AOI21_X1 U493 ( .B1(n425), .B2(n424), .A(n428), .ZN(n439) );
  XNOR2_X1 U494 ( .A(n436), .B(n194), .ZN(n438) );
  INV_X1 U495 ( .A(n423), .ZN(n424) );
  AND2_X1 U496 ( .A1(n422), .A2(n613), .ZN(n441) );
  AOI21_X2 U497 ( .B1(n238), .B2(n584), .A(n237), .ZN(n236) );
  NAND2_X1 U498 ( .A1(n613), .A2(n585), .ZN(n237) );
  NAND2_X1 U499 ( .A1(n613), .A2(n506), .ZN(n188) );
  NAND2_X1 U500 ( .A1(n256), .A2(n255), .ZN(N123) );
  NAND2_X1 U501 ( .A1(n79), .A2(Read_Matrix_Data[6]), .ZN(n255) );
  XOR2_X2 U502 ( .A(n214), .B(n478), .Z(n183) );
  INV_X1 U503 ( .A(n539), .ZN(n562) );
  NAND2_X1 U504 ( .A1(n224), .A2(n525), .ZN(n535) );
  NAND2_X1 U505 ( .A1(n223), .A2(n221), .ZN(n550) );
  INV_X1 U506 ( .A(n386), .ZN(n409) );
  NOR2_X2 U507 ( .A1(n591), .A2(FSM_Current_State[0]), .ZN(busy) );
  NOR2_X1 U508 ( .A1(n184), .A2(n188), .ZN(n187) );
  NAND2_X2 U509 ( .A1(n451), .A2(n457), .ZN(n480) );
  NAND2_X2 U510 ( .A1(n470), .A2(n472), .ZN(n450) );
  XNOR2_X1 U511 ( .A(n611), .B(n590), .ZN(n353) );
  XNOR2_X2 U512 ( .A(Input_Data[0]), .B(n611), .ZN(n448) );
  XNOR2_X2 U513 ( .A(Input_Data[1]), .B(n611), .ZN(n513) );
  NAND2_X1 U514 ( .A1(n363), .A2(n390), .ZN(n408) );
  NAND2_X2 U515 ( .A1(n293), .A2(n323), .ZN(n272) );
  OR2_X1 U516 ( .A1(n342), .A2(n343), .ZN(n207) );
  OR2_X1 U517 ( .A1(n349), .A2(n210), .ZN(n209) );
  AND2_X1 U518 ( .A1(n352), .A2(n613), .ZN(n211) );
  NAND3_X2 U519 ( .A1(n217), .A2(n464), .A3(n216), .ZN(n215) );
  OAI21_X1 U520 ( .B1(n495), .B2(n500), .A(n463), .ZN(n216) );
  NAND2_X1 U521 ( .A1(n531), .A2(n528), .ZN(n220) );
  NAND2_X2 U522 ( .A1(n257), .A2(n555), .ZN(n574) );
  NAND2_X2 U523 ( .A1(n518), .A2(n541), .ZN(n525) );
  NAND2_X2 U524 ( .A1(n227), .A2(n226), .ZN(n240) );
  NAND2_X1 U525 ( .A1(n230), .A2(n240), .ZN(n229) );
  AOI21_X1 U526 ( .B1(n240), .B2(n570), .A(n586), .ZN(n231) );
  INV_X1 U527 ( .A(n240), .ZN(n233) );
  XNOR2_X2 U528 ( .A(n549), .B(n243), .ZN(n242) );
  INV_X2 U529 ( .A(n548), .ZN(n243) );
  INV_X1 U530 ( .A(n385), .ZN(n244) );
  NAND2_X2 U531 ( .A1(n250), .A2(n249), .ZN(n357) );
  OR3_X1 U532 ( .A1(n492), .A2(n501), .A3(n252), .ZN(n251) );
  XOR2_X1 U533 ( .A(n267), .B(n326), .Z(n283) );
  INV_X1 U534 ( .A(n408), .ZN(n410) );
  INV_X4 U535 ( .A(n373), .ZN(n413) );
  INV_X1 U536 ( .A(n482), .ZN(n486) );
  OAI22_X2 U537 ( .A1(n546), .A2(n545), .B1(n558), .B2(n544), .ZN(n547) );
  NAND2_X2 U538 ( .A1(n513), .A2(n514), .ZN(n542) );
  XNOR2_X2 U539 ( .A(n413), .B(n386), .ZN(n384) );
  XNOR2_X2 U540 ( .A(n517), .B(n525), .ZN(n552) );
  INV_X1 U541 ( .A(n472), .ZN(n449) );
  INV_X1 U542 ( .A(n279), .ZN(n281) );
  INV_X1 U543 ( .A(n555), .ZN(n559) );
  INV_X1 U544 ( .A(n494), .ZN(n500) );
  INV_X1 U545 ( .A(n577), .ZN(n566) );
  INV_X1 U546 ( .A(n267), .ZN(n340) );
  INV_X1 U547 ( .A(n432), .ZN(n434) );
  INV_X1 U548 ( .A(n505), .ZN(n493) );
  INV_X1 U549 ( .A(n302), .ZN(n303) );
  INV_X1 U550 ( .A(n387), .ZN(n428) );
  INV_X1 U551 ( .A(n584), .ZN(n571) );
  INV_X1 U552 ( .A(n391), .ZN(n437) );
  INV_X1 U557 ( .A(n261), .ZN(n259) );
  INV_X2 U558 ( .A(n608), .ZN(n590) );
  INV_X1 U559 ( .A(n260), .ZN(n258) );
  NAND2_X1 U560 ( .A1(n261), .A2(n260), .ZN(n279) );
  NAND2_X1 U561 ( .A1(n262), .A2(n280), .ZN(n326) );
  XNOR2_X1 U562 ( .A(n597), .B(n614), .ZN(n331) );
  NAND2_X1 U563 ( .A1(n272), .A2(n325), .ZN(n264) );
  INV_X1 U564 ( .A(n323), .ZN(n333) );
  XNOR2_X1 U565 ( .A(n302), .B(n301), .ZN(n269) );
  XNOR2_X1 U566 ( .A(Weight_Data[5]), .B(Input_Data[10]), .ZN(n267) );
  NAND2_X1 U567 ( .A1(n269), .A2(n267), .ZN(n285) );
  XNOR2_X1 U568 ( .A(n331), .B(n323), .ZN(n268) );
  XNOR2_X1 U569 ( .A(n293), .B(n268), .ZN(n305) );
  NAND2_X1 U570 ( .A1(n305), .A2(n267), .ZN(n308) );
  XNOR2_X1 U571 ( .A(n285), .B(n308), .ZN(n271) );
  OR2_X1 U572 ( .A1(n269), .A2(n267), .ZN(n270) );
  NAND2_X1 U573 ( .A1(n271), .A2(n270), .ZN(n349) );
  XNOR2_X1 U574 ( .A(n325), .B(n267), .ZN(n321) );
  XNOR2_X1 U575 ( .A(n332), .B(n274), .ZN(n348) );
  XNOR2_X1 U576 ( .A(n598), .B(Input_Data[12]), .ZN(n351) );
  AOI21_X1 U577 ( .B1(n349), .B2(n348), .A(n351), .ZN(n289) );
  NAND2_X1 U578 ( .A1(n275), .A2(n301), .ZN(n319) );
  INV_X1 U579 ( .A(n280), .ZN(n276) );
  NAND2_X1 U580 ( .A1(n279), .A2(n276), .ZN(n282) );
  NAND2_X1 U581 ( .A1(n326), .A2(n282), .ZN(n335) );
  NOR2_X1 U582 ( .A1(n335), .A2(n333), .ZN(n277) );
  XNOR2_X1 U583 ( .A(n277), .B(n351), .ZN(n278) );
  XNOR2_X1 U584 ( .A(n290), .B(n278), .ZN(n287) );
  NAND2_X1 U585 ( .A1(n281), .A2(n280), .ZN(n295) );
  NAND2_X1 U586 ( .A1(n295), .A2(n282), .ZN(n324) );
  XNOR2_X1 U587 ( .A(n283), .B(n324), .ZN(n284) );
  NAND3_X1 U588 ( .A1(n285), .A2(n284), .A3(n308), .ZN(n286) );
  XNOR2_X1 U589 ( .A(n287), .B(n286), .ZN(n288) );
  XNOR2_X1 U590 ( .A(Input_Data[13]), .B(Weight_Data[7]), .ZN(n344) );
  OAI21_X1 U591 ( .B1(n289), .B2(n288), .A(n344), .ZN(n317) );
  INV_X1 U592 ( .A(n290), .ZN(n291) );
  NAND2_X1 U593 ( .A1(n291), .A2(n340), .ZN(n300) );
  NOR2_X1 U594 ( .A1(n331), .A2(n323), .ZN(n292) );
  XNOR2_X1 U595 ( .A(n293), .B(n292), .ZN(n294) );
  NAND2_X1 U596 ( .A1(n294), .A2(n267), .ZN(n297) );
  NAND4_X1 U597 ( .A1(n295), .A2(n335), .A3(n325), .A4(n267), .ZN(n296) );
  NAND2_X1 U598 ( .A1(n297), .A2(n296), .ZN(n318) );
  NOR2_X1 U599 ( .A1(n340), .A2(n325), .ZN(n320) );
  XNOR2_X1 U600 ( .A(n86), .B(n267), .ZN(n304) );
  INV_X1 U601 ( .A(n305), .ZN(n306) );
  NAND2_X1 U602 ( .A1(n306), .A2(n340), .ZN(n307) );
  NAND3_X1 U603 ( .A1(n308), .A2(n307), .A3(n351), .ZN(n345) );
  NAND2_X1 U604 ( .A1(n335), .A2(n323), .ZN(n322) );
  XNOR2_X1 U605 ( .A(n322), .B(n309), .ZN(n310) );
  INV_X1 U606 ( .A(n345), .ZN(n312) );
  NAND3_X1 U607 ( .A1(n313), .A2(n312), .A3(n311), .ZN(n314) );
  XNOR2_X1 U608 ( .A(Weight_Data[8]), .B(Input_Data[14]), .ZN(n316) );
  AOI21_X1 U609 ( .B1(n320), .B2(n319), .A(n318), .ZN(n343) );
  XNOR2_X1 U610 ( .A(n322), .B(n321), .ZN(n330) );
  XNOR2_X1 U611 ( .A(n324), .B(n323), .ZN(n328) );
  XNOR2_X1 U612 ( .A(n326), .B(n325), .ZN(n327) );
  XNOR2_X1 U613 ( .A(n328), .B(n327), .ZN(n338) );
  AOI21_X1 U614 ( .B1(n340), .B2(n330), .A(n338), .ZN(n329) );
  OAI21_X1 U615 ( .B1(n343), .B2(n330), .A(n329), .ZN(n347) );
  NAND2_X1 U616 ( .A1(n332), .A2(n331), .ZN(n337) );
  NOR2_X1 U617 ( .A1(n333), .A2(n267), .ZN(n334) );
  AOI22_X1 U618 ( .A1(n335), .A2(n334), .B1(n333), .B2(n267), .ZN(n336) );
  XNOR2_X1 U619 ( .A(n337), .B(n336), .ZN(n342) );
  INV_X1 U620 ( .A(n338), .ZN(n339) );
  AOI21_X1 U621 ( .B1(n342), .B2(n340), .A(n339), .ZN(n341) );
  OAI21_X1 U622 ( .B1(n346), .B2(n345), .A(n344), .ZN(n352) );
  XNOR2_X1 U623 ( .A(n606), .B(Input_Data[7]), .ZN(n364) );
  NAND2_X1 U624 ( .A1(n354), .A2(n364), .ZN(n368) );
  XNOR2_X1 U625 ( .A(Weight_Data[3]), .B(Input_Data[9]), .ZN(n390) );
  NAND2_X1 U626 ( .A1(n371), .A2(n408), .ZN(n358) );
  XNOR2_X1 U627 ( .A(Weight_Data[5]), .B(Input_Data[11]), .ZN(n386) );
  XNOR2_X1 U628 ( .A(n386), .B(n406), .ZN(n356) );
  XNOR2_X1 U629 ( .A(n358), .B(n356), .ZN(n423) );
  XNOR2_X1 U630 ( .A(Weight_Data[6]), .B(Input_Data[13]), .ZN(n387) );
  XNOR2_X1 U631 ( .A(n423), .B(n387), .ZN(n370) );
  XNOR2_X1 U632 ( .A(n407), .B(n386), .ZN(n432) );
  INV_X1 U633 ( .A(n406), .ZN(n360) );
  NAND3_X1 U634 ( .A1(n361), .A2(n360), .A3(n373), .ZN(n426) );
  XNOR2_X1 U635 ( .A(n393), .B(n406), .ZN(n362) );
  XNOR2_X1 U636 ( .A(n363), .B(n362), .ZN(n385) );
  NAND2_X1 U637 ( .A1(n385), .A2(n386), .ZN(n433) );
  INV_X1 U638 ( .A(n364), .ZN(n366) );
  NAND2_X1 U639 ( .A1(n366), .A2(n365), .ZN(n367) );
  NAND2_X1 U640 ( .A1(n389), .A2(n390), .ZN(n427) );
  NAND4_X1 U641 ( .A1(n432), .A2(n426), .A3(n433), .A4(n427), .ZN(n369) );
  NAND3_X1 U642 ( .A1(n370), .A2(n369), .A3(n613), .ZN(n382) );
  NAND2_X1 U643 ( .A1(n372), .A2(n373), .ZN(n375) );
  NAND2_X1 U644 ( .A1(n383), .A2(n413), .ZN(n374) );
  NAND2_X1 U645 ( .A1(n435), .A2(n433), .ZN(n379) );
  INV_X1 U646 ( .A(n433), .ZN(n376) );
  NAND2_X1 U647 ( .A1(n377), .A2(n376), .ZN(n378) );
  XNOR2_X1 U648 ( .A(n599), .B(Input_Data[14]), .ZN(n391) );
  NAND3_X1 U649 ( .A1(n433), .A2(n388), .A3(n428), .ZN(n401) );
  INV_X1 U650 ( .A(n401), .ZN(n398) );
  NAND2_X1 U651 ( .A1(n389), .A2(n437), .ZN(n396) );
  NAND3_X1 U652 ( .A1(n392), .A2(n391), .A3(n390), .ZN(n395) );
  NAND2_X1 U653 ( .A1(n393), .A2(n437), .ZN(n394) );
  NAND3_X1 U654 ( .A1(n399), .A2(n398), .A3(n397), .ZN(n404) );
  NOR2_X1 U655 ( .A1(n409), .A2(n406), .ZN(n405) );
  AOI21_X1 U656 ( .B1(n407), .B2(n406), .A(n405), .ZN(n412) );
  OAI21_X1 U657 ( .B1(n410), .B2(n413), .A(n409), .ZN(n411) );
  XNOR2_X1 U658 ( .A(n414), .B(n413), .ZN(n415) );
  NAND2_X1 U659 ( .A1(n418), .A2(n417), .ZN(n419) );
  INV_X1 U660 ( .A(n421), .ZN(n442) );
  XNOR2_X1 U661 ( .A(Weight_Data[8]), .B(Input_Data[15]), .ZN(n422) );
  XNOR2_X1 U662 ( .A(n429), .B(n428), .ZN(n430) );
  XNOR2_X1 U663 ( .A(n431), .B(n430), .ZN(n436) );
  OAI21_X1 U664 ( .B1(n439), .B2(n438), .A(n437), .ZN(n440) );
  INV_X2 U665 ( .A(n610), .ZN(n446) );
  XNOR2_X1 U666 ( .A(n612), .B(n446), .ZN(n447) );
  NAND2_X1 U667 ( .A1(n480), .A2(n459), .ZN(n454) );
  XNOR2_X1 U668 ( .A(Input_Data[5]), .B(n614), .ZN(n488) );
  INV_X1 U669 ( .A(n488), .ZN(n465) );
  XOR2_X1 U670 ( .A(n482), .B(n488), .Z(n456) );
  NAND2_X1 U671 ( .A1(n458), .A2(n457), .ZN(n491) );
  NAND2_X1 U672 ( .A1(n491), .A2(n459), .ZN(n460) );
  XNOR2_X1 U673 ( .A(Input_Data[9]), .B(Weight_Data[7]), .ZN(n505) );
  XNOR2_X1 U674 ( .A(n460), .B(n493), .ZN(n463) );
  XNOR2_X1 U675 ( .A(n598), .B(Input_Data[8]), .ZN(n494) );
  OR2_X1 U676 ( .A1(n463), .A2(n500), .ZN(n461) );
  NAND2_X1 U677 ( .A1(n482), .A2(n488), .ZN(n474) );
  NAND2_X1 U678 ( .A1(n471), .A2(n470), .ZN(n473) );
  NAND2_X1 U679 ( .A1(n473), .A2(n472), .ZN(n485) );
  OR2_X1 U680 ( .A1(n474), .A2(n485), .ZN(n475) );
  XNOR2_X1 U681 ( .A(n478), .B(n477), .ZN(n483) );
  NAND2_X1 U682 ( .A1(n483), .A2(n482), .ZN(n498) );
  XNOR2_X1 U683 ( .A(n490), .B(n488), .ZN(n479) );
  XNOR2_X1 U684 ( .A(n480), .B(n479), .ZN(n481) );
  NAND2_X1 U685 ( .A1(n481), .A2(n482), .ZN(n496) );
  OR2_X1 U686 ( .A1(n483), .A2(n482), .ZN(n484) );
  XNOR2_X1 U687 ( .A(n487), .B(n486), .ZN(n497) );
  NOR3_X1 U688 ( .A1(n85), .A2(n489), .A3(n488), .ZN(n501) );
  NOR2_X1 U689 ( .A1(n491), .A2(n490), .ZN(n499) );
  NAND3_X1 U690 ( .A1(n498), .A2(n497), .A3(n496), .ZN(n504) );
  HA_X1 U691 ( .A(n500), .B(n499), .S(n502) );
  XNOR2_X1 U692 ( .A(n502), .B(n501), .ZN(n503) );
  XNOR2_X1 U693 ( .A(Input_Data[10]), .B(Weight_Data[8]), .ZN(n506) );
  NAND2_X1 U694 ( .A1(n542), .A2(n509), .ZN(n524) );
  XNOR2_X1 U695 ( .A(Weight_Data[3]), .B(n590), .ZN(n526) );
  INV_X2 U696 ( .A(n526), .ZN(n564) );
  INV_X1 U697 ( .A(n513), .ZN(n516) );
  XNOR2_X1 U698 ( .A(n605), .B(n614), .ZN(n536) );
  XNOR2_X1 U699 ( .A(Weight_Data[5]), .B(Input_Data[7]), .ZN(n555) );
  XNOR2_X1 U700 ( .A(n550), .B(n555), .ZN(n519) );
  XNOR2_X1 U701 ( .A(n564), .B(n561), .ZN(n520) );
  XNOR2_X1 U702 ( .A(n84), .B(n520), .ZN(n521) );
  INV_X1 U703 ( .A(n521), .ZN(n522) );
  NAND2_X1 U704 ( .A1(n522), .A2(n559), .ZN(n523) );
  XNOR2_X1 U705 ( .A(n597), .B(Weight_Data[6]), .ZN(n572) );
  NAND2_X1 U706 ( .A1(n525), .A2(n524), .ZN(n565) );
  NAND2_X1 U707 ( .A1(n565), .A2(n526), .ZN(n527) );
  XNOR2_X1 U708 ( .A(Input_Data[10]), .B(Weight_Data[7]), .ZN(n584) );
  XNOR2_X1 U709 ( .A(n527), .B(n571), .ZN(n529) );
  INV_X1 U710 ( .A(n529), .ZN(n530) );
  NAND3_X1 U711 ( .A1(n531), .A2(n528), .A3(n530), .ZN(n532) );
  XNOR2_X1 U712 ( .A(n535), .B(n564), .ZN(n539) );
  NAND3_X1 U713 ( .A1(n552), .A2(n539), .A3(n537), .ZN(n538) );
  NAND2_X1 U714 ( .A1(n555), .A2(n561), .ZN(n544) );
  NOR2_X1 U715 ( .A1(n539), .A2(n544), .ZN(n545) );
  NAND2_X1 U716 ( .A1(n541), .A2(n540), .ZN(n543) );
  NAND2_X1 U717 ( .A1(n543), .A2(n542), .ZN(n558) );
  XNOR2_X1 U718 ( .A(n552), .B(n547), .ZN(n548) );
  XNOR2_X1 U719 ( .A(n574), .B(n576), .ZN(n554) );
  OR2_X1 U720 ( .A1(n257), .A2(n555), .ZN(n553) );
  XNOR2_X1 U721 ( .A(n562), .B(n556), .ZN(n573) );
  XNOR2_X1 U722 ( .A(n557), .B(n578), .ZN(n569) );
  XNOR2_X1 U723 ( .A(n560), .B(n559), .ZN(n575) );
  NOR2_X1 U724 ( .A1(n562), .A2(n561), .ZN(n563) );
  NAND2_X1 U725 ( .A1(n563), .A2(n552), .ZN(n579) );
  NOR2_X1 U726 ( .A1(n565), .A2(n564), .ZN(n577) );
  NAND4_X1 U727 ( .A1(n567), .A2(n576), .A3(n579), .A4(n566), .ZN(n568) );
  NAND3_X1 U728 ( .A1(n576), .A2(n575), .A3(n574), .ZN(n583) );
  HA_X1 U729 ( .A(n578), .B(n577), .S(n581) );
  XNOR2_X1 U730 ( .A(n581), .B(n580), .ZN(n582) );
  XNOR2_X1 U731 ( .A(Weight_Data[8]), .B(Input_Data[11]), .ZN(n585) );
  NOR2_X1 U732 ( .A1(n613), .A2(n603), .ZN(n586) );
  NAND2_X1 U733 ( .A1(go), .A2(n600), .ZN(n588) );
  NAND2_X1 U734 ( .A1(n588), .A2(FSM_Current_State[0]), .ZN(n589) );
  OAI211_X1 U735 ( .C1(FSM_Current_State[0]), .C2(FSM_Current_State[1]), .A(
        n589), .B(n596), .ZN(n78) );
  MUX2_X1 U736 ( .A(Input_Data[9]), .B(Read_Matrix_Data[9]), .S(n79), .Z(N126)
         );
  MUX2_X1 U737 ( .A(Weight_Data[7]), .B(Read_Weight_Data[7]), .S(n79), .Z(N140) );
  MUX2_X1 U738 ( .A(Input_Data[8]), .B(Read_Matrix_Data[8]), .S(n79), .Z(N125)
         );
  MUX2_X1 U739 ( .A(Weight_Data[6]), .B(Read_Weight_Data[6]), .S(n79), .Z(N139) );
  MUX2_X1 U740 ( .A(Input_Data[2]), .B(Read_Matrix_Data[2]), .S(n79), .Z(N119)
         );
  MUX2_X1 U741 ( .A(Weight_Data[2]), .B(Read_Weight_Data[2]), .S(n79), .Z(N135) );
  MUX2_X1 U742 ( .A(Input_Data[0]), .B(Read_Matrix_Data[0]), .S(n79), .Z(N117)
         );
  MUX2_X1 U743 ( .A(Weight_Data[0]), .B(Read_Weight_Data[0]), .S(n79), .Z(N133) );
  MUX2_X1 U744 ( .A(n446), .B(Read_Matrix_Data[1]), .S(n79), .Z(N118) );
  MUX2_X1 U745 ( .A(Weight_Data[1]), .B(Read_Weight_Data[1]), .S(n79), .Z(N134) );
  MUX2_X1 U746 ( .A(Input_Data[4]), .B(Read_Matrix_Data[4]), .S(n79), .Z(N121)
         );
  MUX2_X1 U747 ( .A(Weight_Data[3]), .B(Read_Weight_Data[3]), .S(n79), .Z(N136) );
  MUX2_X1 U748 ( .A(n590), .B(Read_Matrix_Data[5]), .S(n79), .Z(N122) );
  MUX2_X1 U749 ( .A(n614), .B(Read_Weight_Data[4]), .S(n79), .Z(N137) );
  MUX2_X1 U750 ( .A(Weight_Data[5]), .B(Read_Weight_Data[5]), .S(n79), .Z(N138) );
  MUX2_X1 U751 ( .A(Input_Data[10]), .B(Read_Matrix_Data[10]), .S(n79), .Z(
        N127) );
  MUX2_X1 U752 ( .A(Weight_Data[8]), .B(Read_Weight_Data[8]), .S(n79), .Z(N141) );
  MUX2_X1 U753 ( .A(Input_Data[3]), .B(Read_Matrix_Data[3]), .S(n79), .Z(N120)
         );
  MUX2_X1 U754 ( .A(Input_Data[7]), .B(Read_Matrix_Data[7]), .S(n79), .Z(N124)
         );
  MUX2_X1 U755 ( .A(Input_Data[11]), .B(Read_Matrix_Data[11]), .S(n79), .Z(
        N128) );
  MUX2_X1 U756 ( .A(Input_Data[13]), .B(Read_Matrix_Data[13]), .S(n79), .Z(
        N130) );
  MUX2_X1 U757 ( .A(Input_Data[12]), .B(Read_Matrix_Data[12]), .S(n79), .Z(
        N129) );
  MUX2_X1 U758 ( .A(Input_Data[14]), .B(Read_Matrix_Data[14]), .S(n79), .Z(
        N131) );
  MUX2_X1 U759 ( .A(Input_Data[15]), .B(Read_Matrix_Data[15]), .S(n79), .Z(
        N132) );
  XNOR2_X1 U760 ( .A(FSM_Current_State[2]), .B(FSM_Current_State[1]), .ZN(n591) );
endmodule

