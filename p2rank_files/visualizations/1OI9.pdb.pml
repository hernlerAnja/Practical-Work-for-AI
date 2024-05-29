
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
        
        load "data/1OI9.pdb", protein
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
 
        load "data/1OI9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [145,146,147,96,100,89,92,93,94,95,696,681,682,689,107,108,1160,1162,1159,1066,1061,1054,639,637,504,636,248,645,263,1082,668,662,665,1083,680,683,659,397,641,503,640,265,1155,1154] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [3421,3422,3423,5023,5025,5040,4520,4521,4671,3391,3389,4507,4510,4480,4483,4481,4519,559,556,2988,3398,3430,2989,4707,4500,4501,4499,5013,5014,5022,2979,4708,5117,4721] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [5123,5124,5125,5127,4624,4625,4626,4727,5569,4744,5649,4579,4580,4586,4587,4576,5133,4568,4571,4572,4574,4575,4577,5150,5145,5147,5153,5161,5169,5177,5184,5129,4884,5570,5548,5641,5541,5553,5643,5642,5646,5647] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7449,7450,7857,7859,228,41,42,192,242,30,28,7882,7883,7884,1,2,3,4,6,552,5045,5044,5052,7852,7854,7847,7853,7848,5053,5061,7818,7819,7820,7849,7850,19,20,31,7821,5058,5059,5062,5063,534,535,537,525,526,528,529,7440,629,15,7891] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3510,3693,3577,3663,2846,2849,3692,3666,3545,3546,1232,4368,4370,4356,1247,4382,3668,3673,3150,2855,1249,1251,2840,3151,1248,1206,1209,1210,1219,1205,1208,1218,1243,2850,2842,3520,2856,2858,3509,3511,3517,3518,3519] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [5865,6156,5888,5889,5898,5899,5892,6190,6165,6187,6189,5900,6416,6418,6230,6231,6275,6415,6426,6419,6417,6274,6199,6448,6163,5894,6370] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [511,649,1141,1140,646,7084,1124,2349,1099,1111,1112,1114,7104,229,7455,7456,233,478,479,489,669,654,667,1096,651,679,7086,7082] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [3804,3821,3807,3792,2939,3865,3741,3742,3744,3844,3843,2527,2552,2569,2570,3503,2877,2904,2905,2908,2881,3752,2902,3486,3491,3497,2911] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [6894,5728,5949,6681,6893,6873,6877,6891,5948,5956,5955,5961,6676,6715,6880,6882,6712,6695,5715,5717,5723,6919,5703,5704] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [1423,1435,1436,1843,1844,1870,1872,2190,2191,1828,1837,1424,1862,1866,1879,1437,1440,2197,2198,2199,2189,2183,1842,1446] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5138,5134,5137,5583,5142,4999,2623,2624,5601,2628,2625,2626,2627,4966,5611,5627,5628,5598,6832,5586,4967,4964] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [8036,8152,8153,8038,8122,8007,8124,8125,8126,8127,8128,8132,7301,7971,7972,7310,5735,5736] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [273,274,595,56,58,60,153,154,156,157,158,11,12,612,614,35,36,255,34,52] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [8247,8262,8320,7363,8201,8207,8199,8298,8299,7338,7365,7366,7369,7952,7342,8246,8197,8248,8198,7947,7957,8276,7964,7400] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [3550,3582,3583,3594,3585,2402,2431,2401,2428,4046,4047,4050,2435,2438,2439,2441,4012,3593,3595,3596,4013] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5924,5927,5910,6350,6682,6357,6358,6331,6315,6324,6329,6672,6673,5923] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [5766,7616,7625,5763,5764,5768,4871,4873,7587,5664,5666,5667,5671,5784,4851,4844] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [356,357,358,359,364,1177,386,1179,1183,1184,384,1189,3155,1279,1281,3164,1276] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [2554,3461,3458,3459,3465,3473,3475,3476,2523,409,442,445,2948,3462,3464,3463] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [8057,6903,8505,6889,8046,8055,8044,6892,6890] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [8243,8221,8222,8232,8223,8704,8706,8633,8645,8634,8641,8669,8643,8673,8670,8671,8646] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        