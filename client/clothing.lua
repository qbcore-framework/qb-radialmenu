function AddNewVariation(which, gender, one, two, single)
	local Where = Variations[which][gender]
	if not single then
		Where[one] = two
		Where[two] = one
	else
		Where[one] = two
	end
end

Citizen.CreateThread(function()
	-- Male Visor/Hat Variations
	AddNewVariation("Visor", "Male", 9, 10)
	AddNewVariation("Visor", "Male", 18, 67)
	AddNewVariation("Visor", "Male", 82, 67)
	AddNewVariation("Visor", "Male", 44, 45)
	AddNewVariation("Visor", "Male", 50, 68)
	AddNewVariation("Visor", "Male", 51, 69)
	AddNewVariation("Visor", "Male", 52, 70)
	AddNewVariation("Visor", "Male", 53, 71)
	AddNewVariation("Visor", "Male", 62, 72)
	AddNewVariation("Visor", "Male", 65, 66)
	AddNewVariation("Visor", "Male", 73, 74)
	AddNewVariation("Visor", "Male", 76, 77)
	AddNewVariation("Visor", "Male", 79, 78)
	AddNewVariation("Visor", "Male", 80, 81)
	AddNewVariation("Visor", "Male", 91, 92)
	AddNewVariation("Visor", "Male", 104, 105)
	AddNewVariation("Visor", "Male", 109, 110)
	AddNewVariation("Visor", "Male", 116, 117)
	AddNewVariation("Visor", "Male", 118, 119)
	AddNewVariation("Visor", "Male", 123, 124)
	AddNewVariation("Visor", "Male", 125, 126)
	AddNewVariation("Visor", "Male", 127, 128)
	AddNewVariation("Visor", "Male", 130, 131)
	AddNewVariation("Visor", "Male", 135, 136)
	AddNewVariation("Visor", "Male", 137, 138)
	AddNewVariation("Visor", "Male", 139, 140)
	AddNewVariation("Visor", "Male", 142, 143)
	AddNewVariation("Visor", "Male", 147, 148)
	AddNewVariation("Visor", "Male", 151, 152)
	AddNewVariation("Visor", "Male", 127, 128)
	AddNewVariation("Visor", "Male", 130, 131)
	-- Female Visor/Hat Variations
	AddNewVariation("Visor", "Female", 43, 44)
	AddNewVariation("Visor", "Female", 49, 67)
	AddNewVariation("Visor", "Female", 64, 65)
	AddNewVariation("Visor", "Female", 65, 64)
	AddNewVariation("Visor", "Female", 51, 69)
	AddNewVariation("Visor", "Female", 50, 68)
	AddNewVariation("Visor", "Female", 52, 70)
	AddNewVariation("Visor", "Female", 62, 71)
	AddNewVariation("Visor", "Female", 72, 73)
	AddNewVariation("Visor", "Female", 75, 76)
	AddNewVariation("Visor", "Female", 78, 77)
	AddNewVariation("Visor", "Female", 79, 80)
	AddNewVariation("Visor", "Female", 18, 66)
	AddNewVariation("Visor", "Female", 66, 81)
	AddNewVariation("Visor", "Female", 81, 66)
	AddNewVariation("Visor", "Female", 86, 84)
	AddNewVariation("Visor", "Female", 90, 91)
	AddNewVariation("Visor", "Female", 103, 104)
	AddNewVariation("Visor", "Female", 108, 109)
	AddNewVariation("Visor", "Female", 115, 116)
	AddNewVariation("Visor", "Female", 117, 118)
	AddNewVariation("Visor", "Female", 122, 123)
	AddNewVariation("Visor", "Female", 124, 125)
	AddNewVariation("Visor", "Female", 126, 127)
	AddNewVariation("Visor", "Female", 129, 130)
	AddNewVariation("Visor", "Female", 134, 135)
	AddNewVariation("Visor", "Female", 136, 137)
	AddNewVariation("Visor", "Female", 138, 139)
	AddNewVariation("Visor", "Female", 141, 142)
	AddNewVariation("Visor", "Female", 146, 147)
	AddNewVariation("Visor", "Female", 150, 151)
	-- Male Bags
	AddNewVariation("Bags", "Male", 45, 44)
	AddNewVariation("Bags", "Male", 41, 40)
	AddNewVariation("Bags", "Male", 82, 81)
	AddNewVariation("Bags", "Male", 86, 85)
	-- Female Bags
	AddNewVariation("Bags", "Female", 45, 44)
	AddNewVariation("Bags", "Female", 41, 40)
	AddNewVariation("Bags", "Female", 82, 81)
	AddNewVariation("Bags", "Female", 86, 85)
	-- Male Hair
	AddNewVariation("Hair", "Male", 7, 15, true)
	AddNewVariation("Hair", "Male", 43, 15, true)
	AddNewVariation("Hair", "Male", 9, 43, true)
	AddNewVariation("Hair", "Male", 11, 43, true)
	AddNewVariation("Hair", "Male", 15, 43, true)
	AddNewVariation("Hair", "Male", 16, 43, true)
	AddNewVariation("Hair", "Male", 17, 43, true)
	AddNewVariation("Hair", "Male", 20, 43, true)
	AddNewVariation("Hair", "Male", 22, 43, true)
	AddNewVariation("Hair", "Male", 45, 43, true)
	AddNewVariation("Hair", "Male", 47, 43, true)
	AddNewVariation("Hair", "Male", 49, 43, true)
	AddNewVariation("Hair", "Male", 51, 43, true)
	AddNewVariation("Hair", "Male", 52, 43, true)
	AddNewVariation("Hair", "Male", 53, 43, true)
	AddNewVariation("Hair", "Male", 56, 43, true)
	AddNewVariation("Hair", "Male", 58, 43, true)
	-- Female Hair
	AddNewVariation("Hair", "Female", 1, 49, true)
	AddNewVariation("Hair", "Female", 2, 49, true)
	AddNewVariation("Hair", "Female", 7, 49, true)
	AddNewVariation("Hair", "Female", 9, 49, true)
	AddNewVariation("Hair", "Female", 10, 49, true)
	AddNewVariation("Hair", "Female", 11, 48, true)
	AddNewVariation("Hair", "Female", 14, 53, true)
	AddNewVariation("Hair", "Female", 15, 42, true)
	AddNewVariation("Hair", "Female", 21, 42, true)
	AddNewVariation("Hair", "Female", 23, 42, true)
	AddNewVariation("Hair", "Female", 31, 53, true)
	AddNewVariation("Hair", "Female", 39, 49, true)
	AddNewVariation("Hair", "Female", 40, 49, true)
	AddNewVariation("Hair", "Female", 42, 53, true)
	AddNewVariation("Hair", "Female", 45, 49, true)
	AddNewVariation("Hair", "Female", 48, 49, true)
	AddNewVariation("Hair", "Female", 49, 48, true)
	AddNewVariation("Hair", "Female", 52, 53, true)
	AddNewVariation("Hair", "Female", 53, 42, true)
	AddNewVariation("Hair", "Female", 54, 55, true)
	AddNewVariation("Hair", "Female", 59, 42, true)
	AddNewVariation("Hair", "Female", 59, 54, true)
	AddNewVariation("Hair", "Female", 68, 53, true)
	AddNewVariation("Hair", "Female", 76, 48, true)
	-- Male Top/Jacket Variations
	AddNewVariation("Jackets", "Male", 29, 30)
	AddNewVariation("Jackets", "Male", 31, 32)
	AddNewVariation("Jackets", "Male", 42, 43)
	AddNewVariation("Jackets", "Male", 59, 60)
	AddNewVariation("Jackets", "Male", 68, 69)
	AddNewVariation("Jackets", "Male", 74, 75)
	AddNewVariation("Jackets", "Male", 87, 88)
	AddNewVariation("Jackets", "Male", 93, 94)
	AddNewVariation("Jackets", "Male", 99, 100)
	AddNewVariation("Jackets", "Male", 101, 102)
	AddNewVariation("Jackets", "Male", 103, 104)
	AddNewVariation("Jackets", "Male", 126, 127)
	AddNewVariation("Jackets", "Male", 129, 130)
	AddNewVariation("Jackets", "Male", 131, 132)
	AddNewVariation("Jackets", "Male", 184, 185)
	AddNewVariation("Jackets", "Male", 188, 189)
	AddNewVariation("Jackets", "Male", 194, 195)
	AddNewVariation("Jackets", "Male", 196, 197)
	AddNewVariation("Jackets", "Male", 198, 199)
	AddNewVariation("Jackets", "Male", 200, 203)
	AddNewVariation("Jackets", "Male", 202, 205)
	AddNewVariation("Jackets", "Male", 206, 207)
	AddNewVariation("Jackets", "Male", 209, 212)
	AddNewVariation("Jackets", "Male", 210, 211)
	AddNewVariation("Jackets", "Male", 217, 218)
	AddNewVariation("Jackets", "Male", 229, 230)
	AddNewVariation("Jackets", "Male", 232, 233)
	AddNewVariation("Jackets", "Male", 235, 236)
	AddNewVariation("Jackets", "Male", 241, 242)
	AddNewVariation("Jackets", "Male", 251, 253)
	AddNewVariation("Jackets", "Male", 256, 261)
	AddNewVariation("Jackets", "Male", 262, 263)
	AddNewVariation("Jackets", "Male", 265, 266)
	AddNewVariation("Jackets", "Male", 267, 268)
	AddNewVariation("Jackets", "Male", 279, 280)
	AddNewVariation("Jackets", "Male", 292, 293)
	AddNewVariation("Jackets", "Male", 294, 295)
	AddNewVariation("Jackets", "Male", 296, 297)
	AddNewVariation("Jackets", "Male", 300, 303)
	AddNewVariation("Jackets", "Male", 301, 302)
	AddNewVariation("Jackets", "Male", 305, 306)
	AddNewVariation("Jackets", "Male", 311, 312)
	AddNewVariation("Jackets", "Male", 300, 303)
	AddNewVariation("Jackets", "Male", 301, 302)
	AddNewVariation("Jackets", "Male", 305, 306)
	AddNewVariation("Jackets", "Male", 311, 312)
	AddNewVariation("Jackets", "Male", 314, 315)
	AddNewVariation("Jackets", "Male", 316, 317)
	AddNewVariation("Jackets", "Male", 318, 319)
	AddNewVariation("Jackets", "Male", 321, 322)
	AddNewVariation("Jackets", "Male", 330, 331)
	AddNewVariation("Jackets", "Male", 336, 337)
	AddNewVariation("Jackets", "Male", 339, 126)
	AddNewVariation("Jackets", "Male", 340, 341)
	AddNewVariation("Jackets", "Male", 343, 344)
	AddNewVariation("Jackets", "Male", 346, 234)
	AddNewVariation("Jackets", "Male", 347, 260)
	AddNewVariation("Jackets", "Male", 348, 349)
	AddNewVariation("Jackets", "Male", 352, 353)
	AddNewVariation("Jackets", "Male", 354, 355)
	AddNewVariation("Jackets", "Male", 359, 360)
	-- Female Top/Jacket Variations
	AddNewVariation("Jackets", "Female", 53, 52)
	AddNewVariation("Jackets", "Female", 57, 58)
	AddNewVariation("Jackets", "Female", 62, 63)
	AddNewVariation("Jackets", "Female", 84, 85) 
	AddNewVariation("Jackets", "Female", 90, 91) 
	AddNewVariation("Jackets", "Female", 92, 93)
	AddNewVariation("Jackets", "Female", 94, 95)
	AddNewVariation("Jackets", "Female", 117, 118)
	AddNewVariation("Jackets", "Female", 120, 121)
	AddNewVariation("Jackets", "Female", 128, 129)
	AddNewVariation("Jackets", "Female", 187, 186)
	AddNewVariation("Jackets", "Female", 190, 191) 
	AddNewVariation("Jackets", "Female", 196, 197) 
	AddNewVariation("Jackets", "Female", 198, 199) 
	AddNewVariation("Jackets", "Female", 200, 201)
	AddNewVariation("Jackets", "Female", 202, 205) 
	AddNewVariation("Jackets", "Female", 204, 207) 
	AddNewVariation("Jackets", "Female", 210, 211)
	AddNewVariation("Jackets", "Female", 213, 216)
	AddNewVariation("Jackets", "Female", 214, 215)
	AddNewVariation("Jackets", "Female", 225, 226)
	AddNewVariation("Jackets", "Female", 227, 228) 
	AddNewVariation("Jackets", "Female", 239, 240) 
	AddNewVariation("Jackets", "Female", 242, 243)
	AddNewVariation("Jackets", "Female", 244, 364)
	AddNewVariation("Jackets", "Female", 245, 246)
	AddNewVariation("Jackets", "Female", 249, 250)
	AddNewVariation("Jackets", "Female", 259, 261)
	AddNewVariation("Jackets", "Female", 265, 270) 
	AddNewVariation("Jackets", "Female", 271, 272) 
	AddNewVariation("Jackets", "Female", 274, 275) 
	AddNewVariation("Jackets", "Female", 276, 277)
	AddNewVariation("Jackets", "Female", 280, 281)
	AddNewVariation("Jackets", "Female", 292, 293)
	AddNewVariation("Jackets", "Female", 305, 306)
	AddNewVariation("Jackets", "Female", 307, 308) 
	AddNewVariation("Jackets", "Female", 311, 314) 
	AddNewVariation("Jackets", "Female", 312, 313)
	AddNewVariation("Jackets", "Female", 316, 317)
	AddNewVariation("Jackets", "Female", 325, 326) 
	AddNewVariation("Jackets", "Female", 327, 328) 
	AddNewVariation("Jackets", "Female", 329, 330) 
	AddNewVariation("Jackets", "Female", 332, 333)
	AddNewVariation("Jackets", "Female", 339, 340) 
	AddNewVariation("Jackets", "Female", 345, 346) 
	AddNewVariation("Jackets", "Female", 351, 352) 
	AddNewVariation("Jackets", "Female", 354, 121)
	AddNewVariation("Jackets", "Female", 355, 356)
	AddNewVariation("Jackets", "Female", 357, 359)
	AddNewVariation("Jackets", "Female", 358, 360)
	AddNewVariation("Jackets", "Female", 362, 363) 
	AddNewVariation("Jackets", "Female", 366, 367) 
	AddNewVariation("Jackets", "Female", 365, 269)
	AddNewVariation("Jackets", "Female", 370, 371) 
	AddNewVariation("Jackets", "Female", 372, 373)
	AddNewVariation("Jackets", "Female", 378, 379) 
end)

