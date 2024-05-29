
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
        
        load "data/1E8Z.pdb", protein
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
 
        load "data/1E8Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4936,4935,4957,4958,4959,4960,4961,5097,4924,4956,4987,1142,1111,1114,1115,1116,1118,4899,4475,5114,4474,4488,4490,5117,5120,3437,4983,4984,4989,4990,4993,5024,4986,4992,5021,1141,1102,548,538,540,519,5051,466,467,468,3679,975,976,978,1088,1090,3395,3400,3401,3394,3396,3398,3399,3758,3757,3710,3712,3714,3709,3711,3713,957,4484,4489,4498,959,4499,3383,497,3375,3376,3405,3406,3407,3408,3409,1077,1073,1076,1072,1071,1078,1101,1103,1105,5023,5025,496,482,5100,4988,5081,5057,5062] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5191,5190,5196,4667,4808,4809,5208,4600,4895,5850,4850,4866,5851,5852,5853,4829,5192,4828,4645,5847,5848,5842,5844,5845,5846,5764,5106,5107,5108,5109,5210,5216,5737,5749,5251,5765,5246,5274,5237,5245,4612,4599,4586] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [5032,5023,496,3383,497,3376,3405,3407,3408,3418,3420,3137,3141,3143,3144,3136,3124,3382,3384,3351,3126,3128,3135,5000,6252,6251,4994,4990,4993,5024,4992,6227,6229] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [6333,6334,3209,6275,6277,2635,3216,6302,1608,1609,1607,2242,2243,2622,2624,2625,2629,2630,2631,2639,2645,6268,3201,3203,3214,3215,3226,3213,3217,1601,1619,3228,2857,2858,2657,2894,2895,3178,2859,2868,2634,6388,6422,6423,6421,6386,6389,6390,6377,6424] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4917,4919,5857,5872,5691,6318,5870,6351,6352,5875,5877,6325,6326,6415,6364,6374,5869,5676,5684,5682,6294,6296,6439,6441] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [1275,1276,3992,1268,1245,3999,4026,4452,4453,4454,4518,4023,4025,3700,447,3666,3668,3670,429,1277,430,989,1239,448,965,967,968,969,4494,4495,3698,3665] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [2272,2273,3809,3819,3820,3838,2270,3840,3841,4874,4875,4876,3813,5154,3791,6330,2265,2259,2260,4872,6338,6343,3491,2218,2225,2232,2237,6345,6349,6355,6356,6357,6358,6367,6368,4859] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [3869,3871,183,194,235,236,195,211,189,3870,2305,2308,2309,201,203,204,212,2296,2303,2301,2304,2047,228,2066,2079,2073,3835,3872,3539,3540] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [4490,4507,4783,4463,4508,4787,4788,4474,4477,4479,4487,5200,4462,5201,959,4509,4506,5205,5223,4793,4778,4790,5224] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [2279,1951,2249,2251,2281,1610,1587,1933,2282,1625,1556,1570,1949,1950] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [1167,4748,4751,1119,1163,4743,4744,1089,1090,1184,1185,4750,944,950,4740,957,958,959,4509] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [5353,6759,6760,5264,5297,5300,5334,5339,5328,5265,5724,5725,5739,5741,5262] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [5902,5663,5907,6580,6617,6797,6800,6440,6442,6472,6469] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [5163,5164,4180,4839,4628,4630,4841,4183,4837] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [3005,3007,3009,3242,2976,2975,2977,2467,2948,2466,1881,1887,1893,2462,2459,1897,1899,2103] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5557,5059,5060,5077,5594,5595,5593,5552,5553,5554,5562,5564,1137,5061,5063] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [674,838,839,1212,847,849,905,676,677,841,870,872] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [2223,2003,2004,1445,1456,1718,1717,1444,1992,1481,1461,1463,1467,2378,1443,2360] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [4026,4452,4453,4023,3700,4036,4037,4000,3999,4495,3698,3665] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3135,2836,2837,3145,3144,3136,6245,6227,6246,6242,6250] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [3849,3835,3872,3879,3880,3539,3876,2296,2298,2303,2304,2308,3506] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        