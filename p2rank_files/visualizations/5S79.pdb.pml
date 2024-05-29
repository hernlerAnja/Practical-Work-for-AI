
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
        
        load "data/5S79.pdb", protein
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
 
        load "data/5S79.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3392,3406,3403,3404,3432,3012,3016,3017,3045,2375,3508,3509,3511,3510,3415,3503,3373,3507,3009,2994,3376,3524,3528,3671,3393,3665,2402,2405,2407,3505,3504,2933,2785,2947,2378,2428,2526,2977,2376,2377,2955,3431,2981,2985,2975,2984,2979,2929,2948,2593,2538,2540,2541,2542,2410,2411,2412,2413,2414,2429,2416,2427,2381,2618,3521,3522,3649,2534,3684] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1083,1084,1106,706,707,1094,1095,742,1200,1203,1206,1067,1270,1271,244,1269,116,111,113,115,286,287,288,243,110,135,136,137,84,89,87,85,86,240,242,236,228,665,667,669,629,1125,702,1127,674,684,699,671,1199,633,648,486,1198,647,652,1123,1290] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [930,931,932,2243,910,933,2271,445,939,4230,912,2270,4255,914,4228,4229,4227,454,967,3777,985,3778,443,941,428,444,3757,4218,4220,4253] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3853,3855,3626,3627,3645,3365,3366,3675,3673,3660,3629,3362,3361,3775,3752,3753,4219,3750,3719,3723,3676,3725,3792,3793,3804,3882,3709,3777] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1057,1266,1275,1278,1279,1281,1282,1285,1335,1337,1066,1288,1056,1460,1462,1464,1405,1052,1500,1331,1362,1364,1829,1404,1365,1416,1387,1061] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1313,1314,1315,1730,1731,1732,1799,1290,1291,1326,1328,1739,1604,1814,1793,1796,1800,1801,1082,1084,1096,1097,1098,1099,722,724,726,1090] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3703,4203,4204,3702,4196,3685,3391,3407,3408,3399,3714,3994,3032,3034,3036,3701,4120,4121,3393,3406,3400,3405] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4596,4599,4601,4607,3897,4590,4611,3861,3871,3834,3836,3873,3874,3838,3266,3267,3268,3270,3279,3863,3864,3865] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [954,1478,1480,1482,955,2241,2242,2228,2229,2235,2236,2225,2231,968,957,1491,1443,1474,1515,2219,2230,2208,1489,1470,1484] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2787,2957,2959,2961,2963,2965,2967,3446,2756,2746,2754,3447,3448,2773,2786,2987,2989,2990,2972] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [753,787,1162,1164,697,754,1134,791,802,869,833,835] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [514,28,42,222,640,641,179,180,181,182,184,23,178,183,509,508,185,207] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3007,3438,3467,3165,3469,3484,3439,3180,3182,3055,3056,3133,3135,3129,3137,3053] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [677,679,680,487,488,657,653,654,655,656,658,469,439,447,449,1142,1144,662] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2919,2922,2924,2348,2921,2923,2346,2347,2917,2920,2825,2827,2842,2532,2330,2331,2332,2333,2941,2329] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [384,385,482,1213,483,1189,1195,1212,1199,350,486] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        