Variations = {
	Jackets = {Male = {}, Female = {}},
	Hair = {Male = {}, Female = {}},
	Bags = {Male = {}, Female = {}},
	Visor = {Male = {}, Female = {}},
	Gloves = {
		Male = {
			[16] = 4,
			[17] = 4,
			[18] = 4,
			[19] = 0,
			[20] = 1,
			[21] = 2,
			[22] = 4,
			[23] = 5,
			[24] = 6,
			[25] = 8,
			[26] = 11,
			[27] = 12,
			[28] = 14,
			[29] = 15,
			[30] = 0,
			[31] = 1,
			[32] = 2,
			[33] = 4,
			[34] = 5,
			[35] = 6,
			[36] = 8,
			[37] = 11,
			[38] = 12,
			[39] = 14,
			[40] = 15,
			[41] = 0,
			[42] = 1,
			[43] = 2,
			[44] = 4,
			[45] = 5,
			[46] = 6,
			[47] = 8,
			[48] = 11,
			[49] = 12,
			[50] = 14,
			[51] = 15,
			[52] = 0,
			[53] = 1,
			[54] = 2,
			[55] = 4,
			[56] = 5,
			[57] = 6,
			[58] = 8,
			[59] = 11,
			[60] = 12,
			[61] = 14,
			[62] = 15,
			[63] = 0,
			[64] = 1,
			[65] = 2,
			[66] = 4,
			[67] = 5,
			[68] = 6,
			[69] = 8,
			[70] = 11,
			[71] = 12,
			[72] = 14,
			[73] = 15,
			[74] = 0,
			[75] = 1,
			[76] = 2,
			[77] = 4,
			[78] = 5,
			[79] = 6,
			[80] = 8,
			[81] = 11,
			[82] = 12,
			[83] = 14,
			[84] = 15,
			[85] = 0,
			[86] = 1,
			[87] = 2,
			[88] = 4,
			[89] = 5,
			[90] = 6,
			[91] = 8,
			[92] = 11,
			[93] = 12,
			[94] = 14,
			[95] = 15,
			[96] = 4,
			[97] = 4,
			[98] = 4,
			[99] = 0,
			[100] = 1,
			[101] = 2,
			[102] = 4,
			[103] = 5,
			[104] = 6,
			[105] = 8,
			[106] = 11,
			[107] = 12,
			[108] = 14,
			[109] = 15,
			[110] = 4,
			[111] = 4,
			[115] = 112,
			[116] = 112,
			[117] = 112,
			[118] = 112,
			[119] = 112,
			[120] = 112,
			[121] = 112,
			[122] = 113,
			[123] = 113,
			[124] = 113,
			[125] = 113,
			[126] = 113,
			[127] = 113,
			[128] = 113,
			[129] = 114,
			[130] = 114,
			[131] = 114,
			[132] = 114,
			[133] = 114,
			[134] = 114,
			[135] = 114,
			[136] = 15,
			[137] = 15,
			[138] = 0,
			[139] = 1,
			[140] = 2,
			[141] = 4,
			[142] = 5,
			[143] = 6,
			[144] = 8,
			[145] = 11,
			[146] = 12,
			[147] = 14,
			[148] = 112,
			[149] = 113,
			[150] = 114,
			[151] = 0,
			[152] = 1,
			[153] = 2,
			[154] = 4,
			[155] = 5,
			[156] = 6,
			[157] = 8,
			[158] = 11,
			[159] = 12,
			[160] = 14,
			[161] = 112,
			[162] = 113,
			[163] = 114,
			[165] = 4,
			[166] = 4,
			[167] = 4,
			[168] = 4,
			[170] = 15,
			[171] = 0,
			[172] = 1,
			[173] = 2,
			[174] = 4,
			[175] = 5,
			[176] = 6,
			[177] = 8,
			[178] = 11,
			[179] = 12,
			[180] = 14,
			[181] = 112,
			[182] = 113,
			[183] = 114,
			[185] = 184,
			[186] = 184,
			[187] = 184,
			[188] = 184,
			[189] = 185,
			[190] = 184,
			[191] = 184,
			[192] = 184,
			[193] = 184,
			[194] = 184,
		},
		Female = {
			[16] = 11,
			[17] = 3,
			[18] = 3,
			[19] = 3,
			[20] = 0,
			[21] = 1,
			[22] = 2,
			[23] = 3,
			[24] = 4,
			[25] = 5,
			[26] = 6,
			[27] = 7,
			[28] = 9,
			[29] = 11,
			[30] = 12,
			[31] = 14,
			[32] = 15,
			[33] = 0,
			[34] = 1,
			[35] = 2,
			[36] = 3,
			[37] = 4,
			[38] = 5,
			[39] = 6,
			[40] = 7,
			[41] = 9,
			[42] = 11,
			[43] = 12,
			[44] = 14,
			[45] = 15,
			[46] = 0,
			[47] = 1,
			[48] = 2,
			[49] = 3,
			[50] = 4,
			[51] = 5,
			[52] = 6,
			[53] = 7,
			[54] = 9,
			[55] = 11,
			[56] = 12,
			[57] = 14,
			[58] = 15,
			[59] = 0,
			[60] = 1,
			[61] = 2,
			[62] = 3,
			[63] = 4,
			[64] = 5,
			[65] = 6,
			[66] = 7,
			[67] = 9,
			[68] = 11,
			[69] = 12,
			[70] = 14,
			[71] = 15,
			[72] = 0,
			[73] = 1,
			[74] = 2,
			[75] = 3,
			[76] = 4,
			[77] = 5,
			[78] = 6,
			[79] = 7,
			[80] = 9,
			[81] = 11,
			[82] = 12,
			[83] = 14,
			[84] = 15,
			[85] = 0,
			[86] = 1,
			[87] = 2,
			[88] = 3,
			[89] = 4,
			[90] = 5,
			[91] = 6,
			[92] = 7,
			[93] = 9,
			[94] = 11,
			[95] = 12,
			[96] = 14,
			[97] = 15,
			[98] = 0,
			[99] = 1,
			[100] = 2,
			[101] = 3,
			[102] = 4,
			[103] = 5,
			[104] = 6,
			[105] = 7,
			[106] = 9,
			[107] = 11,
			[108] = 12,
			[109] = 14,
			[110] = 15,
			[111] = 3,
			[112] = 3,
			[113] = 3,
			[114] = 0,
			[115] = 1,
			[116] = 2,
			[117] = 3,
			[118] = 4,
			[119] = 5,
			[120] = 6,
			[121] = 7,
			[122] = 9,
			[123] = 11,
			[124] = 12,
			[125] = 14,
			[126] = 15,
			[127] = 3,
			[128] = 3,
			[132] = 129,
			[133] = 129,
			[134] = 129,
			[135] = 129,
			[136] = 129,
			[137] = 129,
			[138] = 129,
			[139] = 130,
			[140] = 130,
			[141] = 130,
			[142] = 130,
			[143] = 130,
			[144] = 130,
			[145] = 130,
			[146] = 131,
			[147] = 131,
			[148] = 131,
			[149] = 131,
			[150] = 131,
			[151] = 131,
			[152] = 131,
			[154] = 153,
			[155] = 153,
			[156] = 153,
			[157] = 153,
			[158] = 153,
			[159] = 153,
			[160] = 153,
			[162] = 161,
			[163] = 161,
			[164] = 161,
			[165] = 161,
			[166] = 161,
			[167] = 161,
			[168] = 161,
			[169] = 15,
			[170] = 15,
			[171] = 0,
			[172] = 1,
			[173] = 2,
			[174] = 3,
			[175] = 4,
			[176] = 5,
			[177] = 6,
			[178] = 7,
			[179] = 9,
			[180] = 11,
			[181] = 12,
			[182] = 14,
			[183] = 129,
			[184] = 130,
			[185] = 131,
			[186] = 153,
			[187] = 0,
			[188] = 1,
			[189] = 2,
			[190] = 3,
			[191] = 4,
			[192] = 5,
			[193] = 6,
			[194] = 7,
			[195] = 9,
			[196] = 11,
			[197] = 12,
			[198] = 14,
			[199] = 129,
			[200] = 130,
			[201] = 131,
			[202] = 153,
			[203] = 161,
			[204] = 161,
			[206] = 3,
			[207] = 3,
			[208] = 3,
			[209] = 3,
			[211] = 15,
			[212] = 0,
			[213] = 1,
			[214] = 2,
			[215] = 3,
			[216] = 4,
			[217] = 5,
			[218] = 6,
			[219] = 7,
			[220] = 9,
			[221] = 11,
			[222] = 12,
			[223] = 14,
			[224] = 129,
			[225] = 130,
			[226] = 131,
			[227] = 153,
			[228] = 161,
			[230] = 229,
			[231] = 229,
			[232] = 229,
			[233] = 229,
			[234] = 229,
			[235] = 229,
			[236] = 229,
			[237] = 229,
			[238] = 229,
			[239] = 229,
		}
	}
}

