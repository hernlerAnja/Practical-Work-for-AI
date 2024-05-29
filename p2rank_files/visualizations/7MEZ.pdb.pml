
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
        
        load "data/7MEZ.pdb", protein
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
 
        load "data/7MEZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6048,4949,4993,4995,6275,4947,4948,4950,4951,5619,5633,5634,5635,1903,1930,1931,1932,1963,1772,5654,5653,4609,4633,4635,1277,4916,1273,1276,1888,1889,1890,4607,4610,4636,1901,1927,1928,1885,1914,1915,1916,1923,1924,1918,1920,1791,6343,6344,6350,5624,5626,5938,6258,5622,6259,6345,6346,6265,5935,6369,5932,5933,5923,6080,6105,6106,6102,6103,6104,6132,4632,4638,4643,6101,4645,4646,1303,1305,6131,6133,1953,1954,1955,6167,6168,6169,6170,1349,6078,6081,4640,6242,6248,6235,6045,6044,6249,6134,6135,6137,6176] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [6914,6915,6995,6382,6385,6389,6396,5972,5973,5974,5996,6996,7002,7003,5775,6887,7026,5756,5757,6889,6890,6891,6419,5772,5954,6353,5812,5743,5744,5746,6337,5790,6336,6254,6256,6994,6361,6359,6358,6341,6348,6355] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [10049,10050,10052,8567,8568,10045,10048,10039,10042,10939,8540,8542,10925,10927,10860,10889,10890,10893,10895,10885,10897,10887,8511,10861,10862,10863,8202,8203,8204,8205,8206,8180,8208,8196,8201,8226,8278,8225,8236,10027,8302,8546,8276] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [7587,7554,7677,3872,3859,3862,4413,4094,4096,4099,4415,3352,3353,2701,4454,4452,4453,3350,4451,4464,4131,4132,4465,4095,4100,7651,3882,3888,3892,3893,3894,3932,3861,3868,3876,4104,7652,4411,4437,4440,7530,4412,4439] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [5663,5262,5263,5640,5235,5597,5598,5599,5639,5661,1780,5662,1781,1782,2052,1238,2053,2081,1256,1257,1802,2089,4907,2090,5229,4902,4904,4905,5237,4906] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [998,1045,4777,5107,4776,1037,992,3403,3404,3152,3150,3401,3402,3405,3406,3409,5072,3397,1020,1021,3234,1012,1013] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [180,181,116,6,7,627,164,573,596,112,118,595,597,517,619,738] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [4787,4781,4782,4785,4818,1072,4778,3207,2197,2202,2209,1038,3181,3182,1035,1063,3183,3185,2195,2993,3209,4487,4488,4760,4761,4485] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [7103,6851,6854,7997,7998,7994,7995,7104,7135,7127,7128,7129,7052,7088,7089,7091,7051,7054,7055,7057,7056,8000,7996,8030,8026,8027,8028,8031,7130,7131,7985,7989,7990,7983,7984,6834,7061,7063,7058,7097] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [6115,6139,6145,7481,7483,7506,4374,4380,4371,4372,4373,4361,6175,6176,6177,4619,4621,1306,4620,4642,4644,4656,4365,4657] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [8009,8011,8007,6502,6504,6432,8038,8003,7964,6876,6870,6873,6880,7968,6407,6409,6410,6444,6889,6890,6888] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [322,358,398,320,321,323,224,772,773,774,40,43,46,47,56,71,49,50,296,249,48] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [3042,3043,3062,3383,3061,3087,3090,2662,2649,3026,3378,3382,7629,7630,3379,3343,2678,2718,3349,3351,2695,2696,2697,2699,2700,2679,2702,3391,2660,2661,2741] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [3323,3330,3333,3337,3341,3342,5066,5065,3371,3374,3119,3121,3335,3361,7627,7629,3380,7610,7617,7616,7611,5075,5046,3316,5077,5078] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [11481,11485,11488,11484,11482,11746,2848,2849,11736,11741,11742,11751,11489,2850,11483,11988,11989,11998,11999,12000,11755,11979,11980,11986,2833,2834,2835] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [1763,1769,1770,1757,5885,5888,1758,5889,5896,5893,1772,1903,1931,1972,1973,1975,1899,1902,1998,1994,1997,1980,2001,1938,5902] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [8848,8849,8496,8497,8844,8846,8851,8858,8845,8529,8531,8532,8533,8530,8825,8850,10950,8500,8502,12325,8474,8826,10933] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [8589,8591,8592,9485,9487,9473,8605,8616,8617,10009,10010,9477,8608,8609] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [8529,8531,8880,8532,8533,8960,8961,9000,8849,8846,8845,8875,8878,10922,10950] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [2319,2333,2335,2324,8681,8717,8659,8680,8682,8688,8718,2312,8894,8897,8663,8922,8862,8891,2321,2322,8931,8898,8899,8900] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [10714,10716,10718,11659,11730,11731,11733,11729,11747,10746,10747,11734,11685,10734,10735,10736,10738,10739] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [4214,4478,4213,4243,4245,4246,4212,4215,3615,4216,2982,2985,2989,3613,3594,3595,2979,2405,2408,3599,4185,4187,4183,4219] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [5757,6891,7026,7028,6898,6899,7003,8039,6875] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [3009,3010,3387,3388,3390,3391,2690,4471,2691,4470,4444,4732,4750,4753] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [6744,6700,6701,6704,6741,6743,6745,6222,6740,6204,6206,6205,6706,6707,6699,1389,1950,6714,6208,1345,6712] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [1713,1726,2046,1819,1595,1820,1816,1817,1598,1210,1247,1212,1214,1220,1222,1593,1594,1622,1599] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [10604,10611,10608,10552,10553,10554,10500,10502,10503,10440,10607,10630,10442,10438,12297,10504,10466,10462,10461,10460,10467,10471,10464] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [7149,7164,6813,7869,7870,7695,7697,6811,7721,7833,6815,7722] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [371,379,383,385,222,217,218,219,220,221,394,396,184,185,191,192,216,186,189] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [10774,8206,8162,8164,10814,10815,10898] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        