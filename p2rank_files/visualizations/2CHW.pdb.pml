
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
        
        load "data/2CHW.pdb", protein
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
 
        load "data/2CHW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4960,464,467,468,1073,1088,1090,1119,1114,1116,1118,1115,4936,4957,4958,3372,3395,3396,3407,4959,3758,4935,4961,3399,3678,3713,3709,3711,3712,3714,3679,4474,4484,4488,4489,959,4490,4987,5099,5100,5081,5097,5114,1150,1149,4899,4475,5120,5117,5130,3757,1142,4984,5024,5021,5022,1140,1141,548,4988,5063,5064,5057,4983,4989,4993,5051,519,540,3408,3409,1075,1076,1077,3375,496,3376,1072,1103,1105,497,5023,5025,520] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4828,5857,5858,5252,5742,5770,5850,4601,4665,4667,4809,4586,4600,4645,4827,4598,4599,4643,4594,4659,4829,5769,5213,5849,5847,5274,5191,5196,5203,4807,5207,5208,5192,4649,4650,5210] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1607,3214,3215,3217,6307,6338,6339,3209,3203,6282,3216,3226,3228,2635,6427,6393,6395,6426,6429,2624,2870,2645,6273,2625,3175,3176,2857,2858,2859,2867,3178,2894,2895] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [5300,5332,6761,6763,6765,5357,5358,5359,5340,5341,5344,5347,5729,5730,5262,5265,5745,5299] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [967,968,969,1239,1268,3999,3668,3670,3998,1276,3997,3994,4023,4025,4026,3992,4493,4494,4495,4452,4453,4517,4454,3698,4062,4016,4018,3675,3664,3665,3672,446,448,3666,429,430,3677,978,4496,4498,3676] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [5681,5687,5696,5689,6443,6444,6419,6420,5876,5877,5880,5882,5883,5860,5861,5862,4917,4919,6299,6323,6357,6356,5863,6301,6331,6417,6379,6421,6355,6364,6369] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3418,3420,3141,3143,497,498,3383,3384,3351,3128,3137,3124,3135,5032,495,5000,4992,4994,6256,6257,6234,6232] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [183,2308,3870,2309,2305,230,235,236,194,2301,201,202,203,204,2039,211,212,195,2045,2047,2303,2041,2129,3540,225,228] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [6347,6348,6349,6343,2259,6342,2260,2271,2273,2272,6353,6354,6359,6362,6350,4859,4876,3838,3811,3809,3491,3819,2265,3791,3816] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [452,470,449,454,455,409,440,3661,3648,3649,3365,3368,3646,3655,382,386,408,410,412,414,375,415,418,413,462,473,474,475] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3259,3242,2975,2976,2977,3007,3009,3005,1899,1887,1890,1893,1897,2103,2463,2462,1881,2466,2467,2952,3250] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3679,978,4489,4496,4497,4498,959,4499,468,1088,4493,4495] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4756,944,950,956,958,959,4508,4768,4769,4778,4787,4770,4509,4711,4710,4743] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [683,687,692,946,4734,4735,4736,4748,4745,666,668,663,664,1204,4733,4738] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [5627,5842,5625,5635,5636,5640,5932] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        