local Drawables = {
	["Top"] = {
		Drawable = 11,
		Table = Variations.Jackets,
		Emote = {Dict = "missmic4", Anim = "michael_tux_fidget", Move = 51, Dur = 1500}
	},
	["Gloves"] = {
		Drawable = 3,
		Table = Variations.Gloves,
		Remember = true,
		Emote = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200}
	},
	["Shoes"] = {
		Drawable = 6,
		Table = {Standalone = true, Male = 34, Female = 35},
		Emote = {Dict = "random@domestic", Anim = "pickup_low", Move = 0, Dur = 1200}
	},
	["Neck"] = {
		Drawable = 7,
		Table = {Standalone = true, Male = 0, Female = 0 },
		Emote = {Dict = "clothingtie", Anim = "try_tie_positive_a", Move = 51, Dur = 2100}
	},
	["Vest"] = {
		Drawable = 9,
		Table = {Standalone = true, Male = 0, Female = 0 },
		Emote = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200}
	},
	["Bag"] = {
		Drawable = 5,
		Table = Variations.Bags,
		Emote = {Dict = "anim@heists@ornate_bank@grab_cash", Anim = "intro", Move = 51, Dur = 1600}
	},
	["Mask"] = {
		Drawable = 1,
		Table = {Standalone = true, Male = 0, Female = 0 },
		Emote = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 800}
	},
	["Hair"] = {
		Drawable = 2,
		Table = Variations.Hair,
		Remember = true,
		Emote = {Dict = "clothingtie", Anim = "check_out_a", Move = 51, Dur = 2000}
	},
}

