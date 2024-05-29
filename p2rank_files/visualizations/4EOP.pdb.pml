
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
        
        load "data/4EOP.pdb", protein
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
 
        load "data/4EOP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5162,5172,5179,5189,5193,5184,4764,4661,4662,4663,4612,4613,5199,5200,5207,4609,4608,5186,5188,4780,4781,5163,5164,5166,5167,5168,5606,5208,5608,5609,5587,5223,5580,5031,5030,5681,5680,5682,4624,5686,5688,5685] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [1172,1072,1100,1101,702,706,1074,1075,1076,709,517,735,104,670,672,674,683,685,686,693,694,100,103,675,679,653,654,649,283,650,652,1173,165,1180,109,112,119,651,516,107,163,164,266,106,1079,1084,1177] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [538,246,539,541,7525,7526,210,52,53,8,9,12,42,7935,4,547,548,550,7516,7967] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [3433,3023,3024,4708,4547,5079,4556,4557,4558,3465,3457,3458,5052,5053,5061,5156,3014,4758,4744,5062,5064] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [2220,2216,2209,2210,2211,2213,2214,2218,2219,2422,2429,2436,2428,2463,2467,1248,1251,1254,1260,1462,1460,1461,1487,1493,1471,1472,1482,1486,1495,1499,2441,2493,2444,1494,2233,2244,2433,2249,2250,1259,1246,1234,1239] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [2877,2881,2884,2882,4407,4405,2875,3545,3732,3734,3730,3546,3696,3673,3702,3706,4419,4393,2885,1250,1266,1267,3581,3580,1237,3612,3699,3675] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [2587,2605,2604,3902,3538,3781,3841,3829,3858,3828,2591,3779,3830,2733,3778,3844,2974,3880,3881,2562,2943,2912,2939,2940,2913,2916,3789,2937,2946,3521,3531,3526,3529,3532,3785] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [7090,8023,8033,7106,7107,7442,7445,7448,7476,7414,7441,7439,8283,7064,7097,8338,8322,8273,8324,8277,8272,8335,8352,8323,8028,8374,8375,8034,8040,8031,7418,8396,8275] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [525,489,491,492,1159,526,662,682,1158,7179,7180,667,2370,897,1117,1142,1114,502,7162,7151,7158,7160] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [8054,8055,8056,8057,5736,5731,7687,7688,7392,7395,5735,5744,5745,5797,5774,5775,5777,5795,7377,8050,7393,7394,8048,7391,5773,5769,5758,8082,8083] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [5773,5758,5761,8081,8083,8114,8227,8229,8228,8112,8201,8198,8208,5760,7383,7386,8048,8047,5774,5775,7377] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [6995,6967,5742,6930,6969,6002,5767,5768,5995,5994,6929,6940,6927,6928,6970,5759,5756,5762,5743] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [3552,3553,3554,3555,1226,1227,1228,1236,1237,3186,1287,1269,1289,3581,3580,1250,1266,1267,1223,1224,3185,997,996,2893,2890,2891,3546] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [5637,6886,5622,5625,5650,5666,5667,5006,5005,2678,2677,5176,5196,5181,5641,2658,2660] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [1462,1461,1449,1448,1904,2211,2204,2219,1851,1853,1895,1896,1897,1867,1868,1869,1862,1887,1891] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [7163,7164,7165,7161,7162,7115,7510,7514,7116,7114,525,481,489,1159,524,526,475,477,523,471,472,478,479,480,488,474] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [6734,6735,6736,6378,6727,5955,5956,6413,5969,5970,6369] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [4908,5706,5715,4880,4888,5703,4910,4881,7701,5705,5711,7692,7724,7663,5803,5806,5807] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [6976,6978,8581,6968,8122,8120,6965,8577,8578,8131,8132,8133,8087,8118,8119,6938] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [1059,1066,1057,1068,1381,1367,1369,1067,1593,724,726,1073,1362,1364,1380] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [1245,3620,2457,2459,2461,3585,3618,3629,3630,3631,4086,4087] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [345,316,318,3425,3426,314,315,3424,581,593,599,3385,3386,3388,3384,3394] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [8979,8980,8981,8982,8465,8467,8434,8436,8670,8672,8443,8701,8702,8703,8705,8680] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [3497,3499,422,3493,3496,458,461,3508,3510,3511,2558,2589] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        