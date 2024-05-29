
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
        
        load "data/4D2P.pdb", protein
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
 
        load "data/4D2P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [159,160,161,193,194,166,8834,8810,8808,8823,8825,167,169,8139,359,360,8792,8793,8971,8972,9040,9041,8484,8457,8458,8821,8816,141,208,142,210,8468,191,190,184,163,173,139,627,628,333,615,319,22,25,619,8826,9069,9047,9060,9320,9346,9351,335,334,336,351,9044,9048,9056,352,353,617,618,9372,9375,9371,9052,9055,9392,320,8486,34,36,8483,8485,7,6,7929,7930,8941,8849,8850,8939,8942,8943,8447,8448,8446,8439,8441,8442,8456,8039,8040,8041,8149,7907,7909,8173,8174,8944,8947,8948,8949,8950,8963,8135,8114,158,7876,7878,7879,8024,8416,8283,8417,8433,8421,7946,8435] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [6239,6453,6251,6252,6255,2890,2914,6425,6426,6427,2889,2891,6428,6431,2908,6432,3192,2728,2888,3200,3201,2745,2746,2724,6222,6377,6379,2716,6263,6376,2720,2722,2723,2725,2726,2712,2713,6400,6401,2915,2749,5912,5914,5897,2585,6683,2552,6665,5951,6637,6664,6666,6667,3191,6714,6755,2576,6709,6444,5943,6378,5566,5567,5568,5356,5357,5578,5602,5489,6392] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [5338,3765,3767,3647,3768,3675,3676,2705,5331,5336,5337,2850,3242,3109,3247,2703,2755,2756,3108,3107,3268,3283,3284,5320,5326,3265,3267,2704,2772,3272,3274,3282,3769,3773,3774,3775,3776,3660,5344,2740,5339,5343,2961,2963,2965,3789,2733,2735,2865,2866,2867,2975,3000,3243,3029,3294,5369,5371,3648,3649,3652,5361,5493,5367,5368,5209,5804,5496,5317,5387,3321,5313,3291,3310,3312,5385,3798,3872,3873,3618,3619,3636,3875,5346,5345,5350,5512,5513,5510,5511,5506,5500] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [695,696,1114,1206,295,536,667,669,674,308,310,1204,1207,1208,311,1209,402,312,387,388,389,390,426,427,1212,1213,1214,1215,1228,201,309,7887,7895,178,179,180,185,148,149,150,199,200,534,535,1201,1222,688,692,694,217,456,457,670,700,701,699,710,718,1115,721,7889,7922,1086,1087,1099,8088,8089,1075,1058,1098,7881,7888,7890,7884,7898,7900,7902,7868,7875,702] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [1091,8366,1505,1258,1259,1263,1577,1266,738,740,736,1081,1090,1280,1506,1267,1271,1461,1459,1460,7923,7760,7761,8048,8062,8063,8064,8065,8374,8375,8363,8364,8365,1088,1087,1099,8088,8089,1075,1057,1073,1254,1255,7922,7898,7900,7902,7890,7915,7919,1544,7730,7732,1486,1487,1531,7738,7742,1504,7733,1536,1551,1556] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3309,3311,5180,5181,3901,4071,4072,4073,5207,5803,5804,3634,3651,3652,3642,3341,3340,5512,5513,3880,3884,3876,3879,3888,3892,3636,5196,5198,4143,4117,4098,4099,5792,5793,5794,4189] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [2700,2701,5323,2708,2715,6250,2710,2714,6365,6368,6371,6278,6279,6370,5894,5897,5885,5871,5872,2694,5327,5889,5886,5887,5875,5877,5870,5878,2724,6377,2716,6376,2720,2712,2713,2717,2718,6372,6373,6359,5485,5486,5487,5488,5633,6386,6388,5376,5377,5378,5712,5845,5846,5710,5632,5472,5394,5850,5868,5864,6378,5489,5603] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [2490,1171,1151,1153,2487,679,1134,1142,684,1141,1143,2491,505,507,677,678,1191,508,497,676,2450,2455,2456,2459,2426,2449,2451,2454,2488,2458,2482,279,274,2438,541,542,562,564,2081,2082,2083,545,276] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [7669,7634,7636,7637,7660,7604,7627,7628,7633,5451,5456,7616,5717,5718,5719,5721,5740,5738,7259,7260,7261,5852,5853,5854,5855,6298,6355,5683,5684,6306,6315,6317,6307,7629,7632,7608] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [3135,3137,5050,5038,5039,5063,4694,5066,4689,4693,4695,5103,5102,5061,5062,5067,5068,5071,5094,2834,3114,3115,3118,5042,3249,3253,3257,3250,3252,3752,3695,3712,3714,3732,3251,3080,3078,3081] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [8859,8861,8630,8506,6743,6740,6742,6738,6763,6739,8455,8856,8858,8860,8500,8501,8502,8504,6762,8622,8621,8538,8908,8909,8895,8896,6497,8897,8899,8857,8894,6507] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [8269,6507,8645,8658,6506,9848,9851,9844,8905,8906,8907,8268,8682,8681,9847,9842,8254,8255,8256,8259,6501,6509,6502,8908,6511,8644,8646,8649] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [8424,8426,8254,8255,8869,8926,10236,10237,8423,8425,8311,8252,8905,8906,8886,8888,10234,10202,10204,10205,10228,10172] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [254,2381,2210,84,2378,2409,2220,2384,2221,2187,2208,2219] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [4995,2809,2810,4822,4820,5021,4800,4825,4817,4993,4832,4833,4829,4831] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [10129,10127,10154,10155,9974,10131,10134,10136,7983,9996,9994,10006,10007,10005] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [2075,2036,509,512,947,2033,2029,2032,508,521,522,520,923,914,910,911,1172,1173,1174] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [6327,6329,5932,6059,6022,5904,6290,5929,5994,6024,6027,5993] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [3456,3330,3331,3332,3326,3328,3421,3682,3684,3685,3687,3683,3720,3721,3723,3448,3281,3686] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3524,3525,4486,4487,4521,4490,4491,4494,3547,4657,4659,4658,3559,4661,3555,3556] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        