local Extras = {
	["Shirt"] = {
		Drawable = 11,
		Table = {
			Standalone = true, Male = 252, Female = 74,
			Extra = { 
						{Drawable = 8, Id = 15, Tex = 0, Name = "Extra Undershirt"},
			 			{Drawable = 3, Id = 15, Tex = 0, Name = "Extra Gloves"},
			 			{Drawable = 10, Id = 0, Tex = 0, Name = "Extra Decals"},
			  		}
			},
		Emote = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200}
	},
	["Pants"] = {
		Drawable = 4,
		Table = {Standalone = true, Male = 61, Female = 14},
		Emote = {Dict = "re@construction", Anim = "out_of_breath", Move = 51, Dur = 1300}
	},
	["Bagoff"] = {
		Drawable = 5,
		Table = {Standalone = true, Male = 0, Female = 0},
		Emote = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200}
	},
}

local Props = {
	["Visor"] = {
		Prop = 0,
		Variants = Variations.Visor,
		Emote = {
			On = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600},
			Off = {Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200}
		}
	},
	["Hat"] = {
		Prop = 0,
		Emote = {
			On = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600},
			Off = {Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200}
		}
	},
	["Glasses"] = {
		Prop = 1,
		Emote = {
			On = {Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400},
			Off = {Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400}
		}
	},
	["Ear"] = {
		Prop = 2,
		Emote = {
			On = {Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900},
			Off = {Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900}
		}
	},
	["Watch"] = {
		Prop = 6,
		Emote = {
			On = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200},
			Off = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200}
		}
	},
	["Bracelet"] = {
		Prop = 7,
		Emote = {
			On = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200},
			Off = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200}
		}
	},
}

