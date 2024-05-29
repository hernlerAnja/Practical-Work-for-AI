
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
        
        load "data/5S86.pdb", protein
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
 
        load "data/5S86.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2438,2439,2618,2620,3376,3415,3508,3509,3510,3511,2440,2441,2442,2443,2444,2411,2416,3529,3530,3531,3657,3373,2556,2560,2562,2564,2689,2465,2463,2645,2644,2944,3664,3668,3393,3406,3659,3662,3503,2806,3431,3432,2414,2464,2989,2980,2982,2986,2412,2413,3505,2690,2725,3504,2948,2962,2963,2548,2967,3404,3403,3021,3022,3050,3014,3017,2603] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [127,253,254,255,1211,1212,152,129,131,741,99,104,1074,1213,125,126,299,128,130,1090,1091,1102,1104,1226,1236,323,1276,1238,297,298,1280,1293,646,247,150,151,239,664,666,100,102,101,632,251,647,628,1196,1202,1205,1206,1207,1210,1130,1101,1113,705,706,701,1220,1219,1209,489,493,497,500,496,498,1132,499,698,1134,673,670,651,364,1071,1234] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4240,4241,4242,4214,4216,4217,459,468,4280,992,3649,911,931,2252,2280,3749,929,913,881,883,972,3762,938,940,932,457,475,442,1179,3741,3747] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3669,3391,3685,3686,3698,4107,3393,3406,3407,3408,3687,4108,4183,4188,3674,4190,4191,4172,3405,3399,3981,3037,3039,3041] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1289,1293,1295,1294,1821,1810,1829,1306,1091,1103,1104,1105,1106,1329,1089,1097,1611,721,723,1316,1317,1318,1745] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1063,1064,1408,1469,1059,1507,1338,1285,1288,1291,1365,1368,1367,1407,1423,1283,1278,1284] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [962,970,974,2251,1489,1487,2250,2245,2244,2238,2240,2239,1498,1499,2228,2234,2237,953,954,956,1485,1477,1481,1522,1450,1491,1496,1454,1452] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3848,3266,3268,3270,3850,3267,3822,3851,3852,3823,3825,4578,3858,3860,3861,3821,3884,3279,4599,4584,4590,4587,4588,4589] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2994,2995,2778,2780,3446,3448,2770,2969,2970,2972,2808,2968,3490,2807,2794] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [502,653,654,656,678,676,661,483,1192,679,461,453,463,1149,1151] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [233,522,57,193,194,195,196,197,198,199,29,639,528] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3467,3452,3466,3060,3061,3012,3104,3146,3148,3182,3115,3100] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        