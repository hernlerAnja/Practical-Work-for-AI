
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
        
        load "data/5JZJ.pdb", protein
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
 
        load "data/5JZJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3282,3279,3280,3281,3148,2403,2404,3275,3272,2402,2757,2756,2279,2280,2281,2387,2799,3165,3164,2778,2796,2775,2225,2226,2228,2773,3143,3144,3145,3136,2418,2419,2532,2560,3295,3296,3297,3303,2514,2561,2761,2237,2246,2247,2250,2231,2233,2236,2265,2266,2230,404,2806,2224,437,3108,3125,3141,2833,2257,2258,2260,2262,2263,2267,2254,384,3305] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [348,1106,1249,1111,1116,1247,1248,1250,1105,1104,1107,1109,191,201,194,2457,1271,1273,1076,1093,2497,2439,453,454,455,202,206,2440,468,471,1263,1265,1243,346,174,175,177,180,181,190,223,225,717,1132,757,758,760,764,767,1133,794,363,362,364,210,211,347,715,168,169,170,172,173,224,739,331] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1345,3098,3316,3359,3356,1284,1344,1066,1327,3297,3299,3301,1346,1358,3305,1273,2498,3376,3377,3378,3390,1267,1268,1269,1277,460,3382,1265] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1370,2472,2476,2455,2464,2467,2477,1091,1099,1100,1393,1395,1590,1591,1617,1619,2450,804,779,783,785,786,803,806,814,1108,1384,1634,1635,1382,1383,2479,2480] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [394,399,408,2824,2825,2852,416,3415,420,3649,3666,3667,2845,2846,3131,3622,3623,2822,3123,3140,3132,3133,3402,3416,3426,3427] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2503,1440,1709,2484,2500,2505,2684,2511,2512,2681,2683,2432,2494,2434,2682,2510,1352,2507,2722,1436,1675,1706,1708,1439,2538,2570,2670,2545,1454] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1299,1482,1486,1495,2016,2019,2020,1003,1004,1488,1005,1007,2021,2026,2032,1490,1478,1479,1974,1497,977] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [443,445,3471,3472,3724,3726,3727,638,640,377,378,424,434,3697,3407,3408,3466,3468,447,450,3384,451,3486,452,454,639,678,479,623,677,637] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3518,3527,3528,3529,3039,3520,3037,3036,3007,4035,4038,4040,4051,4039,4045,4044,3514,3522] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [799,1138,1139,1140,1203,1205,1207,755,1201,1202,851,852,910,888,825,911,909,1221] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        