LastEquipped = {}
Cooldown = false

local function PlayToggleEmote(e, cb)
	local Ped = PlayerPedId()
	while not HasAnimDictLoaded(e.Dict) do RequestAnimDict(e.Dict) Wait(100) end
	if IsPedInAnyVehicle(Ped) then e.Move = 51 end
	TaskPlayAnim(Ped, e.Dict, e.Anim, 3.0, 3.0, e.Dur, e.Move, 0, false, false, false)
	local Pause = e.Dur-500 if Pause < 500 then Pause = 500 end
	IncurCooldown(Pause)
	Wait(Pause) -- Lets wait for the emote to play for a bit then do the callback.
	cb()
end

function ResetClothing(anim)
	if type(anim) == "table" then
		anim = true
	end
	local Ped = PlayerPedId()
	local e = Drawables.Top.Emote
	if anim then TaskPlayAnim(Ped, e.Dict, e.Anim, 3.0, 3.0, 3000, e.Move, 0, false, false, false) end
	for k,v in pairs(LastEquipped) do
		if v then
			if v.Drawable then SetPedComponentVariation(Ped, v.Id, v.Drawable, v.Texture, 0)
			elseif v.Prop then ClearPedProp(Ped, v.Id) SetPedPropIndex(Ped, v.Id, v.Prop, v.Texture, true) end
		end
	end
	LastEquipped = {}
