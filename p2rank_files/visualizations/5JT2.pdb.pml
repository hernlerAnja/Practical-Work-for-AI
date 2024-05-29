
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5JT2.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5JT2.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [227,229,136,138,140,694,696,679,691,705,739,740,742,2645,678,682,685,686,702,707,680,158,144,153,159,711,712,1063,155,160,161,206,207,208,162,164,166,167,170,171,305,1085,1086,1087,1088,1089,1090,1059,1068,1169,1175,1176,306,1060,548,657,658,662,687,546,290,288,291,293,298,640,302,177,187,321,179,1170,1188,1189,1190,1191,470,471,545,1186,1187,643,644,1197,1199,2076,2095,2582,139,2605,2608,2089,2091,2641,2642,2643,2644,2615,2080,741,695,2156,2158,2599,2588,2594,2213,2135,2136,2581,2583,2215,2992,2994,2990,2991,2993,2995,2096,2097,2098,2099,2094,2137,2103,2106,2614,2964,2968,2965,2585,2230,2231,2107,3104,2973,3074,3081,2953,2954,3080,2114,3075,3093,3096,2214,2227,2547,2546,2560,2561,2369,2442,2444,3091,3092,3071,3094,2455,2458,2441] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5952,6448,6449,5931,5932,5933,4019,6454,6460,6474,4016,4018,4020,6471,4567,5993,6314,6455,6312,6858,6860,6084,6409,6236,6412,6413,6237,6960,4542,4039,4564,4080,4949,4951,4569,4079,4081,4178,4179,4405,4950,4952,5031,4175,4506,5061,5050,5051,5052,5053,5039,4035,6509,6510,6511,4600,4602,4603,4604,4599,4574,4038,4046,4047,4050,4040,4041,4042,4044,4921,4573,4930,4051,4057,5037,5951,6836,6506,6476,6480,6481,5948,5954,5955,5963,5964,5994,6832,6833,6861,6862,6863,5957,6087,6088,6942,6948,6949,6943,6961,6962,6964,4557,4558,4541,4547,4102,6465,4100,4163,4544,4548,4549,4505,4502,4519,4520,4403,4409,4410,4415,4416,4402,5048,4328,5049,6015,6447,6451,6456,6072,6427,6426,6431,6324,6311,6325,6328,6233] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [4418,4427,4429,4431,3939,4413,4414,3955,4127,4128,3944,3937,3938,4330,3922,3928,4362,4363,4332,2180,2468,2176,1990,2015,2179,2469,1998,2457,2451,2452,2453,2470,2004,1997,1999,2404,1982] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [5835,5852,5841,5843,5847,5849,5850,42,5851,64,6272,5868,6033,6036,6037,6338,254,255,5857,5877,5897,58,57,59,561,505,506,556,572,48,473,475,573,574,557,570,75,504] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [4978,2189,2190,2191,4529,4969,4970,4984,4987,4382,5018,2184,2185,2183,4377,4368,4411,4413,4414,4394,4369,2167,2165,2166,2192,2182,2040,2043,2044,2045] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [6043,554,557,667,6046,6047,6048,668,666,556,525,5898,1156,512,520,537,1108,1107,1122,1125,1140,271,274,275,1117,672,674,671,5891,5893,5896,5897,6040,6023,6024,6039,6042,6041,6049,6050] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [396,355,394,395,418,411,412,417,415,335,336,354,383,384,356,1198,1220,337,186,1217,1218,29,30,596,600,602,603,604,605,628,631,627,589,319,320,184,322] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [2202,2158,2203,2596,2597,2598,2599,3021,3022,276,278,1117,277,240,693,694,696,229,4115,242] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [4150,4113,4115,6890,4151,4978,4977,4979,6059,6060,242,6888,6889,4555,4556,4558,4101,4102,6462,6463,6465,6015,6464] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [241,242,245,257,258,261,6889,246,6898,6056,6057,260,104,249,98,100,101,102,103,96,6880,6881,6440,6443,6432,6437,6436,6291,6929] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [3012,3030,4133,4134,2566,2571,2574,3013,3022,3983,3984,2472,2570,2421,3061,3978,3980,3981,3982,4119,4122,4124,3976,4130,4131,4132,4114] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [132,2654,2699,2713,2700,129,130,131,124,3015,2600,2601,3017,3037,3007,2743,2744,2595,2594,3000,2655,2715,3003] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [6460,6467,6521,6520,6871,6609,6610,4012,4010,4011,6565,6579,6581,6566,6462,4009,4004,6883,6875,6905,6466] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [4964,4972,4559,4994,4552,4553,5917,5922,5925,4560,4613,4614,5923,5924,4656,4671,4699,4960,4957,4655,4974] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [2069,2070,2071,2072,751,2073,2076,792,793,2064,698,1095,1102,1132,752,1098,837,808,691] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [5906,5902,5905,5920,5903,6364,5881,6382,6383,6078,6096,6095,6405,6387] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [2071,751,2073,2076,2077,749,741,781,2081,792,2147,705,706,739,752] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [3882,3883,3884,3886,2377,2378,2319,2321,2322,2352,2349,2351,1977,1978,2324] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [4568,4611,4612,4613,4614,5924,5934,4656,5930,6004,4655,5938,4642,4601,4643] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [5082,4210,4241,5079,5080,4063,5060,4193,4195,4274,4492,4240] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [2050,2516,2517,2239,2494,2221,2053,2067,2049,2052] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [6228,6210,6263,6768,6953,6962,6965,6973,6977] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [2360,2395,2342,2901,2900,2902,3109,2369,3094,3085] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        