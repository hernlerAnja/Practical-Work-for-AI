
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
        
        load "data/4JVG.pdb", protein
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
 
        load "data/4JVG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2961,3206,3208,3223,3224,3183,3184,3185,3207,3174,1103,3182,3175,3176,2741,230,238,241,248,2981,2982,244,2569,2570,2571,245,648,647,2720,529,530,496,497,2603,1151,2724,2727,498,2318,2321,910,549,485,490,2314,2317,908,2578,2563,2564,2719,1109,1110,1111,1125,1127,1135,651,673,1102,1101,1112,654,676,1134,886,887,888,889,1133,506,505,855,878,877,2983,2929,2951,3201,2928,2950,2959,2960,2962] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [6756,7415,7401,7241,7389,7395,7396,7398,7402,7403,7405,7242,6747,7185,7186,7238,7240,7223,7239,7228,7234,7315,7410,7412,7413,7414,7416,7288,7407,7409,7289,6872,6651,6857,6509,6510,6647,6648,6649,6675,6676,6677,6644,6667,6668,6669,6704,6638,6492,6493,6495,6497,6502,6506,6410,6411,6412,6494,6919,6921,6925,6362,6363,7236,7444,7442,6896,7317,7319,6889,6893,6894,6899,6914,6916,7316,7314,6892,6876] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [6732,7369,5269,4836,5268,5270,5271,7336,7343,7346,5280,5292,5301,5303,5278,5279,5294,5296,4412,4816,4409,4413,4819,4822,4664,4665,4666,4653,5318,5319,5024,5054,5055,5056,5302,4698,4815,6482,5023,7362,7090,7089,4416,7144,7112,4841,6885,7337,7335,7384,7385,6730,6731,6719,6727,6888,6902,6906,6907,7368,6740,7122,6739,7142,7121,7123,7120,7111,6479,6478,6764] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [176,178,177,1178,1180,1080,1082,691,1081,1054,1167,1173,1175,1176,1177,1179,1161,1181,275,1192,1193,1194,1164,125,128,680,1085,687,1083,623,263,268,272,620,258,259,260,637,642,521,520,522,638,519,443,417,442,658,659,660,662,665,666,518] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3154,2758,2760,3127,2764,3251,3253,2198,2201,3237,2732,2735,2738,2755,2753,3156,3158,2595,2515,2333,2250,2331,2711,2251,2332,2334,2336,2341,2345,2693,2696,2202,2516,2728,2733,2715,2731,3248,2204,3249,3240,3246,2490,2348] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [4345,5361,4346,4293,4295,4296,5222,5344,5345,5346,5348,4859,4860,4855,5249,5251,5253,5335,4443,4444,5341,5362,5343,5360,5329,5332,4440,4427,4428,4436,4788,4805,4806,4687,4689,4690,4810,4830,4826,4827,4833,4828,4834,4585,4610,4611,4789,4791] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [3080,3081,3241,3242,3244,3240,2483,2486,2487,2488,2490,3062,3067,3073,3075,3077,3078,2506,2507,2508,3283,3276,3079,2586,2543,2505,2514,2516,2504,2509,2510,2595,2515,2711,3025,2587,3024,3228,3234,3237] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [443,434,514,951,952,417,414,435,989,522,519,513,470,1164,1168,1171,1004,1005,1006,1007,1008,994,1000,1002,1161] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4638,4682,4681,5323,5119,5120,5157,4611,4601,4602,4603,5336,5339,5174,5175,5176,5168,5170,5172,5173,5329,5330,5332,5162] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [6128,6006,6093,6127,6007,6031,6072,188,111,115,118,119,6008,6090,6089,6095,6081,189,171,298,299,300,6064,97,6126,603] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [4738,4739,4761,4762,4451,4452,4766,4771,4249,4251,4434,4784,4246,4247,4248,4250,4264,4265,4231,4232,4219] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4035,4015,4024,4030,4034,4027,4029,4060,4062,6331,6837,6349,6352,6422,6423,3941,3998,4006,6531,6534] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [972,974,936,965,966,968,967,2297,941,943,2298,2091,2092,2093,2107,2127,2085,2100] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [6518,6833,6850,6804,6331,6836,6316,6313,6314,6315,6317,6805,6826,6827,6297,6285,6298,6829] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [83,570,571,63,64,592,593,594,79,80,82,284,283,600,603,96,97] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4395,4405,7166,8270,8239,8241,8271,8269,8243,8246,4402,4403,4404,4241,4243,4387,4238,4239,4240,7165,8213,8212,4374,4375,4376,4379] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [73,75,3005,234,235,236,4080,4051,4052,206,207,208,210,227,70,4048] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [6461,6471,6462,5100,6467,6146,6176,6445,6116,6147,6148,6151,6440,6441,6442,6304,6114,6117] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [2169,2356,2170,2357,2666,2665,2689,2644,2153,2155,2156,2137,2152,2673,2674,2675] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        