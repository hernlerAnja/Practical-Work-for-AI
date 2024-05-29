
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
        
        load "data/1YXU.pdb", protein
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
 
        load "data/1YXU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7415,7400,7803,6761,6762,7774,7786,7892,6759,6807,6789,6791,6806,6808,6786,6788,6790,7900,6787,6757,6758,6763,6764,7418,7775,7365,7366,7367,6905,7355,7378,7802,7206,7889,7891,7897,7898,7893,6922,7350,7207,7351] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [4562,4564,4566,4532,4533,4538,4539,4582,4583,4534,4981,4680,5125,5126,5577,5578,5175,5130,5153,5137,4536,5141,5561,5675,5549,5667,4561,4563,4565,5193,5554,5664,5666,5668,5672,4697,5673,5190] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [540,1134,1221,1223,1224,1135,1225,1226,1229,1118,747,750,122,1106,1111,1107,117,254,1232,118,120,89,90,91,93,95,139,96,119,121,123,138,140,102,687,237,682,252,253,732,730,743,694,697,710,699,698] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [2365,2321,2346,2364,3446,3447,3448,3449,3360,2975,2763,2905,2907,2343,2345,2347,3457,2344,2348,3343,3332,3336,3331,3450,3451,2478,3454,2318,2314,2315,2316,2320,2319,2462,2923,2935,3359,2957,2912,2955] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [4229,4232,4234,71,73,74,76,79,151,3743,3747,3748,3749,3750,3754,150,3733,4213,4224,3755,3758,4192,4197,4199,3759,66,3519,3751,86,83,3507,3739,3514,4235,3776,4242,4244] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [6311,6348,6350,6351,6352,2724,2725,2726,2734,6313,6316,6293,3216,3219,3248,3222,3224,3254,3215,3206,3208,6291,6318,3247,6319,6322,6324,6326,2727] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [4953,8576,5440,5442,4942,4943,4944,4948,8575,8577,8573,8516,8543,8544,8547,8549,8551,5466,8538,5404,5433,5434,8541,5463,5472,8517,8518] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [7466,7436,7470,7769,7779,7762,7778,8034,8327,8335,8336,8052,8061,8063,7463,7770,8294,8320] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [5836,6138,5809,6111,5827,6069,6095,6097,6103,5238,5544,5545,6101,6102,6104,6110,5209,5211,5212,5553,5205,5245] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [1652,1659,1660,1102,795,1626,1101,1667,1384,1668,1695,1393,802,766,768,769,1110] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [2548,2551,2552,2535,2539,2540,2542,2526,3471,3472,3478,3470,2650,2657,2340,3456,2495,3580,2336,2337,2339,2349,3457,3302,2547] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [3877,2991,3851,2993,2994,3884,3886,3326,3327,3335,3891,3893,3618,3892,3609,3020,3027] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [5550,5561,5675,5549,4556,4557,4563,4565,5554,4553,4555,4552,4554,5808,5794,5802,5520,5536,5537,5696] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [6209,6222,6225,6226,4374,4375,4379,3416,6199,6206,6210,6211,6167,6171,6172,6173,6174,6169,6195,6197,4380,4381,4382,6115,4364,4367,4366] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [7761,8033,7745,6777,6778,6779,6780,6781,6788,6790,7900,8019,7786,7775,7762,7899,7921] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [5614,5634,6597,5615,6600,8451,6591,6592,6593,6585,6582,6584,6598,8399,8350,8352,8396,8395,8392,8394,8431,8435,8422,8420,8421,8447,8434,8340] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [86,104,96,99,102,4201,89,90,83,95,4182,4185,4186,4196,4200,4193,4189,4194,4195,103,3710,3713,3691,3647,3709,3646,3736] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [1093,112,1232,1246,1252,110,111,120,1077,1094,1247,1253,1355,1351,122,1111,1107,1118,1365] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [2334,2335,2336,2337,2345,3457,3302,3318,3343,3319,3336,3580,3576,3584,3590,3478,3456] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [8453,8451,5631,6591,5384,4964,5632,5634,5378,5381,5405,5406,5380,8442,8443,8447,8458,4956,4958,8436,5408] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [2245,2469,2470,2488,2269,2268,2292,2822,2900,2244,2489,2842,2843,2883,2884] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [4235,4239,4246,4242,3212,6288,6292,3245,6293,3211,3210,3209,4250,6272] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [8497,6453,6464,6468,5429,5430,5427,5453,8513,8517,8518,8511,8519,8524,6457,6460] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [67,245,66,263,264,3518,3519,3520,43,44,21,658,244] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [4706,4707,5101,5061,4687,4509,4510,4688,4487,4463,4464,4462,5118] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [8587,8591,8592,8703,8706,8586,8588,8589,8550,8551,8552,8738] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        