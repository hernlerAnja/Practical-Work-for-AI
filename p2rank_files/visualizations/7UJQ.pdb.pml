
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
        
        load "data/7UJQ.pdb", protein
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
 
        load "data/7UJQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [131,132,4453,4454,2266,2268,2269,4330,2263,2257,2258,2261,2260,110,111,112,133,108,4469,4478,4481,4482,4483,4351,4352,4353,4462,4474,4476,2429,2430,2431,2575,2576,3337,2276,2277,2278,2279,2280,2299,2300,2289,2291,2292,2293,2294,2445,2446,2314,2427,2428,2313,2417,2803,2805,3344,2539,4499,4500,4503,2283,4327,4321,2534,2535,2538,2507,2510,3322,3314,3315,3316,3319,3320,3321,3209,3335,2676,2800,2801,2802,2829,2675,2804,2806,2810,3197,3185,3186,3198,3199,2852,2850,2851,3226,2845,3225,2826,2833,2840,2841,2842,2877,2878] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [135,138,139,159,288,289,290,1184,1185,1188,1189,1191,1190,1183,151,438,406,408,437,680,172,173,119,276,677,679,674,543,1099,701,684,697,703,675,676,678,1204,1205,1206,400,401,1214,4376,4379,1212,1213,142,150,152,153,3797,395,396,402,403,397,373,367,369,370,372,129,122,123,125,128,2269,724,726,1071,1072,1083,2273,2274,2270,2272,4330,4329,1100,116,117,120,719,716,700,4475,4476,4477,4451,1043,1060,4358,4359,4338,4350,4352,4372,4447,3781,4446,3778,4428,4429,3800] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4460,4468,4475,4451,4357,4368,4366,4361,4471,4494,3817,3809,3813,4384,4390,4372,4382,4383,4380,142,3793,3795,4385,152,3797,3480,3481,4466,3782,3810,4463,4464,4447,3781,3787] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3004,3233,3234,3279,3273,3274,3276,3007,3258,2888,3263,3264,3272,2889,2951,2952,2918,2977,3003,3000,2978,2979,2981,2980] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [853,1141,1142,763,854,1133,1137,874,1145,1148,1107,762,1108,882,1161,825,826,881,907,851,852,792,1139] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [719,707,715,716,700,752,116,117,120,2249,2251,2252,2253,724,726,2274,1100,1099] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2903,2905,2906,2909,311,628,630,631,2881,2880,2876,166,298,180,297,652,83,156,145,146,154] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4169,4173,4174,4178,4163,4166,4167,4168,3394,3395,3396,4146,3111,3078,4157,3102,3599,3633,3604,3605,3610,3608,3609,3603,3601] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1641,2283,4317,4318,4327,1643,1665,4321,1711,1710,1627,1663,1652,1636,4340,4341,4342,4343] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [974,976,1498,952,2028,2031,2032,2043,2033,1464,1475,1466,1474,1468,1260,1261,985] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [754,2754,2756,2757,2307,2321,2438,2439,2778,2223,2323] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4509,4510,4491,3816,4403,3458,3539,3563,3457,3459,3454,3455,3851,3854,3856] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [319,321,382,409,598,599,638,640,407,603,380,377,417,415,320] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        