end

RegisterNetEvent('qb-radialmenu:ResetClothing')
AddEventHandler('qb-radialmenu:ResetClothing', ResetClothing)

function ToggleClothing(whic, extra)
	local which = whic
	if type(whic) == "table" then
    	which = tostring(whic.id)
	else
		which = whic
	end
	Wait(50)

    if which == "Shirt" or which == "Pants" or which == "Bagoff" then
        extra = true
    end
	if Cooldown then return end
	local Toggle = Drawables[which] if extra then Toggle = Extras[which] end
	local Ped = PlayerPedId()
	local Cur = { -- Lets check what we are currently wearing.
		Drawable = GetPedDrawableVariation(Ped, Toggle.Drawable), 
		Id = Toggle.Drawable,
		Ped = Ped,
		Texture = GetPedTextureVariation(Ped, Toggle.Drawable),
	}
	local Gender = IsMpPed(Ped)
	if which ~= "Mask" then
		if not Gender then Notify("This ped model does not allow for this option.") return false end -- We cancel the command here if the person is not using a multiplayer model.
	end
	local Table = Toggle.Table[Gender]
	if not Toggle.Table.Standalone then -- "Standalone" is for things that dont require a variant, like the shoes just need to be switched to a specific drawable. Looking back at this i should have planned ahead, but it all works so, meh!
		for k,v in pairs(Table) do
			if not Toggle.Remember then
				if k == Cur.Drawable then
					PlayToggleEmote(Toggle.Emote, function() SetPedComponentVariation(Ped, Toggle.Drawable, v, Cur.Texture, 0) end) return true
				end
			else
				if not LastEquipped[which] then
					if k == Cur.Drawable then
						PlayToggleEmote(Toggle.Emote, function() LastEquipped[which] = Cur SetPedComponentVariation(Ped, Toggle.Drawable, v, Cur.Texture, 0) end) return true
					end
				else
					local Last = LastEquipped[which]
					PlayToggleEmote(Toggle.Emote, function() SetPedComponentVariation(Ped, Toggle.Drawable, Last.Drawable, Last.Texture, 0) LastEquipped[which] = false end) return true
				end
			end
		end
		Notify("There dont seem to be any variants for this.") return
	else
		if not LastEquipped[which] then
			if Cur.Drawable ~= Table then 
				PlayToggleEmote(Toggle.Emote, function()
					LastEquipped[which] = Cur
					SetPedComponentVariation(Ped, Toggle.Drawable, Table, 0, 0)
					if Toggle.Table.Extra then
						local Extras = Toggle.Table.Extra
						for k,v in pairs(Extras) do
							local ExtraCur = {Drawable = GetPedDrawableVariation(Ped, v.Drawable),  Texture = GetPedTextureVariation(Ped, v.Drawable), Id = v.Drawable}
							SetPedComponentVariation(Ped, v.Drawable, v.Id, v.Tex, 0)
							LastEquipped[v.Name] = ExtraCur
						end
					end
				end)
				return true
			end
		else
			local Last = LastEquipped[which]
			PlayToggleEmote(Toggle.Emote, function()
				SetPedComponentVariation(Ped, Toggle.Drawable, Last.Drawable, Last.Texture, 0)
				LastEquipped[which] = false
				if Toggle.Table.Extra then
					local Extras = Toggle.Table.Extra
					for k,v in pairs(Extras) do
						if LastEquipped[v.Name] then
							local Last = LastEquipped[v.Name]
							SetPedComponentVariation(Ped, Last.Id, Last.Drawable, Last.Texture, 0)
							LastEquipped[v.Name] = false
						end
					end
				end
			end)
			return true
		end
	end
	Notify("You are already wearing that.") return false
