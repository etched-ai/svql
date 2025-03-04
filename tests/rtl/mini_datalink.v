module DW_ecc_width4_chkbits5_synd_sel1(gen, correct_n, datain, chkin,
     err_detect, err_multpl, dataout, chkout);
  input gen, correct_n;
  input [3:0] datain;
  input [4:0] chkin;
  output err_detect, err_multpl;
  output [3:0] dataout;
  output [4:0] chkout;
  wire gen, correct_n;
  wire [3:0] datain;
  wire [4:0] chkin;
  wire err_detect, err_multpl;
  wire [3:0] dataout;
  wire [4:0] chkout;
endmodule

module syn_topk_sort_251111(clk, rst_n, valid_i, logits_i, index_i,
     flush_i, valid_o, logits_o, index_o, topk_logits_o, topk_index_o,
     start_i);
  input clk, rst_n, valid_i, flush_i, start_i;
  input [15:0] logits_i;
  input [31:0] index_i;
  output valid_o;
  output [15:0] logits_o, topk_logits_o;
  output [31:0] index_o, topk_index_o;
  wire clk, rst_n, valid_i, flush_i, start_i;
  wire [15:0] logits_i;
  wire [31:0] index_i;
  wire valid_o;
  wire [15:0] logits_o, topk_logits_o;
  wire [31:0] index_o, topk_index_o;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, n_105, n_106, n_107, n_108, n_109, n_110, n_111;
  wire n_112, n_113, n_114, n_115, n_116, n_117, n_118, n_119;
  wire n_120, n_121, n_122, n_123, n_124, n_125, n_126, n_127;
  wire n_128, n_129, n_130, n_131, n_132, n_133, n_134, n_135;
  wire n_136, n_137, n_138, n_139, n_140, n_141, n_142, n_143;
  wire n_144, n_145, n_146, n_147, n_148, n_149, n_150, n_151;
  wire n_152, n_153, n_154, n_155, n_156, n_157, n_158, n_159;
  wire n_160, n_161, n_162, n_163, n_164, n_165, n_166, n_167;
  wire n_168, n_169, n_170, n_171, n_172, n_173, n_174, n_175;
  wire n_176, n_177, n_178, n_179, n_180, n_181, n_182, n_183;
  wire n_184, n_185, n_186, n_187, n_188, n_189, n_190, n_191;
  wire n_192, n_193, n_194, n_195, n_196, n_197, n_198, n_199;
  wire n_200, n_201, n_202, n_203, n_204, n_205, n_206, n_207;
  wire n_208, n_209, n_210, n_211, n_212, n_213, n_214, n_215;
  wire n_216, n_217, n_218, n_219, n_220, n_221, n_222, n_225;
  HDN4BULT06_INV_1 g9880(.A (n_21), .X (n_3));
  HDN4BULT06_FDPQ_CAQD_2 valid_o_reg(.CK (clk), .D (n_3), .Q (valid_o));
  HDN4BULT06_ND2B_CB3Q_1 g9910(.A (n_225), .B (valid_i), .X (n_21));
  HDN4BULT06_OR3B_CAQ_1 g9911(.A (rst_n), .B1 (start_i), .B2 (flush_i),
       .X (n_225));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[0] (.CK (clk), .D (n_198), .Q
       (index_o[0]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[1] (.CK (clk), .D (n_201), .Q
       (index_o[1]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[2] (.CK (clk), .D (n_152), .Q
       (index_o[2]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[3] (.CK (clk), .D (n_203), .Q
       (index_o[3]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[4] (.CK (clk), .D (n_196), .Q
       (index_o[4]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[5] (.CK (clk), .D (n_148), .Q
       (index_o[5]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[6] (.CK (clk), .D (n_199), .Q
       (index_o[6]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[7] (.CK (clk), .D (n_147), .Q
       (index_o[7]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[8] (.CK (clk), .D (n_146), .Q
       (index_o[8]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[9] (.CK (clk), .D (n_181), .Q
       (index_o[9]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[10] (.CK (clk), .D (n_145), .Q
       (index_o[10]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[11] (.CK (clk), .D (n_170), .Q
       (index_o[11]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[12] (.CK (clk), .D (n_144), .Q
       (index_o[12]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[13] (.CK (clk), .D (n_166), .Q
       (index_o[13]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[14] (.CK (clk), .D (n_143), .Q
       (index_o[14]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[15] (.CK (clk), .D (n_165), .Q
       (index_o[15]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[16] (.CK (clk), .D (n_164), .Q
       (index_o[16]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[17] (.CK (clk), .D (n_163), .Q
       (index_o[17]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[18] (.CK (clk), .D (n_142), .Q
       (index_o[18]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[19] (.CK (clk), .D (n_141), .Q
       (index_o[19]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[20] (.CK (clk), .D (n_139), .Q
       (index_o[20]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[21] (.CK (clk), .D (n_140), .Q
       (index_o[21]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[22] (.CK (clk), .D (n_138), .Q
       (index_o[22]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[23] (.CK (clk), .D (n_137), .Q
       (index_o[23]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[24] (.CK (clk), .D (n_136), .Q
       (index_o[24]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[25] (.CK (clk), .D (n_135), .Q
       (index_o[25]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[26] (.CK (clk), .D (n_134), .Q
       (index_o[26]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[27] (.CK (clk), .D (n_133), .Q
       (index_o[27]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[28] (.CK (clk), .D (n_132), .Q
       (index_o[28]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[29] (.CK (clk), .D (n_131), .Q
       (index_o[29]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[30] (.CK (clk), .D (n_221), .Q
       (index_o[30]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[31] (.CK (clk), .D (n_130), .Q
       (index_o[31]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[0] (.CK (clk), .D (n_129), .Q
       (logits_o[0]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[1] (.CK (clk), .D (n_128), .Q
       (logits_o[1]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[2] (.CK (clk), .D (n_162), .Q
       (logits_o[2]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[3] (.CK (clk), .D (n_161), .Q
       (logits_o[3]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[4] (.CK (clk), .D (n_160), .Q
       (logits_o[4]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[5] (.CK (clk), .D (n_159), .Q
       (logits_o[5]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[6] (.CK (clk), .D (n_157), .Q
       (logits_o[6]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[7] (.CK (clk), .D (n_158), .Q
       (logits_o[7]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[8] (.CK (clk), .D (n_156), .Q
       (logits_o[8]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[9] (.CK (clk), .D (n_155), .Q
       (logits_o[9]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[10] (.CK (clk), .D (n_154), .Q
       (logits_o[10]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[11] (.CK (clk), .D (n_153), .Q
       (logits_o[11]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[12] (.CK (clk), .D (n_151), .Q
       (logits_o[12]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[13] (.CK (clk), .D (n_150), .Q
       (logits_o[13]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[14] (.CK (clk), .D (n_149), .Q
       (logits_o[14]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[15] (.CK (clk), .D (n_61), .Q
       (logits_o[15]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[0] (.CK (clk), .D (n_204),
       .Q (topk_index_o[0]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[1] (.CK (clk), .D (n_202),
       .Q (topk_index_o[1]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[2] (.CK (clk), .D (n_200),
       .Q (topk_index_o[2]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[3] (.CK (clk), .D (n_222),
       .Q (topk_index_o[3]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[4] (.CK (clk), .D (n_197),
       .Q (topk_index_o[4]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[5] (.CK (clk), .D (n_195),
       .Q (topk_index_o[5]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[6] (.CK (clk), .D (n_194),
       .Q (topk_index_o[6]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[7] (.CK (clk), .D (n_193),
       .Q (topk_index_o[7]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[8] (.CK (clk), .D (n_192),
       .Q (topk_index_o[8]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[9] (.CK (clk), .D (n_191),
       .Q (topk_index_o[9]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[10] (.CK (clk), .D (n_190),
       .Q (topk_index_o[10]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[11] (.CK (clk), .D (n_189),
       .Q (topk_index_o[11]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[12] (.CK (clk), .D (n_188),
       .Q (topk_index_o[12]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[13] (.CK (clk), .D (n_187),
       .Q (topk_index_o[13]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[14] (.CK (clk), .D (n_186),
       .Q (topk_index_o[14]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[15] (.CK (clk), .D (n_185),
       .Q (topk_index_o[15]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[16] (.CK (clk), .D (n_184),
       .Q (topk_index_o[16]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[17] (.CK (clk), .D (n_183),
       .Q (topk_index_o[17]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[18] (.CK (clk), .D (n_182),
       .Q (topk_index_o[18]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[19] (.CK (clk), .D (n_180),
       .Q (topk_index_o[19]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[20] (.CK (clk), .D (n_179),
       .Q (topk_index_o[20]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[21] (.CK (clk), .D (n_178),
       .Q (topk_index_o[21]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[22] (.CK (clk), .D (n_177),
       .Q (topk_index_o[22]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[23] (.CK (clk), .D (n_176),
       .Q (topk_index_o[23]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[24] (.CK (clk), .D (n_175),
       .Q (topk_index_o[24]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[25] (.CK (clk), .D (n_174),
       .Q (topk_index_o[25]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[26] (.CK (clk), .D (n_173),
       .Q (topk_index_o[26]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[27] (.CK (clk), .D (n_172),
       .Q (topk_index_o[27]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[28] (.CK (clk), .D (n_171),
       .Q (topk_index_o[28]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[29] (.CK (clk), .D (n_169),
       .Q (topk_index_o[29]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[30] (.CK (clk), .D (n_168),
       .Q (topk_index_o[30]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[31] (.CK (clk), .D (n_167),
       .Q (topk_index_o[31]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[0] (.CK (clk), .D (n_220),
       .Q (topk_logits_o[0]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[1] (.CK (clk), .D (n_219),
       .Q (topk_logits_o[1]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[2] (.CK (clk), .D (n_218),
       .Q (topk_logits_o[2]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[3] (.CK (clk), .D (n_217),
       .Q (topk_logits_o[3]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[4] (.CK (clk), .D (n_216),
       .Q (topk_logits_o[4]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[5] (.CK (clk), .D (n_215),
       .Q (topk_logits_o[5]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[6] (.CK (clk), .D (n_214),
       .Q (topk_logits_o[6]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[7] (.CK (clk), .D (n_213),
       .Q (topk_logits_o[7]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[8] (.CK (clk), .D (n_212),
       .Q (topk_logits_o[8]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[9] (.CK (clk), .D (n_211),
       .Q (topk_logits_o[9]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[10] (.CK (clk), .D (n_210),
       .Q (topk_logits_o[10]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[11] (.CK (clk), .D (n_209),
       .Q (topk_logits_o[11]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[12] (.CK (clk), .D (n_208),
       .Q (topk_logits_o[12]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[13] (.CK (clk), .D (n_207),
       .Q (topk_logits_o[13]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[14] (.CK (clk), .D (n_206),
       .Q (topk_logits_o[14]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[15] (.CK (clk), .D (n_205),
       .Q (topk_logits_o[15]));
  HDN4BULT06_AO22_1 g14237(.A1 (n_124), .A2 (topk_index_o[3]), .B1
       (n_2), .B2 (index_i[3]), .X (n_222));
  HDN4BULT06_OAI31_CA3Q_1 g14238(.A1 (n_85), .A2 (n_4), .A3 (n_20), .B
       (n_126), .X (n_221));
  HDN4BULT06_AO221_CAQV1_1 g14239(.A1 (n_85), .A2 (topk_logits_o[0]),
       .B1 (n_86), .B2 (logits_i[0]), .C (n_225), .X (n_220));
  HDN4BULT06_AO221_CAQV1_1 g14240(.A1 (n_85), .A2 (topk_logits_o[1]),
       .B1 (n_86), .B2 (logits_i[1]), .C (n_225), .X (n_219));
  HDN4BULT06_AO221_CAQV1_1 g14241(.A1 (n_85), .A2 (topk_logits_o[2]),
       .B1 (n_86), .B2 (logits_i[2]), .C (n_225), .X (n_218));
  HDN4BULT06_AO221_CAQV1_1 g14242(.A1 (n_85), .A2 (topk_logits_o[3]),
       .B1 (n_86), .B2 (logits_i[3]), .C (n_225), .X (n_217));
  HDN4BULT06_AO221_CAQV1_1 g14243(.A1 (n_85), .A2 (topk_logits_o[4]),
       .B1 (n_86), .B2 (logits_i[4]), .C (n_225), .X (n_216));
  HDN4BULT06_AO221_CAQV1_1 g14244(.A1 (n_85), .A2 (topk_logits_o[5]),
       .B1 (n_86), .B2 (logits_i[5]), .C (n_225), .X (n_215));
  HDN4BULT06_AO221_CAQV1_1 g14245(.A1 (n_85), .A2 (topk_logits_o[6]),
       .B1 (n_86), .B2 (logits_i[6]), .C (n_225), .X (n_214));
  HDN4BULT06_AO221_CAQV1_1 g14246(.A1 (n_85), .A2 (topk_logits_o[7]),
       .B1 (n_86), .B2 (logits_i[7]), .C (n_225), .X (n_213));
  HDN4BULT06_AO221_CAQV1_1 g14247(.A1 (n_85), .A2 (topk_logits_o[8]),
       .B1 (n_86), .B2 (logits_i[8]), .C (n_225), .X (n_212));
  HDN4BULT06_AO221_CAQV1_1 g14248(.A1 (n_85), .A2 (topk_logits_o[9]),
       .B1 (n_86), .B2 (logits_i[9]), .C (n_225), .X (n_211));
  HDN4BULT06_AO221_CAQV1_1 g14249(.A1 (n_85), .A2 (topk_logits_o[10]),
       .B1 (n_86), .B2 (logits_i[10]), .C (n_225), .X (n_210));
  HDN4BULT06_AO221_CAQV1_1 g14250(.A1 (n_85), .A2 (topk_logits_o[11]),
       .B1 (n_86), .B2 (logits_i[11]), .C (n_225), .X (n_209));
  HDN4BULT06_AO221_CAQV1_1 g14251(.A1 (n_85), .A2 (topk_logits_o[12]),
       .B1 (n_86), .B2 (logits_i[12]), .C (n_225), .X (n_208));
  HDN4BULT06_AO221_CAQV1_1 g14252(.A1 (n_85), .A2 (topk_logits_o[13]),
       .B1 (n_86), .B2 (logits_i[13]), .C (n_225), .X (n_207));
  HDN4BULT06_AO221_CAQV1_1 g14253(.A1 (n_85), .A2 (topk_logits_o[14]),
       .B1 (n_86), .B2 (logits_i[14]), .C (n_225), .X (n_206));
  HDN4BULT06_AO221_CAQV1_1 g14254(.A1 (n_85), .A2 (topk_logits_o[15]),
       .B1 (n_86), .B2 (logits_i[15]), .C (n_225), .X (n_205));
  HDN4BULT06_AO22_1 g14255(.A1 (n_124), .A2 (topk_index_o[0]), .B1
       (n_2), .B2 (index_i[0]), .X (n_204));
  HDN4BULT06_AO222_CBQ_1 g14256(.A1 (n_88), .A2 (topk_index_o[3]), .B1
       (n_87), .B2 (index_i[3]), .C1 (n_7), .C2 (index_o[3]), .X
       (n_203));
  HDN4BULT06_AO22_1 g14257(.A1 (n_124), .A2 (topk_index_o[1]), .B1
       (n_2), .B2 (index_i[1]), .X (n_202));
  HDN4BULT06_AO222_CBQ_1 g14258(.A1 (n_2), .A2 (topk_index_o[1]), .B1
       (n_87), .B2 (index_i[1]), .C1 (n_7), .C2 (index_o[1]), .X
       (n_201));
  HDN4BULT06_AO22_1 g14259(.A1 (n_124), .A2 (topk_index_o[2]), .B1
       (n_88), .B2 (index_i[2]), .X (n_200));
  HDN4BULT06_OAI31_CA3Q_1 g14260(.A1 (n_85), .A2 (n_4), .A3 (n_25), .B
       (n_127), .X (n_199));
  HDN4BULT06_AO222_CBQ_1 g14261(.A1 (n_2), .A2 (topk_index_o[0]), .B1
       (n_87), .B2 (index_i[0]), .C1 (n_7), .C2 (index_o[0]), .X
       (n_198));
  HDN4BULT06_AO22_1 g14262(.A1 (n_124), .A2 (topk_index_o[4]), .B1
       (n_88), .B2 (index_i[4]), .X (n_197));
  HDN4BULT06_AO222_CBQ_1 g14263(.A1 (n_88), .A2 (topk_index_o[4]), .B1
       (n_87), .B2 (index_i[4]), .C1 (n_7), .C2 (index_o[4]), .X
       (n_196));
  HDN4BULT06_AO22_1 g14264(.A1 (n_124), .A2 (topk_index_o[5]), .B1
       (n_88), .B2 (index_i[5]), .X (n_195));
  HDN4BULT06_AO22_1 g14265(.A1 (n_124), .A2 (topk_index_o[6]), .B1
       (n_2), .B2 (index_i[6]), .X (n_194));
  HDN4BULT06_AO22_1 g14266(.A1 (n_124), .A2 (topk_index_o[7]), .B1
       (n_88), .B2 (index_i[7]), .X (n_193));
  HDN4BULT06_AO22_1 g14267(.A1 (n_124), .A2 (topk_index_o[8]), .B1
       (n_2), .B2 (index_i[8]), .X (n_192));
  HDN4BULT06_AO22_1 g14268(.A1 (n_124), .A2 (topk_index_o[9]), .B1
       (n_88), .B2 (index_i[9]), .X (n_191));
  HDN4BULT06_AO22_1 g14269(.A1 (n_124), .A2 (topk_index_o[10]), .B1
       (n_88), .B2 (index_i[10]), .X (n_190));
  HDN4BULT06_AO22_1 g14270(.A1 (n_124), .A2 (topk_index_o[11]), .B1
       (n_88), .B2 (index_i[11]), .X (n_189));
  HDN4BULT06_AO22_1 g14271(.A1 (n_124), .A2 (topk_index_o[12]), .B1
       (n_2), .B2 (index_i[12]), .X (n_188));
  HDN4BULT06_AO22_1 g14272(.A1 (n_124), .A2 (topk_index_o[13]), .B1
       (n_2), .B2 (index_i[13]), .X (n_187));
  HDN4BULT06_AO22_1 g14273(.A1 (n_124), .A2 (topk_index_o[14]), .B1
       (n_2), .B2 (index_i[14]), .X (n_186));
  HDN4BULT06_AO22_1 g14274(.A1 (n_124), .A2 (topk_index_o[15]), .B1
       (n_88), .B2 (index_i[15]), .X (n_185));
  HDN4BULT06_AO22_1 g14275(.A1 (n_124), .A2 (topk_index_o[16]), .B1
       (n_88), .B2 (index_i[16]), .X (n_184));
  HDN4BULT06_AO22_1 g14276(.A1 (n_124), .A2 (topk_index_o[17]), .B1
       (n_2), .B2 (index_i[17]), .X (n_183));
  HDN4BULT06_AO22_1 g14277(.A1 (n_124), .A2 (topk_index_o[18]), .B1
       (n_2), .B2 (index_i[18]), .X (n_182));
  HDN4BULT06_AO222_CBQ_1 g14278(.A1 (n_88), .A2 (topk_index_o[9]), .B1
       (n_87), .B2 (index_i[9]), .C1 (n_7), .C2 (index_o[9]), .X
       (n_181));
  HDN4BULT06_AO22_1 g14279(.A1 (n_124), .A2 (topk_index_o[19]), .B1
       (n_88), .B2 (index_i[19]), .X (n_180));
  HDN4BULT06_AO22_1 g14280(.A1 (n_124), .A2 (topk_index_o[20]), .B1
       (n_2), .B2 (index_i[20]), .X (n_179));
  HDN4BULT06_AO22_1 g14281(.A1 (n_124), .A2 (topk_index_o[21]), .B1
       (n_88), .B2 (index_i[21]), .X (n_178));
  HDN4BULT06_AO22_1 g14282(.A1 (n_124), .A2 (topk_index_o[22]), .B1
       (n_88), .B2 (index_i[22]), .X (n_177));
  HDN4BULT06_AO22_1 g14283(.A1 (n_124), .A2 (topk_index_o[23]), .B1
       (n_2), .B2 (index_i[23]), .X (n_176));
  HDN4BULT06_AO22_1 g14284(.A1 (n_124), .A2 (topk_index_o[24]), .B1
       (n_88), .B2 (index_i[24]), .X (n_175));
  HDN4BULT06_AO22_1 g14285(.A1 (n_124), .A2 (topk_index_o[25]), .B1
       (n_88), .B2 (index_i[25]), .X (n_174));
  HDN4BULT06_AO22_1 g14286(.A1 (n_124), .A2 (topk_index_o[26]), .B1
       (n_2), .B2 (index_i[26]), .X (n_173));
  HDN4BULT06_AO22_1 g14287(.A1 (n_124), .A2 (topk_index_o[27]), .B1
       (n_2), .B2 (index_i[27]), .X (n_172));
  HDN4BULT06_AO22_1 g14288(.A1 (n_124), .A2 (topk_index_o[28]), .B1
       (n_88), .B2 (index_i[28]), .X (n_171));
  HDN4BULT06_AO222_CBQ_1 g14289(.A1 (n_88), .A2 (topk_index_o[11]), .B1
       (n_87), .B2 (index_i[11]), .C1 (n_7), .C2 (index_o[11]), .X
       (n_170));
  HDN4BULT06_AO22_1 g14290(.A1 (n_124), .A2 (topk_index_o[29]), .B1
       (n_2), .B2 (index_i[29]), .X (n_169));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14291(.A1 (n_125), .A2 (n_20), .B1 (n_2),
       .B2 (index_i[30]), .X (n_168));
  HDN4BULT06_AO22_1 g14292(.A1 (n_124), .A2 (topk_index_o[31]), .B1
       (n_88), .B2 (index_i[31]), .X (n_167));
  HDN4BULT06_AO222_CBQ_1 g14293(.A1 (n_88), .A2 (topk_index_o[13]), .B1
       (n_87), .B2 (index_i[13]), .C1 (n_7), .C2 (index_o[13]), .X
       (n_166));
  HDN4BULT06_AO222_CBQ_1 g14294(.A1 (n_2), .A2 (topk_index_o[15]), .B1
       (n_87), .B2 (index_i[15]), .C1 (n_7), .C2 (index_o[15]), .X
       (n_165));
  HDN4BULT06_AO222_CBQ_1 g14295(.A1 (n_88), .A2 (topk_index_o[16]), .B1
       (n_87), .B2 (index_i[16]), .C1 (n_7), .C2 (index_o[16]), .X
       (n_164));
  HDN4BULT06_AO222_CBQ_1 g14296(.A1 (n_2), .A2 (topk_index_o[17]), .B1
       (n_87), .B2 (index_i[17]), .C1 (n_7), .C2 (index_o[17]), .X
       (n_163));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14297(.A1 (n_122), .A2 (n_21), .B1 (n_5),
       .B2 (logits_o[2]), .X (n_162));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14298(.A1 (n_121), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[3]), .X (n_161));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14299(.A1 (n_120), .A2 (n_21), .B1 (n_5),
       .B2 (logits_o[4]), .X (n_160));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14300(.A1 (n_119), .A2 (n_21), .B1 (n_5),
       .B2 (logits_o[5]), .X (n_159));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14301(.A1 (n_89), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[7]), .X (n_158));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14302(.A1 (n_90), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[6]), .X (n_157));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14303(.A1 (n_118), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[8]), .X (n_156));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14304(.A1 (n_117), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[9]), .X (n_155));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14305(.A1 (n_116), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[10]), .X (n_154));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14306(.A1 (n_115), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[11]), .X (n_153));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14307(.A1 (n_111), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[2]), .X (n_152));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14308(.A1 (n_123), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[12]), .X (n_151));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14309(.A1 (n_113), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[13]), .X (n_150));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14310(.A1 (n_112), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[14]), .X (n_149));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14311(.A1 (n_110), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[5]), .X (n_148));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14312(.A1 (n_108), .A2 (n_4), .B1 (n_7),
       .B2 (index_o[7]), .X (n_147));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14313(.A1 (n_107), .A2 (n_4), .B1 (n_7),
       .B2 (index_o[8]), .X (n_146));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14314(.A1 (n_114), .A2 (n_21), .B1 (n_7),
       .B2 (index_o[10]), .X (n_145));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14315(.A1 (n_97), .A2 (n_21), .B1 (n_7),
       .B2 (index_o[12]), .X (n_144));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14316(.A1 (n_105), .A2 (n_21), .B1 (n_5),
       .B2 (index_o[14]), .X (n_143));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14317(.A1 (n_109), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[18]), .X (n_142));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14318(.A1 (n_104), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[19]), .X (n_141));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14319(.A1 (n_102), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[21]), .X (n_140));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14320(.A1 (n_103), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[20]), .X (n_139));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14321(.A1 (n_101), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[22]), .X (n_138));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14322(.A1 (n_100), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[23]), .X (n_137));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14323(.A1 (n_99), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[24]), .X (n_136));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14324(.A1 (n_98), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[25]), .X (n_135));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14325(.A1 (n_106), .A2 (n_21), .B1 (n_5),
       .B2 (index_o[26]), .X (n_134));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14326(.A1 (n_96), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[27]), .X (n_133));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14327(.A1 (n_95), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[28]), .X (n_132));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14328(.A1 (n_94), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[29]), .X (n_131));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14329(.A1 (n_93), .A2 (n_21), .B1 (n_5),
       .B2 (index_o[31]), .X (n_130));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14330(.A1 (n_92), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[0]), .X (n_129));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14331(.A1 (n_91), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[1]), .X (n_128));
  HDN4BULT06_AOI22_CA3Q_1 g14332(.A1 (n_87), .A2 (index_i[6]), .B1
       (n_7), .B2 (index_o[6]), .X (n_127));
  HDN4BULT06_AOI22_CA3Q_1 g14333(.A1 (n_87), .A2 (index_i[30]), .B1
       (n_7), .B2 (index_o[30]), .X (n_126));
  HDN4BULT06_INV_S_1 g14334(.A (n_124), .X (n_125));
  HDN4BULT06_AOI22_CA3Q_1 g14335(.A1 (n_11), .A2 (topk_logits_o[12]),
       .B1 (n_10), .B2 (logits_i[12]), .X (n_123));
  HDN4BULT06_AOI22_CA3Q_1 g14336(.A1 (n_11), .A2 (topk_logits_o[2]),
       .B1 (n_10), .B2 (logits_i[2]), .X (n_122));
  HDN4BULT06_AOI22_CA3Q_1 g14337(.A1 (n_8), .A2 (topk_logits_o[3]), .B1
       (n_10), .B2 (logits_i[3]), .X (n_121));
  HDN4BULT06_AOI22_CA3Q_1 g14338(.A1 (n_8), .A2 (topk_logits_o[4]), .B1
       (n_10), .B2 (logits_i[4]), .X (n_120));
  HDN4BULT06_AOI22_CA3Q_1 g14339(.A1 (n_8), .A2 (topk_logits_o[5]), .B1
       (n_10), .B2 (logits_i[5]), .X (n_119));
  HDN4BULT06_AOI22_CA3Q_1 g14340(.A1 (n_8), .A2 (topk_logits_o[8]), .B1
       (n_10), .B2 (logits_i[8]), .X (n_118));
  HDN4BULT06_AOI22_CA3Q_1 g14341(.A1 (n_8), .A2 (topk_logits_o[9]), .B1
       (n_9), .B2 (logits_i[9]), .X (n_117));
  HDN4BULT06_AOI22_CA3Q_1 g14342(.A1 (n_8), .A2 (topk_logits_o[10]),
       .B1 (n_9), .B2 (logits_i[10]), .X (n_116));
  HDN4BULT06_AOI22_CA3Q_1 g14343(.A1 (n_8), .A2 (topk_logits_o[11]),
       .B1 (n_9), .B2 (logits_i[11]), .X (n_115));
  HDN4BULT06_AOI22_CA3Q_1 g14344(.A1 (n_8), .A2 (topk_index_o[10]), .B1
       (n_9), .B2 (index_i[10]), .X (n_114));
  HDN4BULT06_AOI22_CA3Q_1 g14345(.A1 (n_11), .A2 (topk_logits_o[13]),
       .B1 (n_10), .B2 (logits_i[13]), .X (n_113));
  HDN4BULT06_AOI22_CA3Q_1 g14346(.A1 (n_8), .A2 (topk_logits_o[14]),
       .B1 (n_10), .B2 (logits_i[14]), .X (n_112));
  HDN4BULT06_AOI22_CA3Q_1 g14347(.A1 (n_11), .A2 (topk_index_o[2]), .B1
       (n_9), .B2 (index_i[2]), .X (n_111));
  HDN4BULT06_AOI22_CA3Q_1 g14348(.A1 (n_11), .A2 (topk_index_o[5]), .B1
       (n_9), .B2 (index_i[5]), .X (n_110));
  HDN4BULT06_AOI22_CA3Q_1 g14349(.A1 (n_8), .A2 (topk_index_o[18]), .B1
       (n_10), .B2 (index_i[18]), .X (n_109));
  HDN4BULT06_AOI22_CA3Q_1 g14350(.A1 (n_8), .A2 (topk_index_o[7]), .B1
       (n_10), .B2 (index_i[7]), .X (n_108));
  HDN4BULT06_AOI22_CA3Q_1 g14351(.A1 (n_8), .A2 (topk_index_o[8]), .B1
       (n_10), .B2 (index_i[8]), .X (n_107));
  HDN4BULT06_OR2_1 g14352(.A1 (n_87), .A2 (n_7), .X (n_124));
  HDN4BULT06_AOI22_CA3Q_1 g14353(.A1 (n_8), .A2 (topk_index_o[26]), .B1
       (n_10), .B2 (index_i[26]), .X (n_106));
  HDN4BULT06_AOI22_CA3Q_1 g14354(.A1 (n_11), .A2 (topk_index_o[14]),
       .B1 (n_10), .B2 (index_i[14]), .X (n_105));
  HDN4BULT06_AOI22_CA3Q_1 g14355(.A1 (n_11), .A2 (topk_index_o[19]),
       .B1 (n_10), .B2 (index_i[19]), .X (n_104));
  HDN4BULT06_AOI22_CA3Q_1 g14356(.A1 (n_11), .A2 (topk_index_o[20]),
       .B1 (n_9), .B2 (index_i[20]), .X (n_103));
  HDN4BULT06_AOI22_CA3Q_1 g14357(.A1 (n_11), .A2 (topk_index_o[21]),
       .B1 (n_10), .B2 (index_i[21]), .X (n_102));
  HDN4BULT06_AOI22_CA3Q_1 g14358(.A1 (n_11), .A2 (topk_index_o[22]),
       .B1 (n_9), .B2 (index_i[22]), .X (n_101));
  HDN4BULT06_AOI22_CA3Q_1 g14359(.A1 (n_11), .A2 (topk_index_o[23]),
       .B1 (n_9), .B2 (index_i[23]), .X (n_100));
  HDN4BULT06_AOI22_CA3Q_1 g14360(.A1 (n_11), .A2 (topk_index_o[24]),
       .B1 (n_9), .B2 (index_i[24]), .X (n_99));
  HDN4BULT06_AOI22_CA3Q_1 g14361(.A1 (n_11), .A2 (topk_index_o[25]),
       .B1 (n_10), .B2 (index_i[25]), .X (n_98));
  HDN4BULT06_AOI22_CA3Q_1 g14362(.A1 (n_11), .A2 (topk_index_o[12]),
       .B1 (n_10), .B2 (index_i[12]), .X (n_97));
  HDN4BULT06_AOI22_CA3Q_1 g14363(.A1 (n_11), .A2 (topk_index_o[27]),
       .B1 (n_10), .B2 (index_i[27]), .X (n_96));
  HDN4BULT06_AOI22_CA3Q_1 g14364(.A1 (n_11), .A2 (topk_index_o[28]),
       .B1 (n_10), .B2 (index_i[28]), .X (n_95));
  HDN4BULT06_AOI22_CA3Q_1 g14365(.A1 (n_8), .A2 (topk_index_o[29]), .B1
       (n_10), .B2 (index_i[29]), .X (n_94));
  HDN4BULT06_AOI22_CA3Q_1 g14366(.A1 (n_8), .A2 (topk_index_o[31]), .B1
       (n_9), .B2 (index_i[31]), .X (n_93));
  HDN4BULT06_AOI22_CA3Q_1 g14367(.A1 (n_11), .A2 (topk_logits_o[0]),
       .B1 (n_10), .B2 (logits_i[0]), .X (n_92));
  HDN4BULT06_AOI22_CA3Q_1 g14368(.A1 (n_11), .A2 (topk_logits_o[1]),
       .B1 (n_10), .B2 (logits_i[1]), .X (n_91));
  HDN4BULT06_AOI22_CA3Q_1 g14369(.A1 (n_8), .A2 (topk_logits_o[6]), .B1
       (n_10), .B2 (logits_i[6]), .X (n_90));
  HDN4BULT06_AOI22_CA3Q_1 g14370(.A1 (n_8), .A2 (topk_logits_o[7]), .B1
       (n_10), .B2 (logits_i[7]), .X (n_89));
  HDN4BLVT06_AN2_1 g14371(.A1 (n_11), .A2 (n_3), .X (n_88));
  HDN4BULT06_INV_1 g14372(.A (n_86), .X (n_85));
  HDN4BULT06_AN2_1 g14373(.A1 (n_10), .A2 (n_3), .X (n_87));
  HDN4BULT06_NR2_1 g14374(.A1 (n_7), .A2 (n_10), .X (n_86));
  HDN4BLVT06_INV_1 g14402(.A (n_9), .X (n_8));
  HDN4BLVT06_INV_1 g14403(.A (n_11), .X (n_9));
  HDN4BLVT06_INV_1 g14406(.A (n_11), .X (n_10));
  HDN4BULT06_AOAOI2111_1 g14407(.A1 (n_83), .A2 (n_77), .B (n_79), .C
       (logits_i[15]), .D (n_84), .X (n_11));
  HDN4BULT06_NR2_1 g14408(.A1 (n_83), .A2 (topk_logits_o[15]), .X
       (n_84));
  HDN4BULT06_OAI2111_CAQ_1 g14409(.A1 (n_62), .A2 (n_51), .B1 (n_82),
       .B2 (n_72), .B3 (n_73), .X (n_83));
  HDN4BULT06_OAI2111_CAQ_1 g14410(.A1 (logits_i[8]), .A2 (n_13), .B1
       (n_81), .B2 (n_68), .B3 (n_44), .X (n_82));
  HDN4BULT06_OAI2111_CAQ_1 g14411(.A1 (n_40), .A2 (topk_logits_o[6]),
       .B1 (n_80), .B2 (n_69), .B3 (n_63), .X (n_81));
  HDN4BULT06_OAI2111_CAQ_1 g14412(.A1 (logits_i[4]), .A2 (n_19), .B1
       (n_78), .B2 (n_50), .B3 (n_39), .X (n_80));
  HDN4BULT06_OAI31_CA3Q_1 g14413(.A1 (n_76), .A2 (n_64), .A3 (n_67), .B
       (topk_logits_o[15]), .X (n_79));
  HDN4BULT06_AOAI211_CBQ_1 g14414(.A1 (n_23), .A2 (topk_logits_o[3]),
       .B (n_75), .C (n_31), .X (n_78));
  HDN4BULT06_ND4_MM_1 g14415(.A1 (n_70), .A2 (n_66), .A3 (n_31), .A4
       (n_34), .X (n_77));
  HDN4BULT06_ND3_1 g14416(.A1 (n_74), .A2 (n_46), .A3 (n_47), .X
       (n_76));
  HDN4BULT06_OAOI211_CAQV2_1 g14417(.A1 (logits_i[2]), .A2 (n_16), .B
       (n_65), .C (n_32), .X (n_75));
  HDN4BULT06_NR4_1 g14418(.A1 (n_71), .A2 (n_56), .A3 (n_40), .A4
       (n_26), .X (n_74));
  HDN4BULT06_OAOI211_CAQV2_1 g14419(.A1 (n_58), .A2 (n_28), .B (n_42),
       .C (n_29), .X (n_73));
  HDN4BULT06_AOAI211_CBQ_1 g14420(.A1 (n_43), .A2 (n_44), .B (n_41), .C
       (n_68), .X (n_72));
  HDN4BULT06_OR4B_CAQ_1 g14421(.A (logits_i[8]), .B1 (n_59), .B2
       (n_57), .B3 (n_23), .X (n_71));
  HDN4BULT06_NR4B_CAQ_1 g14422(.A (n_51), .B1 (n_60), .B2 (n_43), .B3
       (n_41), .X (n_70));
  HDN4BULT06_AOAI211_CBQ_1 g14423(.A1 (n_39), .A2 (n_35), .B (n_27), .C
       (n_50), .X (n_69));
  HDN4BULT06_ND4_1 g14425(.A1 (n_53), .A2 (n_52), .A3 (n_54), .A4
       (n_45), .X (n_67));
  HDN4BULT06_NR4_1 g14426(.A1 (n_29), .A2 (n_28), .A3 (n_32), .A4
       (n_0), .X (n_66));
  HDN4BULT06_MAJI3_1 g14427(.A1 (n_14), .A2 (topk_logits_o[1]), .A3
       (n_36), .X (n_65));
  HDN4BULT06_AOI2B1_CAQ_1 g14428(.A (logits_i[10]), .B
       (topk_logits_o[10]), .C (n_62), .X (n_68));
  HDN4BULT06_ND2_1 g14429(.A1 (n_48), .A2 (n_49), .X (n_64));
  HDN4BULT06_OAI21_CB3QV1_1 g14430(.A1 (n_30), .A2 (logits_i[7]), .B
       (n_12), .X (n_63));
  HDN4BULT06_AO2BB2_CA3QV1_1 g14431(.A1 (n_4), .A2 (n_37), .B1 (n_5),
       .B2 (logits_o[15]), .X (n_61));
  HDN4BULT06_AO211_V1_1 g14432(.A1 (logits_i[7]), .A2 (n_12), .B1
       (n_30), .B2 (n_55), .X (n_60));
  HDN4BULT06_OAI2111_CAQ_1 g14433(.A1 (logits_i[12]), .A2 (n_18), .B1
       (n_42), .B2 (n_33), .B3 (n_38), .X (n_62));
  HDN4BULT06_ND3_1 g14434(.A1 (logits_i[9]), .A2 (logits_i[4]), .A3
       (logits_i[5]), .X (n_59));
  HDN4BULT06_NR2B_CA3Q_1 g14435(.A (n_33), .B (n_34), .X (n_58));
  HDN4BULT06_ND3_MM_1 g14436(.A1 (logits_i[2]), .A2 (logits_i[1]), .A3
       (logits_i[0]), .X (n_57));
  HDN4BULT06_ND3_1 g14437(.A1 (logits_i[10]), .A2 (logits_i[12]), .A3
       (logits_i[11]), .X (n_56));
  HDN4BULT06_OR2_1 g14438(.A1 (n_35), .A2 (n_27), .X (n_55));
  HDN4BULT06_NR4_1 g14439(.A1 (index_i[19]), .A2 (index_i[18]), .A3
       (index_i[17]), .A4 (index_i[16]), .X (n_54));
  HDN4BULT06_NR4_1 g14440(.A1 (index_i[23]), .A2 (index_i[22]), .A3
       (index_i[21]), .A4 (index_i[20]), .X (n_53));
  HDN4BULT06_NR4_1 g14441(.A1 (index_i[15]), .A2 (index_i[14]), .A3
       (index_i[13]), .A4 (index_i[12]), .X (n_52));
  HDN4BULT06_NR4_1 g14442(.A1 (index_i[3]), .A2 (index_i[2]), .A3
       (index_i[1]), .A4 (index_i[0]), .X (n_49));
  HDN4BULT06_NR4_1 g14443(.A1 (index_i[7]), .A2 (index_i[6]), .A3
       (index_i[5]), .A4 (index_i[4]), .X (n_48));
  HDN4BULT06_NR4_1 g14444(.A1 (index_i[31]), .A2 (index_i[30]), .A3
       (index_i[29]), .A4 (index_i[28]), .X (n_47));
  HDN4BULT06_NR4_1 g14445(.A1 (index_i[27]), .A2 (index_i[26]), .A3
       (index_i[25]), .A4 (index_i[24]), .X (n_46));
  HDN4BULT06_NR4_1 g14446(.A1 (index_i[11]), .A2 (index_i[10]), .A3
       (index_i[9]), .A4 (index_i[8]), .X (n_45));
  HDN4BULT06_AOI22_CAQ_1 g14448(.A1 (logits_i[11]), .A2 (n_24), .B1
       (logits_i[10]), .B2 (n_17), .X (n_51));
  HDN4BULT06_AOI22_CBQ_1 g14449(.A1 (n_15), .A2 (topk_logits_o[6]), .B1
       (n_22), .B2 (topk_logits_o[7]), .X (n_50));
  HDN4BULT06_INV_S_1 g14467(.A (n_6), .X (n_5));
  HDN4BULT06_INV_S_1 g14468(.A (n_7), .X (n_6));
  HDN4BULT06_ND2B_CBQ_1 g14470(.A (logits_i[11]), .B
       (topk_logits_o[11]), .X (n_38));
  HDN4BULT06_NR2_1 g14471(.A1 (logits_i[15]), .A2 (topk_logits_o[15]),
       .X (n_37));
  HDN4BULT06_NR2B_CA3Q_1 g14472(.A (topk_logits_o[0]), .B
       (logits_i[0]), .X (n_36));
  HDN4BULT06_ND2B_CA3Q_1 g14473(.A (logits_i[9]), .B
       (topk_logits_o[9]), .X (n_44));
  HDN4BULT06_NR2B_CA3Q_1 g14474(.A (logits_i[8]), .B
       (topk_logits_o[8]), .X (n_43));
  HDN4BULT06_ND2B_CB3Q_1 g14475(.A (logits_i[14]), .B
       (topk_logits_o[14]), .X (n_42));
  HDN4BULT06_NR2B_CA3Q_1 g14476(.A (logits_i[9]), .B
       (topk_logits_o[9]), .X (n_41));
  HDN4BULT06_ND2_MM_1 g14477(.A1 (logits_i[7]), .A2 (logits_i[6]), .X
       (n_40));
  HDN4BULT06_ND2B_CA3Q_1 g14478(.A (logits_i[5]), .B
       (topk_logits_o[5]), .X (n_39));
  HDN4BULT06_NR2_1 g14479(.A1 (n_225), .A2 (valid_i), .X (n_7));
  HDN4BULT06_ND2_MM_1 g14480(.A1 (logits_i[13]), .A2 (logits_i[14]), .X
       (n_26));
  HDN4BULT06_NR2B_CA3Q_1 g14481(.A (logits_i[4]), .B
       (topk_logits_o[4]), .X (n_35));
  HDN4BULT06_ND2_MM_1 g14482(.A1 (logits_i[12]), .A2 (n_18), .X (n_34));
  HDN4BULT06_ND2B_CB3Q_1 g14483(.A (logits_i[13]), .B
       (topk_logits_o[13]), .X (n_33));
  HDN4BULT06_NR2B_CA3Q_1 g14484(.A (logits_i[2]), .B
       (topk_logits_o[2]), .X (n_32));
  HDN4BULT06_ND2B_CB3Q_1 g14485(.A (topk_logits_o[3]), .B
       (logits_i[3]), .X (n_31));
  HDN4BULT06_NR2_1 g14486(.A1 (n_15), .A2 (topk_logits_o[6]), .X
       (n_30));
  HDN4BULT06_NR2B_CA3Q_1 g14487(.A (logits_i[14]), .B
       (topk_logits_o[14]), .X (n_29));
  HDN4BULT06_NR2B_CA3Q_1 g14488(.A (logits_i[13]), .B
       (topk_logits_o[13]), .X (n_28));
  HDN4BULT06_NR2B_CA3Q_1 g14489(.A (logits_i[5]), .B
       (topk_logits_o[5]), .X (n_27));
  HDN4BULT06_INV_S_1 g14491(.A (topk_index_o[6]), .X (n_25));
  HDN4BULT06_INV_S_1 g14494(.A (topk_logits_o[11]), .X (n_24));
  HDN4BULT06_INV_S_1 g14496(.A (logits_i[3]), .X (n_23));
  HDN4BULT06_INV_S_1 g14497(.A (logits_i[7]), .X (n_22));
  HDN4BULT06_INV_S_1 g14510(.A (n_3), .X (n_4));
  HDN4BULT06_INV_S_1 g14512(.A (topk_index_o[30]), .X (n_20));
  HDN4BULT06_INV_S_1 g14514(.A (topk_logits_o[4]), .X (n_19));
  HDN4BULT06_INV_S_1 g14516(.A (topk_logits_o[12]), .X (n_18));
  HDN4BULT06_INV_S_1 g14519(.A (topk_logits_o[10]), .X (n_17));
  HDN4BLVT06_INV_1 g14521(.A (topk_logits_o[2]), .X (n_16));
  HDN4BULT06_INV_S_1 g14523(.A (logits_i[6]), .X (n_15));
  HDN4BLVT06_INV_1 g14524(.A (logits_i[1]), .X (n_14));
  HDN4BULT06_INV_S_1 g14526(.A (topk_logits_o[8]), .X (n_13));
  HDN4BULT06_INV_S_1 g14528(.A (topk_logits_o[7]), .X (n_12));
  HDN4BLVT06_INV_1 drc_bufs14539(.A (n_1), .X (n_2));
  HDN4BLVT06_INV_1 drc_bufs14541(.A (n_88), .X (n_1));
  HDN4BULT06_OAI2B2_CAQ_1 g2(.A (logits_i[0]), .B (topk_logits_o[0]),
       .C1 (n_14), .C2 (topk_logits_o[1]), .X (n_0));
endmodule

module syn_topk_sort_251112(clk, rst_n, valid_i, logits_i, index_i,
     flush_i, valid_o, logits_o, index_o, topk_logits_o, topk_index_o,
     start_i);
  input clk, rst_n, valid_i, flush_i, start_i;
  input [15:0] logits_i;
  input [31:0] index_i;
  output valid_o;
  output [15:0] logits_o, topk_logits_o;
  output [31:0] index_o, topk_index_o;
  wire clk, rst_n, valid_i, flush_i, start_i;
  wire [15:0] logits_i;
  wire [31:0] index_i;
  wire valid_o;
  wire [15:0] logits_o, topk_logits_o;
  wire [31:0] index_o, topk_index_o;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, n_105, n_106, n_107, n_108, n_109, n_110, n_111;
  wire n_112, n_113, n_114, n_115, n_116, n_117, n_118, n_119;
  wire n_120, n_121, n_122, n_123, n_124, n_125, n_126, n_127;
  wire n_128, n_129, n_130, n_131, n_132, n_133, n_134, n_135;
  wire n_136, n_137, n_138, n_139, n_140, n_141, n_142, n_143;
  wire n_144, n_145, n_146, n_147, n_148, n_149, n_150, n_151;
  wire n_152, n_153, n_154, n_155, n_156, n_157, n_158, n_159;
  wire n_160, n_161, n_162, n_163, n_164, n_165, n_166, n_167;
  wire n_168, n_169, n_170, n_171, n_172, n_173, n_174, n_175;
  wire n_176, n_177, n_178, n_179, n_180, n_181, n_182, n_183;
  wire n_184, n_185, n_186, n_187, n_188, n_189, n_190, n_191;
  wire n_192, n_193, n_194, n_195, n_196, n_197, n_198, n_199;
  wire n_200, n_201, n_202, n_203, n_204, n_205, n_206, n_207;
  wire n_208, n_209, n_210, n_211, n_212, n_213, n_214, n_215;
  wire n_216, n_217, n_218, n_219, n_220, n_221, n_222, n_225;
  HDN4BULT06_INV_1 g9880(.A (n_21), .X (n_3));
  HDN4BULT06_FDPQ_CAQD_2 valid_o_reg(.CK (clk), .D (n_3), .Q (valid_o));
  HDN4BULT06_ND2B_CB3Q_1 g9910(.A (n_225), .B (valid_i), .X (n_21));
  HDN4BULT06_OR3B_CAQ_1 g9911(.A (rst_n), .B1 (start_i), .B2 (flush_i),
       .X (n_225));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[0] (.CK (clk), .D (n_198), .Q
       (index_o[0]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[1] (.CK (clk), .D (n_201), .Q
       (index_o[1]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[2] (.CK (clk), .D (n_152), .Q
       (index_o[2]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[3] (.CK (clk), .D (n_203), .Q
       (index_o[3]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[4] (.CK (clk), .D (n_196), .Q
       (index_o[4]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[5] (.CK (clk), .D (n_148), .Q
       (index_o[5]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[6] (.CK (clk), .D (n_199), .Q
       (index_o[6]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[7] (.CK (clk), .D (n_147), .Q
       (index_o[7]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[8] (.CK (clk), .D (n_146), .Q
       (index_o[8]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[9] (.CK (clk), .D (n_181), .Q
       (index_o[9]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[10] (.CK (clk), .D (n_145), .Q
       (index_o[10]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[11] (.CK (clk), .D (n_170), .Q
       (index_o[11]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[12] (.CK (clk), .D (n_144), .Q
       (index_o[12]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[13] (.CK (clk), .D (n_166), .Q
       (index_o[13]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[14] (.CK (clk), .D (n_143), .Q
       (index_o[14]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[15] (.CK (clk), .D (n_165), .Q
       (index_o[15]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[16] (.CK (clk), .D (n_164), .Q
       (index_o[16]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[17] (.CK (clk), .D (n_163), .Q
       (index_o[17]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[18] (.CK (clk), .D (n_142), .Q
       (index_o[18]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[19] (.CK (clk), .D (n_141), .Q
       (index_o[19]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[20] (.CK (clk), .D (n_139), .Q
       (index_o[20]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[21] (.CK (clk), .D (n_140), .Q
       (index_o[21]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[22] (.CK (clk), .D (n_138), .Q
       (index_o[22]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[23] (.CK (clk), .D (n_137), .Q
       (index_o[23]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[24] (.CK (clk), .D (n_136), .Q
       (index_o[24]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[25] (.CK (clk), .D (n_135), .Q
       (index_o[25]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[26] (.CK (clk), .D (n_134), .Q
       (index_o[26]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[27] (.CK (clk), .D (n_133), .Q
       (index_o[27]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[28] (.CK (clk), .D (n_132), .Q
       (index_o[28]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[29] (.CK (clk), .D (n_131), .Q
       (index_o[29]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[30] (.CK (clk), .D (n_221), .Q
       (index_o[30]));
  HDN4BULT06_FDPQ_CAQD_2 \index_o_reg[31] (.CK (clk), .D (n_130), .Q
       (index_o[31]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[0] (.CK (clk), .D (n_129), .Q
       (logits_o[0]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[1] (.CK (clk), .D (n_128), .Q
       (logits_o[1]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[2] (.CK (clk), .D (n_162), .Q
       (logits_o[2]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[3] (.CK (clk), .D (n_161), .Q
       (logits_o[3]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[4] (.CK (clk), .D (n_160), .Q
       (logits_o[4]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[5] (.CK (clk), .D (n_159), .Q
       (logits_o[5]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[6] (.CK (clk), .D (n_157), .Q
       (logits_o[6]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[7] (.CK (clk), .D (n_158), .Q
       (logits_o[7]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[8] (.CK (clk), .D (n_156), .Q
       (logits_o[8]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[9] (.CK (clk), .D (n_155), .Q
       (logits_o[9]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[10] (.CK (clk), .D (n_154), .Q
       (logits_o[10]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[11] (.CK (clk), .D (n_153), .Q
       (logits_o[11]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[12] (.CK (clk), .D (n_151), .Q
       (logits_o[12]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[13] (.CK (clk), .D (n_150), .Q
       (logits_o[13]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[14] (.CK (clk), .D (n_149), .Q
       (logits_o[14]));
  HDN4BULT06_FDPQ_CAQD_2 \logits_o_reg[15] (.CK (clk), .D (n_61), .Q
       (logits_o[15]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[0] (.CK (clk), .D (n_204),
       .Q (topk_index_o[0]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[1] (.CK (clk), .D (n_202),
       .Q (topk_index_o[1]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[2] (.CK (clk), .D (n_200),
       .Q (topk_index_o[2]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[3] (.CK (clk), .D (n_222),
       .Q (topk_index_o[3]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[4] (.CK (clk), .D (n_197),
       .Q (topk_index_o[4]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[5] (.CK (clk), .D (n_195),
       .Q (topk_index_o[5]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[6] (.CK (clk), .D (n_194),
       .Q (topk_index_o[6]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[7] (.CK (clk), .D (n_193),
       .Q (topk_index_o[7]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[8] (.CK (clk), .D (n_192),
       .Q (topk_index_o[8]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[9] (.CK (clk), .D (n_191),
       .Q (topk_index_o[9]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[10] (.CK (clk), .D (n_190),
       .Q (topk_index_o[10]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[11] (.CK (clk), .D (n_189),
       .Q (topk_index_o[11]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[12] (.CK (clk), .D (n_188),
       .Q (topk_index_o[12]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[13] (.CK (clk), .D (n_187),
       .Q (topk_index_o[13]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[14] (.CK (clk), .D (n_186),
       .Q (topk_index_o[14]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[15] (.CK (clk), .D (n_185),
       .Q (topk_index_o[15]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[16] (.CK (clk), .D (n_184),
       .Q (topk_index_o[16]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[17] (.CK (clk), .D (n_183),
       .Q (topk_index_o[17]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[18] (.CK (clk), .D (n_182),
       .Q (topk_index_o[18]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[19] (.CK (clk), .D (n_180),
       .Q (topk_index_o[19]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[20] (.CK (clk), .D (n_179),
       .Q (topk_index_o[20]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[21] (.CK (clk), .D (n_178),
       .Q (topk_index_o[21]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[22] (.CK (clk), .D (n_177),
       .Q (topk_index_o[22]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[23] (.CK (clk), .D (n_176),
       .Q (topk_index_o[23]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[24] (.CK (clk), .D (n_175),
       .Q (topk_index_o[24]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[25] (.CK (clk), .D (n_174),
       .Q (topk_index_o[25]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[26] (.CK (clk), .D (n_173),
       .Q (topk_index_o[26]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[27] (.CK (clk), .D (n_172),
       .Q (topk_index_o[27]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[28] (.CK (clk), .D (n_171),
       .Q (topk_index_o[28]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[29] (.CK (clk), .D (n_169),
       .Q (topk_index_o[29]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[30] (.CK (clk), .D (n_168),
       .Q (topk_index_o[30]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_index_o_reg[31] (.CK (clk), .D (n_167),
       .Q (topk_index_o[31]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[0] (.CK (clk), .D (n_220),
       .Q (topk_logits_o[0]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[1] (.CK (clk), .D (n_219),
       .Q (topk_logits_o[1]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[2] (.CK (clk), .D (n_218),
       .Q (topk_logits_o[2]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[3] (.CK (clk), .D (n_217),
       .Q (topk_logits_o[3]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[4] (.CK (clk), .D (n_216),
       .Q (topk_logits_o[4]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[5] (.CK (clk), .D (n_215),
       .Q (topk_logits_o[5]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[6] (.CK (clk), .D (n_214),
       .Q (topk_logits_o[6]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[7] (.CK (clk), .D (n_213),
       .Q (topk_logits_o[7]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[8] (.CK (clk), .D (n_212),
       .Q (topk_logits_o[8]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[9] (.CK (clk), .D (n_211),
       .Q (topk_logits_o[9]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[10] (.CK (clk), .D (n_210),
       .Q (topk_logits_o[10]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[11] (.CK (clk), .D (n_209),
       .Q (topk_logits_o[11]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[12] (.CK (clk), .D (n_208),
       .Q (topk_logits_o[12]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[13] (.CK (clk), .D (n_207),
       .Q (topk_logits_o[13]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[14] (.CK (clk), .D (n_206),
       .Q (topk_logits_o[14]));
  HDN4BULT06_FDPQ_CAQD_2 \topk_logits_o_reg[15] (.CK (clk), .D (n_205),
       .Q (topk_logits_o[15]));
  HDN4BULT06_AO22_1 g14237(.A1 (n_124), .A2 (topk_index_o[3]), .B1
       (n_2), .B2 (index_i[3]), .X (n_222));
  HDN4BULT06_OAI31_CA3Q_1 g14238(.A1 (n_85), .A2 (n_4), .A3 (n_20), .B
       (n_126), .X (n_221));
  HDN4BULT06_AO221_CAQV1_1 g14239(.A1 (n_85), .A2 (topk_logits_o[0]),
       .B1 (n_86), .B2 (logits_i[0]), .C (n_225), .X (n_220));
  HDN4BULT06_AO221_CAQV1_1 g14240(.A1 (n_85), .A2 (topk_logits_o[1]),
       .B1 (n_86), .B2 (logits_i[1]), .C (n_225), .X (n_219));
  HDN4BULT06_AO221_CAQV1_1 g14241(.A1 (n_85), .A2 (topk_logits_o[2]),
       .B1 (n_86), .B2 (logits_i[2]), .C (n_225), .X (n_218));
  HDN4BULT06_AO221_CAQV1_1 g14242(.A1 (n_85), .A2 (topk_logits_o[3]),
       .B1 (n_86), .B2 (logits_i[3]), .C (n_225), .X (n_217));
  HDN4BULT06_AO221_CAQV1_1 g14243(.A1 (n_85), .A2 (topk_logits_o[4]),
       .B1 (n_86), .B2 (logits_i[4]), .C (n_225), .X (n_216));
  HDN4BULT06_AO221_CAQV1_1 g14244(.A1 (n_85), .A2 (topk_logits_o[5]),
       .B1 (n_86), .B2 (logits_i[5]), .C (n_225), .X (n_215));
  HDN4BULT06_AO221_CAQV1_1 g14245(.A1 (n_85), .A2 (topk_logits_o[6]),
       .B1 (n_86), .B2 (logits_i[6]), .C (n_225), .X (n_214));
  HDN4BULT06_AO221_CAQV1_1 g14246(.A1 (n_85), .A2 (topk_logits_o[7]),
       .B1 (n_86), .B2 (logits_i[7]), .C (n_225), .X (n_213));
  HDN4BULT06_AO221_CAQV1_1 g14247(.A1 (n_85), .A2 (topk_logits_o[8]),
       .B1 (n_86), .B2 (logits_i[8]), .C (n_225), .X (n_212));
  HDN4BULT06_AO221_CAQV1_1 g14248(.A1 (n_85), .A2 (topk_logits_o[9]),
       .B1 (n_86), .B2 (logits_i[9]), .C (n_225), .X (n_211));
  HDN4BULT06_AO221_CAQV1_1 g14249(.A1 (n_85), .A2 (topk_logits_o[10]),
       .B1 (n_86), .B2 (logits_i[10]), .C (n_225), .X (n_210));
  HDN4BULT06_AO221_CAQV1_1 g14250(.A1 (n_85), .A2 (topk_logits_o[11]),
       .B1 (n_86), .B2 (logits_i[11]), .C (n_225), .X (n_209));
  HDN4BULT06_AO221_CAQV1_1 g14251(.A1 (n_85), .A2 (topk_logits_o[12]),
       .B1 (n_86), .B2 (logits_i[12]), .C (n_225), .X (n_208));
  HDN4BULT06_AO221_CAQV1_1 g14252(.A1 (n_85), .A2 (topk_logits_o[13]),
       .B1 (n_86), .B2 (logits_i[13]), .C (n_225), .X (n_207));
  HDN4BULT06_AO221_CAQV1_1 g14253(.A1 (n_85), .A2 (topk_logits_o[14]),
       .B1 (n_86), .B2 (logits_i[14]), .C (n_225), .X (n_206));
  HDN4BULT06_AO221_CAQV1_1 g14254(.A1 (n_85), .A2 (topk_logits_o[15]),
       .B1 (n_86), .B2 (logits_i[15]), .C (n_225), .X (n_205));
  HDN4BULT06_AO22_1 g14255(.A1 (n_124), .A2 (topk_index_o[0]), .B1
       (n_2), .B2 (index_i[0]), .X (n_204));
  HDN4BULT06_AO222_CBQ_1 g14256(.A1 (n_88), .A2 (topk_index_o[3]), .B1
       (n_87), .B2 (index_i[3]), .C1 (n_7), .C2 (index_o[3]), .X
       (n_203));
  HDN4BULT06_AO22_1 g14257(.A1 (n_124), .A2 (topk_index_o[1]), .B1
       (n_2), .B2 (index_i[1]), .X (n_202));
  HDN4BULT06_AO222_CBQ_1 g14258(.A1 (n_2), .A2 (topk_index_o[1]), .B1
       (n_87), .B2 (index_i[1]), .C1 (n_7), .C2 (index_o[1]), .X
       (n_201));
  HDN4BULT06_AO22_1 g14259(.A1 (n_124), .A2 (topk_index_o[2]), .B1
       (n_88), .B2 (index_i[2]), .X (n_200));
  HDN4BULT06_OAI31_CA3Q_1 g14260(.A1 (n_85), .A2 (n_4), .A3 (n_25), .B
       (n_127), .X (n_199));
  HDN4BULT06_AO222_CBQ_1 g14261(.A1 (n_2), .A2 (topk_index_o[0]), .B1
       (n_87), .B2 (index_i[0]), .C1 (n_7), .C2 (index_o[0]), .X
       (n_198));
  HDN4BULT06_AO22_1 g14262(.A1 (n_124), .A2 (topk_index_o[4]), .B1
       (n_88), .B2 (index_i[4]), .X (n_197));
  HDN4BULT06_AO222_CBQ_1 g14263(.A1 (n_88), .A2 (topk_index_o[4]), .B1
       (n_87), .B2 (index_i[4]), .C1 (n_7), .C2 (index_o[4]), .X
       (n_196));
  HDN4BULT06_AO22_1 g14264(.A1 (n_124), .A2 (topk_index_o[5]), .B1
       (n_88), .B2 (index_i[5]), .X (n_195));
  HDN4BULT06_AO22_1 g14265(.A1 (n_124), .A2 (topk_index_o[6]), .B1
       (n_2), .B2 (index_i[6]), .X (n_194));
  HDN4BULT06_AO22_1 g14266(.A1 (n_124), .A2 (topk_index_o[7]), .B1
       (n_88), .B2 (index_i[7]), .X (n_193));
  HDN4BULT06_AO22_1 g14267(.A1 (n_124), .A2 (topk_index_o[8]), .B1
       (n_2), .B2 (index_i[8]), .X (n_192));
  HDN4BULT06_AO22_1 g14268(.A1 (n_124), .A2 (topk_index_o[9]), .B1
       (n_88), .B2 (index_i[9]), .X (n_191));
  HDN4BULT06_AO22_1 g14269(.A1 (n_124), .A2 (topk_index_o[10]), .B1
       (n_88), .B2 (index_i[10]), .X (n_190));
  HDN4BULT06_AO22_1 g14270(.A1 (n_124), .A2 (topk_index_o[11]), .B1
       (n_88), .B2 (index_i[11]), .X (n_189));
  HDN4BULT06_AO22_1 g14271(.A1 (n_124), .A2 (topk_index_o[12]), .B1
       (n_2), .B2 (index_i[12]), .X (n_188));
  HDN4BULT06_AO22_1 g14272(.A1 (n_124), .A2 (topk_index_o[13]), .B1
       (n_2), .B2 (index_i[13]), .X (n_187));
  HDN4BULT06_AO22_1 g14273(.A1 (n_124), .A2 (topk_index_o[14]), .B1
       (n_2), .B2 (index_i[14]), .X (n_186));
  HDN4BULT06_AO22_1 g14274(.A1 (n_124), .A2 (topk_index_o[15]), .B1
       (n_88), .B2 (index_i[15]), .X (n_185));
  HDN4BULT06_AO22_1 g14275(.A1 (n_124), .A2 (topk_index_o[16]), .B1
       (n_88), .B2 (index_i[16]), .X (n_184));
  HDN4BULT06_AO22_1 g14276(.A1 (n_124), .A2 (topk_index_o[17]), .B1
       (n_2), .B2 (index_i[17]), .X (n_183));
  HDN4BULT06_AO22_1 g14277(.A1 (n_124), .A2 (topk_index_o[18]), .B1
       (n_2), .B2 (index_i[18]), .X (n_182));
  HDN4BULT06_AO222_CBQ_1 g14278(.A1 (n_88), .A2 (topk_index_o[9]), .B1
       (n_87), .B2 (index_i[9]), .C1 (n_7), .C2 (index_o[9]), .X
       (n_181));
  HDN4BULT06_AO22_1 g14279(.A1 (n_124), .A2 (topk_index_o[19]), .B1
       (n_88), .B2 (index_i[19]), .X (n_180));
  HDN4BULT06_AO22_1 g14280(.A1 (n_124), .A2 (topk_index_o[20]), .B1
       (n_2), .B2 (index_i[20]), .X (n_179));
  HDN4BULT06_AO22_1 g14281(.A1 (n_124), .A2 (topk_index_o[21]), .B1
       (n_88), .B2 (index_i[21]), .X (n_178));
  HDN4BULT06_AO22_1 g14282(.A1 (n_124), .A2 (topk_index_o[22]), .B1
       (n_88), .B2 (index_i[22]), .X (n_177));
  HDN4BULT06_AO22_1 g14283(.A1 (n_124), .A2 (topk_index_o[23]), .B1
       (n_2), .B2 (index_i[23]), .X (n_176));
  HDN4BULT06_AO22_1 g14284(.A1 (n_124), .A2 (topk_index_o[24]), .B1
       (n_88), .B2 (index_i[24]), .X (n_175));
  HDN4BULT06_AO22_1 g14285(.A1 (n_124), .A2 (topk_index_o[25]), .B1
       (n_88), .B2 (index_i[25]), .X (n_174));
  HDN4BULT06_AO22_1 g14286(.A1 (n_124), .A2 (topk_index_o[26]), .B1
       (n_2), .B2 (index_i[26]), .X (n_173));
  HDN4BULT06_AO22_1 g14287(.A1 (n_124), .A2 (topk_index_o[27]), .B1
       (n_2), .B2 (index_i[27]), .X (n_172));
  HDN4BULT06_AO22_1 g14288(.A1 (n_124), .A2 (topk_index_o[28]), .B1
       (n_88), .B2 (index_i[28]), .X (n_171));
  HDN4BULT06_AO222_CBQ_1 g14289(.A1 (n_88), .A2 (topk_index_o[11]), .B1
       (n_87), .B2 (index_i[11]), .C1 (n_7), .C2 (index_o[11]), .X
       (n_170));
  HDN4BULT06_AO22_1 g14290(.A1 (n_124), .A2 (topk_index_o[29]), .B1
       (n_2), .B2 (index_i[29]), .X (n_169));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14291(.A1 (n_125), .A2 (n_20), .B1 (n_2),
       .B2 (index_i[30]), .X (n_168));
  HDN4BULT06_AO22_1 g14292(.A1 (n_124), .A2 (topk_index_o[31]), .B1
       (n_88), .B2 (index_i[31]), .X (n_167));
  HDN4BULT06_AO222_CBQ_1 g14293(.A1 (n_88), .A2 (topk_index_o[13]), .B1
       (n_87), .B2 (index_i[13]), .C1 (n_7), .C2 (index_o[13]), .X
       (n_166));
  HDN4BULT06_AO222_CBQ_1 g14294(.A1 (n_2), .A2 (topk_index_o[15]), .B1
       (n_87), .B2 (index_i[15]), .C1 (n_7), .C2 (index_o[15]), .X
       (n_165));
  HDN4BULT06_AO222_CBQ_1 g14295(.A1 (n_88), .A2 (topk_index_o[16]), .B1
       (n_87), .B2 (index_i[16]), .C1 (n_7), .C2 (index_o[16]), .X
       (n_164));
  HDN4BULT06_AO222_CBQ_1 g14296(.A1 (n_2), .A2 (topk_index_o[17]), .B1
       (n_87), .B2 (index_i[17]), .C1 (n_7), .C2 (index_o[17]), .X
       (n_163));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14297(.A1 (n_122), .A2 (n_21), .B1 (n_5),
       .B2 (logits_o[2]), .X (n_162));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14298(.A1 (n_121), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[3]), .X (n_161));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14299(.A1 (n_120), .A2 (n_21), .B1 (n_5),
       .B2 (logits_o[4]), .X (n_160));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14300(.A1 (n_119), .A2 (n_21), .B1 (n_5),
       .B2 (logits_o[5]), .X (n_159));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14301(.A1 (n_89), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[7]), .X (n_158));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14302(.A1 (n_90), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[6]), .X (n_157));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14303(.A1 (n_118), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[8]), .X (n_156));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14304(.A1 (n_117), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[9]), .X (n_155));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14305(.A1 (n_116), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[10]), .X (n_154));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14306(.A1 (n_115), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[11]), .X (n_153));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14307(.A1 (n_111), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[2]), .X (n_152));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14308(.A1 (n_123), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[12]), .X (n_151));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14309(.A1 (n_113), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[13]), .X (n_150));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14310(.A1 (n_112), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[14]), .X (n_149));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14311(.A1 (n_110), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[5]), .X (n_148));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14312(.A1 (n_108), .A2 (n_4), .B1 (n_7),
       .B2 (index_o[7]), .X (n_147));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14313(.A1 (n_107), .A2 (n_4), .B1 (n_7),
       .B2 (index_o[8]), .X (n_146));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14314(.A1 (n_114), .A2 (n_21), .B1 (n_7),
       .B2 (index_o[10]), .X (n_145));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14315(.A1 (n_97), .A2 (n_21), .B1 (n_7),
       .B2 (index_o[12]), .X (n_144));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14316(.A1 (n_105), .A2 (n_21), .B1 (n_5),
       .B2 (index_o[14]), .X (n_143));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14317(.A1 (n_109), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[18]), .X (n_142));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14318(.A1 (n_104), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[19]), .X (n_141));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14319(.A1 (n_102), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[21]), .X (n_140));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14320(.A1 (n_103), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[20]), .X (n_139));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14321(.A1 (n_101), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[22]), .X (n_138));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14322(.A1 (n_100), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[23]), .X (n_137));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14323(.A1 (n_99), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[24]), .X (n_136));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14324(.A1 (n_98), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[25]), .X (n_135));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14325(.A1 (n_106), .A2 (n_21), .B1 (n_5),
       .B2 (index_o[26]), .X (n_134));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14326(.A1 (n_96), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[27]), .X (n_133));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14327(.A1 (n_95), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[28]), .X (n_132));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14328(.A1 (n_94), .A2 (n_4), .B1 (n_5),
       .B2 (index_o[29]), .X (n_131));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14329(.A1 (n_93), .A2 (n_21), .B1 (n_5),
       .B2 (index_o[31]), .X (n_130));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14330(.A1 (n_92), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[0]), .X (n_129));
  HDN4BULT06_AO2BB2_CB3QV1_1 g14331(.A1 (n_91), .A2 (n_4), .B1 (n_5),
       .B2 (logits_o[1]), .X (n_128));
  HDN4BULT06_AOI22_CA3Q_1 g14332(.A1 (n_87), .A2 (index_i[6]), .B1
       (n_7), .B2 (index_o[6]), .X (n_127));
  HDN4BULT06_AOI22_CA3Q_1 g14333(.A1 (n_87), .A2 (index_i[30]), .B1
       (n_7), .B2 (index_o[30]), .X (n_126));
  HDN4BULT06_INV_S_1 g14334(.A (n_124), .X (n_125));
  HDN4BULT06_AOI22_CA3Q_1 g14335(.A1 (n_11), .A2 (topk_logits_o[12]),
       .B1 (n_10), .B2 (logits_i[12]), .X (n_123));
  HDN4BULT06_AOI22_CA3Q_1 g14336(.A1 (n_11), .A2 (topk_logits_o[2]),
       .B1 (n_10), .B2 (logits_i[2]), .X (n_122));
  HDN4BULT06_AOI22_CA3Q_1 g14337(.A1 (n_8), .A2 (topk_logits_o[3]), .B1
       (n_10), .B2 (logits_i[3]), .X (n_121));
  HDN4BULT06_AOI22_CA3Q_1 g14338(.A1 (n_8), .A2 (topk_logits_o[4]), .B1
       (n_10), .B2 (logits_i[4]), .X (n_120));
  HDN4BULT06_AOI22_CA3Q_1 g14339(.A1 (n_8), .A2 (topk_logits_o[5]), .B1
       (n_10), .B2 (logits_i[5]), .X (n_119));
  HDN4BULT06_AOI22_CA3Q_1 g14340(.A1 (n_8), .A2 (topk_logits_o[8]), .B1
       (n_10), .B2 (logits_i[8]), .X (n_118));
  HDN4BULT06_AOI22_CA3Q_1 g14341(.A1 (n_8), .A2 (topk_logits_o[9]), .B1
       (n_9), .B2 (logits_i[9]), .X (n_117));
  HDN4BULT06_AOI22_CA3Q_1 g14342(.A1 (n_8), .A2 (topk_logits_o[10]),
       .B1 (n_9), .B2 (logits_i[10]), .X (n_116));
  HDN4BULT06_AOI22_CA3Q_1 g14343(.A1 (n_8), .A2 (topk_logits_o[11]),
       .B1 (n_9), .B2 (logits_i[11]), .X (n_115));
  HDN4BULT06_AOI22_CA3Q_1 g14344(.A1 (n_8), .A2 (topk_index_o[10]), .B1
       (n_9), .B2 (index_i[10]), .X (n_114));
  HDN4BULT06_AOI22_CA3Q_1 g14345(.A1 (n_11), .A2 (topk_logits_o[13]),
       .B1 (n_10), .B2 (logits_i[13]), .X (n_113));
  HDN4BULT06_AOI22_CA3Q_1 g14346(.A1 (n_8), .A2 (topk_logits_o[14]),
       .B1 (n_10), .B2 (logits_i[14]), .X (n_112));
  HDN4BULT06_AOI22_CA3Q_1 g14347(.A1 (n_11), .A2 (topk_index_o[2]), .B1
       (n_9), .B2 (index_i[2]), .X (n_111));
  HDN4BULT06_AOI22_CA3Q_1 g14348(.A1 (n_11), .A2 (topk_index_o[5]), .B1
       (n_9), .B2 (index_i[5]), .X (n_110));
  HDN4BULT06_AOI22_CA3Q_1 g14349(.A1 (n_8), .A2 (topk_index_o[18]), .B1
       (n_10), .B2 (index_i[18]), .X (n_109));
  HDN4BULT06_AOI22_CA3Q_1 g14350(.A1 (n_8), .A2 (topk_index_o[7]), .B1
       (n_10), .B2 (index_i[7]), .X (n_108));
  HDN4BULT06_AOI22_CA3Q_1 g14351(.A1 (n_8), .A2 (topk_index_o[8]), .B1
       (n_10), .B2 (index_i[8]), .X (n_107));
  HDN4BULT06_OR2_1 g14352(.A1 (n_87), .A2 (n_7), .X (n_124));
  HDN4BULT06_AOI22_CA3Q_1 g14353(.A1 (n_8), .A2 (topk_index_o[26]), .B1
       (n_10), .B2 (index_i[26]), .X (n_106));
  HDN4BULT06_AOI22_CA3Q_1 g14354(.A1 (n_11), .A2 (topk_index_o[14]),
       .B1 (n_10), .B2 (index_i[14]), .X (n_105));
  HDN4BULT06_AOI22_CA3Q_1 g14355(.A1 (n_11), .A2 (topk_index_o[19]),
       .B1 (n_10), .B2 (index_i[19]), .X (n_104));
  HDN4BULT06_AOI22_CA3Q_1 g14356(.A1 (n_11), .A2 (topk_index_o[20]),
       .B1 (n_9), .B2 (index_i[20]), .X (n_103));
  HDN4BULT06_AOI22_CA3Q_1 g14357(.A1 (n_11), .A2 (topk_index_o[21]),
       .B1 (n_10), .B2 (index_i[21]), .X (n_102));
  HDN4BULT06_AOI22_CA3Q_1 g14358(.A1 (n_11), .A2 (topk_index_o[22]),
       .B1 (n_9), .B2 (index_i[22]), .X (n_101));
  HDN4BULT06_AOI22_CA3Q_1 g14359(.A1 (n_11), .A2 (topk_index_o[23]),
       .B1 (n_9), .B2 (index_i[23]), .X (n_100));
  HDN4BULT06_AOI22_CA3Q_1 g14360(.A1 (n_11), .A2 (topk_index_o[24]),
       .B1 (n_9), .B2 (index_i[24]), .X (n_99));
  HDN4BULT06_AOI22_CA3Q_1 g14361(.A1 (n_11), .A2 (topk_index_o[25]),
       .B1 (n_10), .B2 (index_i[25]), .X (n_98));
  HDN4BULT06_AOI22_CA3Q_1 g14362(.A1 (n_11), .A2 (topk_index_o[12]),
       .B1 (n_10), .B2 (index_i[12]), .X (n_97));
  HDN4BULT06_AOI22_CA3Q_1 g14363(.A1 (n_11), .A2 (topk_index_o[27]),
       .B1 (n_10), .B2 (index_i[27]), .X (n_96));
  HDN4BULT06_AOI22_CA3Q_1 g14364(.A1 (n_11), .A2 (topk_index_o[28]),
       .B1 (n_10), .B2 (index_i[28]), .X (n_95));
  HDN4BULT06_AOI22_CA3Q_1 g14365(.A1 (n_8), .A2 (topk_index_o[29]), .B1
       (n_10), .B2 (index_i[29]), .X (n_94));
  HDN4BULT06_AOI22_CA3Q_1 g14366(.A1 (n_8), .A2 (topk_index_o[31]), .B1
       (n_9), .B2 (index_i[31]), .X (n_93));
  HDN4BULT06_AOI22_CA3Q_1 g14367(.A1 (n_11), .A2 (topk_logits_o[0]),
       .B1 (n_10), .B2 (logits_i[0]), .X (n_92));
  HDN4BULT06_AOI22_CA3Q_1 g14368(.A1 (n_11), .A2 (topk_logits_o[1]),
       .B1 (n_10), .B2 (logits_i[1]), .X (n_91));
  HDN4BULT06_AOI22_CA3Q_1 g14369(.A1 (n_8), .A2 (topk_logits_o[6]), .B1
       (n_10), .B2 (logits_i[6]), .X (n_90));
  HDN4BULT06_AOI22_CA3Q_1 g14370(.A1 (n_8), .A2 (topk_logits_o[7]), .B1
       (n_10), .B2 (logits_i[7]), .X (n_89));
  HDN4BLVT06_AN2_1 g14371(.A1 (n_11), .A2 (n_3), .X (n_88));
  HDN4BULT06_INV_1 g14372(.A (n_86), .X (n_85));
  HDN4BULT06_AN2_1 g14373(.A1 (n_10), .A2 (n_3), .X (n_87));
  HDN4BULT06_NR2_1 g14374(.A1 (n_7), .A2 (n_10), .X (n_86));
  HDN4BLVT06_INV_1 g14402(.A (n_9), .X (n_8));
  HDN4BLVT06_INV_1 g14403(.A (n_11), .X (n_9));
  HDN4BLVT06_INV_1 g14406(.A (n_11), .X (n_10));
  HDN4BULT06_AOAOI2111_1 g14407(.A1 (n_83), .A2 (n_77), .B (n_79), .C
       (logits_i[15]), .D (n_84), .X (n_11));
  HDN4BULT06_NR2_1 g14408(.A1 (n_83), .A2 (topk_logits_o[15]), .X
       (n_84));
  HDN4BULT06_OAI2111_CAQ_1 g14409(.A1 (n_62), .A2 (n_51), .B1 (n_82),
       .B2 (n_72), .B3 (n_73), .X (n_83));
  HDN4BULT06_OAI2111_CAQ_1 g14410(.A1 (logits_i[8]), .A2 (n_13), .B1
       (n_81), .B2 (n_68), .B3 (n_44), .X (n_82));
  HDN4BULT06_OAI2111_CAQ_1 g14411(.A1 (n_40), .A2 (topk_logits_o[6]),
       .B1 (n_80), .B2 (n_69), .B3 (n_63), .X (n_81));
  HDN4BULT06_OAI2111_CAQ_1 g14412(.A1 (logits_i[4]), .A2 (n_19), .B1
       (n_78), .B2 (n_50), .B3 (n_39), .X (n_80));
  HDN4BULT06_OAI31_CA3Q_1 g14413(.A1 (n_76), .A2 (n_64), .A3 (n_67), .B
       (topk_logits_o[15]), .X (n_79));
  HDN4BULT06_AOAI211_CBQ_1 g14414(.A1 (n_23), .A2 (topk_logits_o[3]),
       .B (n_75), .C (n_31), .X (n_78));
  HDN4BULT06_ND4_MM_1 g14415(.A1 (n_70), .A2 (n_66), .A3 (n_31), .A4
       (n_34), .X (n_77));
  HDN4BULT06_ND3_1 g14416(.A1 (n_74), .A2 (n_46), .A3 (n_47), .X
       (n_76));
  HDN4BULT06_OAOI211_CAQV2_1 g14417(.A1 (logits_i[2]), .A2 (n_16), .B
       (n_65), .C (n_32), .X (n_75));
  HDN4BULT06_NR4_1 g14418(.A1 (n_71), .A2 (n_56), .A3 (n_40), .A4
       (n_26), .X (n_74));
  HDN4BULT06_OAOI211_CAQV2_1 g14419(.A1 (n_58), .A2 (n_28), .B (n_42),
       .C (n_29), .X (n_73));
  HDN4BULT06_AOAI211_CBQ_1 g14420(.A1 (n_43), .A2 (n_44), .B (n_41), .C
       (n_68), .X (n_72));
  HDN4BULT06_OR4B_CAQ_1 g14421(.A (logits_i[8]), .B1 (n_59), .B2
       (n_57), .B3 (n_23), .X (n_71));
  HDN4BULT06_NR4B_CAQ_1 g14422(.A (n_51), .B1 (n_60), .B2 (n_43), .B3
       (n_41), .X (n_70));
  HDN4BULT06_AOAI211_CBQ_1 g14423(.A1 (n_39), .A2 (n_35), .B (n_27), .C
       (n_50), .X (n_69));
  HDN4BULT06_ND4_1 g14425(.A1 (n_53), .A2 (n_52), .A3 (n_54), .A4
       (n_45), .X (n_67));
  HDN4BULT06_NR4_1 g14426(.A1 (n_29), .A2 (n_28), .A3 (n_32), .A4
       (n_0), .X (n_66));
  HDN4BULT06_MAJI3_1 g14427(.A1 (n_14), .A2 (topk_logits_o[1]), .A3
       (n_36), .X (n_65));
  HDN4BULT06_AOI2B1_CAQ_1 g14428(.A (logits_i[10]), .B
       (topk_logits_o[10]), .C (n_62), .X (n_68));
  HDN4BULT06_ND2_1 g14429(.A1 (n_48), .A2 (n_49), .X (n_64));
  HDN4BULT06_OAI21_CB3QV1_1 g14430(.A1 (n_30), .A2 (logits_i[7]), .B
       (n_12), .X (n_63));
  HDN4BULT06_AO2BB2_CA3QV1_1 g14431(.A1 (n_4), .A2 (n_37), .B1 (n_5),
       .B2 (logits_o[15]), .X (n_61));
  HDN4BULT06_AO211_V1_1 g14432(.A1 (logits_i[7]), .A2 (n_12), .B1
       (n_30), .B2 (n_55), .X (n_60));
  HDN4BULT06_OAI2111_CAQ_1 g14433(.A1 (logits_i[12]), .A2 (n_18), .B1
       (n_42), .B2 (n_33), .B3 (n_38), .X (n_62));
  HDN4BULT06_ND3_1 g14434(.A1 (logits_i[9]), .A2 (logits_i[4]), .A3
       (logits_i[5]), .X (n_59));
  HDN4BULT06_NR2B_CA3Q_1 g14435(.A (n_33), .B (n_34), .X (n_58));
  HDN4BULT06_ND3_MM_1 g14436(.A1 (logits_i[2]), .A2 (logits_i[1]), .A3
       (logits_i[0]), .X (n_57));
  HDN4BULT06_ND3_1 g14437(.A1 (logits_i[10]), .A2 (logits_i[12]), .A3
       (logits_i[11]), .X (n_56));
  HDN4BULT06_OR2_1 g14438(.A1 (n_35), .A2 (n_27), .X (n_55));
  HDN4BULT06_NR4_1 g14439(.A1 (index_i[19]), .A2 (index_i[18]), .A3
       (index_i[17]), .A4 (index_i[16]), .X (n_54));
  HDN4BULT06_NR4_1 g14440(.A1 (index_i[23]), .A2 (index_i[22]), .A3
       (index_i[21]), .A4 (index_i[20]), .X (n_53));
  HDN4BULT06_NR4_1 g14441(.A1 (index_i[15]), .A2 (index_i[14]), .A3
       (index_i[13]), .A4 (index_i[12]), .X (n_52));
  HDN4BULT06_NR4_1 g14442(.A1 (index_i[3]), .A2 (index_i[2]), .A3
       (index_i[1]), .A4 (index_i[0]), .X (n_49));
  HDN4BULT06_NR4_1 g14443(.A1 (index_i[7]), .A2 (index_i[6]), .A3
       (index_i[5]), .A4 (index_i[4]), .X (n_48));
  HDN4BULT06_NR4_1 g14444(.A1 (index_i[31]), .A2 (index_i[30]), .A3
       (index_i[29]), .A4 (index_i[28]), .X (n_47));
  HDN4BULT06_NR4_1 g14445(.A1 (index_i[27]), .A2 (index_i[26]), .A3
       (index_i[25]), .A4 (index_i[24]), .X (n_46));
  HDN4BULT06_NR4_1 g14446(.A1 (index_i[11]), .A2 (index_i[10]), .A3
       (index_i[9]), .A4 (index_i[8]), .X (n_45));
  HDN4BULT06_AOI22_CAQ_1 g14448(.A1 (logits_i[11]), .A2 (n_24), .B1
       (logits_i[10]), .B2 (n_17), .X (n_51));
  HDN4BULT06_AOI22_CBQ_1 g14449(.A1 (n_15), .A2 (topk_logits_o[6]), .B1
       (n_22), .B2 (topk_logits_o[7]), .X (n_50));
  HDN4BULT06_INV_S_1 g14467(.A (n_6), .X (n_5));
  HDN4BULT06_INV_S_1 g14468(.A (n_7), .X (n_6));
  HDN4BULT06_ND2B_CBQ_1 g14470(.A (logits_i[11]), .B
       (topk_logits_o[11]), .X (n_38));
  HDN4BULT06_NR2_1 g14471(.A1 (logits_i[15]), .A2 (topk_logits_o[15]),
       .X (n_37));
  HDN4BULT06_NR2B_CA3Q_1 g14472(.A (topk_logits_o[0]), .B
       (logits_i[0]), .X (n_36));
  HDN4BULT06_ND2B_CA3Q_1 g14473(.A (logits_i[9]), .B
       (topk_logits_o[9]), .X (n_44));
  HDN4BULT06_NR2B_CA3Q_1 g14474(.A (logits_i[8]), .B
       (topk_logits_o[8]), .X (n_43));
  HDN4BULT06_ND2B_CB3Q_1 g14475(.A (logits_i[14]), .B
       (topk_logits_o[14]), .X (n_42));
  HDN4BULT06_NR2B_CA3Q_1 g14476(.A (logits_i[9]), .B
       (topk_logits_o[9]), .X (n_41));
  HDN4BULT06_ND2_MM_1 g14477(.A1 (logits_i[7]), .A2 (logits_i[6]), .X
       (n_40));
  HDN4BULT06_ND2B_CA3Q_1 g14478(.A (logits_i[5]), .B
       (topk_logits_o[5]), .X (n_39));
  HDN4BULT06_NR2_1 g14479(.A1 (n_225), .A2 (valid_i), .X (n_7));
  HDN4BULT06_ND2_MM_1 g14480(.A1 (logits_i[13]), .A2 (logits_i[14]), .X
       (n_26));
  HDN4BULT06_NR2B_CA3Q_1 g14481(.A (logits_i[4]), .B
       (topk_logits_o[4]), .X (n_35));
  HDN4BULT06_ND2_MM_1 g14482(.A1 (logits_i[12]), .A2 (n_18), .X (n_34));
  HDN4BULT06_ND2B_CB3Q_1 g14483(.A (logits_i[13]), .B
       (topk_logits_o[13]), .X (n_33));
  HDN4BULT06_NR2B_CA3Q_1 g14484(.A (logits_i[2]), .B
       (topk_logits_o[2]), .X (n_32));
  HDN4BULT06_ND2B_CB3Q_1 g14485(.A (topk_logits_o[3]), .B
       (logits_i[3]), .X (n_31));
  HDN4BULT06_NR2_1 g14486(.A1 (n_15), .A2 (topk_logits_o[6]), .X
       (n_30));
  HDN4BULT06_NR2B_CA3Q_1 g14487(.A (logits_i[14]), .B
       (topk_logits_o[14]), .X (n_29));
  HDN4BULT06_NR2B_CA3Q_1 g14488(.A (logits_i[13]), .B
       (topk_logits_o[13]), .X (n_28));
  HDN4BULT06_NR2B_CA3Q_1 g14489(.A (logits_i[5]), .B
       (topk_logits_o[5]), .X (n_27));
  HDN4BULT06_INV_S_1 g14491(.A (topk_index_o[6]), .X (n_25));
  HDN4BULT06_INV_S_1 g14494(.A (topk_logits_o[11]), .X (n_24));
  HDN4BULT06_INV_S_1 g14496(.A (logits_i[3]), .X (n_23));
  HDN4BULT06_INV_S_1 g14497(.A (logits_i[7]), .X (n_22));
  HDN4BULT06_INV_S_1 g14510(.A (n_3), .X (n_4));
  HDN4BULT06_INV_S_1 g14512(.A (topk_index_o[30]), .X (n_20));
  HDN4BULT06_INV_S_1 g14514(.A (topk_logits_o[4]), .X (n_19));
  HDN4BULT06_INV_S_1 g14516(.A (topk_logits_o[12]), .X (n_18));
  HDN4BULT06_INV_S_1 g14519(.A (topk_logits_o[10]), .X (n_17));
  HDN4BLVT06_INV_1 g14521(.A (topk_logits_o[2]), .X (n_16));
  HDN4BULT06_INV_S_1 g14523(.A (logits_i[6]), .X (n_15));
  HDN4BLVT06_INV_1 g14524(.A (logits_i[1]), .X (n_14));
  HDN4BULT06_INV_S_1 g14526(.A (topk_logits_o[8]), .X (n_13));
  HDN4BULT06_INV_S_1 g14528(.A (topk_logits_o[7]), .X (n_12));
  HDN4BLVT06_INV_1 drc_bufs14539(.A (n_1), .X (n_2));
  HDN4BLVT06_INV_1 drc_bufs14541(.A (n_88), .X (n_1));
  HDN4BULT06_OAI2B2_CAQ_1 g2(.A (logits_i[0]), .B (topk_logits_o[0]),
       .C1 (n_14), .C2 (topk_logits_o[1]), .X (n_0));
endmodule