end

RegisterNetEvent('qb-radialmenu:ToggleClothing')
AddEventHandler('qb-radialmenu:ToggleClothing', ToggleClothing)

function ToggleProps(whic)
	local which = whic
	if type(whic) == "table" then
    	which = tostring(whic.id)
	else
		which = whic
	end
	Wait(50)

	if Cooldown then return end
	local Prop = Props[which]
	local Ped = PlayerPedId()
	local Gender = IsMpPed(Ped)
	local Cur = { -- Lets get out currently equipped prop.
		Id = Prop.Prop,
		Ped = Ped,
		Prop = GetPedPropIndex(Ped, Prop.Prop), 
		Texture = GetPedPropTextureIndex(Ped, Prop.Prop),
	}
	if not Prop.Variants then
		if Cur.Prop ~= -1 then -- If we currently are wearing this prop, remove it and save the one we were wearing into the LastEquipped table.
			PlayToggleEmote(Prop.Emote.Off, function() LastEquipped[which] = Cur ClearPedProp(Ped, Prop.Prop) end) return true
		else
			local Last = LastEquipped[which] -- Detect that we have already taken our prop off, lets put it back on.
			if Last then
				PlayToggleEmote(Prop.Emote.On, function() SetPedPropIndex(Ped, Prop.Prop, Last.Prop, Last.Texture, true) end) LastEquipped[which] = false return true
			end
		end
		Notify("You dont appear to have anything to remove.") return false
	else
		local Gender = IsMpPed(Ped)
		if not Gender then Notify("This ped model does not allow for this option.") return false end -- We dont really allow for variants on ped models, Its possible, but im pretty sure 95% of ped models dont really have variants.
		local Variations = Prop.Variants[Gender]
		for k,v in pairs(Variations) do
			if Cur.Prop == k then
				PlayToggleEmote(Prop.Emote.On, function() SetPedPropIndex(Ped, Prop.Prop, v, Cur.Texture, true) end) return true
			end
		end
		Notify("There dont seem to be any variants for this.") return false
	end
end

RegisterNetEvent('qb-radialmenu:ToggleProps')
AddEventHandler('qb-radialmenu:ToggleProps', ToggleProps)

for k,v in pairs(Config.Commands) do
	RegisterCommand(k, v.Func)
	--log("Created /"..k.." ("..v.Desc..")") -- Useful for translation checking.
	TriggerEvent("chat:addSuggestion", "/"..k, v.Desc)
end

if Config.ExtrasEnabled then
	for k,v in pairs(Config.ExtraCommands) do
		RegisterCommand(k, v.Func)
		--log("Created /"..k.." ("..v.Desc..")") -- Useful for translation checking.
		TriggerEvent("chat:addSuggestion", "/"..k, v.Desc)
	end
end

AddEventHandler('onResourceStop', function(resource) -- Mostly for development, restart the resource and it will put all the clothes back on.
	if resource == GetCurrentResourceName() then
		ResetClothing()
	end
end)

function log(l) -- Just a simple logging thing, to easily log all kinds of stuff.
	if l == nil then print("nil") return end
	--[[if not Config.Debug then return end
	if type(l) == "table" then print(json.encode(l)) elseif type(l) == "boolean" then print(l) else print(l.." | "..type(l)) end]]
end

function GetKey(str)
	local Key = Keys[string.upper(str)]
	if Key then return Key else return false end
end

function IncurCooldown(ms)
	Citizen.CreateThread(function()
		Cooldown = true Wait(ms) Cooldown = false
	end)
end

function PairsKeys(t, f)
	local a = {}
	for n in pairs(t) do table.insert(a, n) end
	table.sort(a, f)
	local i = 0
	local iter = function ()
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]] end
	end
	return iter
end

function Text(x, y, scale, text, colour, align, force, w)
	local align = align or 0
	local colour = colour or Config.GUI.TextColor
	SetTextFont(Config.GUI.TextFont)
	SetTextJustification(align)
	SetTextScale(scale, scale)
	SetTextColour(colour[1], colour[2], colour[3], 255)
	if Config.GUI.TextOutline then SetTextOutline() end	
	if w then SetTextWrap(w.x, w.y) end
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function FirstUpper(str)
	return (str:gsub("^%l", string.upper))
end

function Notify(message, color) -- However you want your notifications to be shown, you can switch it up here.
	QBCore.Functions.Notify(message, color)
end

function IsMpPed(ped)
	local Male = GetHashKey("mp_m_freemode_01") local Female = GetHashKey("mp_f_freemode_01")
	local CurrentModel = GetEntityModel(ped)
	if CurrentModel == Male then return "Male" elseif CurrentModel == Female then return "Female" else return false end
end

RegisterNetEvent('dpc:EquipLast')
AddEventHandler('dpc:EquipLast', function()
	local Ped = PlayerPedId()
	for k,v in pairs(LastEquipped) do
		if v then
			if v.Drawable then SetPedComponentVariation(Ped, v.ID, v.Drawable, v.Texture, 0)
			elseif v.Prop then ClearPedProp(Ped, v.ID) SetPedPropIndex(Ped, v.ID, v.Prop, v.Texture, true) end
		end
	end
	LastEquipped = {}
end)

RegisterNetEvent('dpc:ResetClothing')
AddEventHandler('dpc:ResetClothing', function()
	LastEquipped = {}
end)
