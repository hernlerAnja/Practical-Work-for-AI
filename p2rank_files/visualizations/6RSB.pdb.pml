
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
        
        load "data/6RSB.pdb", protein
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
 
        load "data/6RSB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1133,1227,1232,1233,1234,1235,209,210,211,156,150,155,205,152,1148,342,729,724,726,178,168,169,170,176,177,179,180,160,161,158,1415,1097,1258,1096,358,484,355,356,357,708,193,194,196,188,426,428,1409,174,175,372,445,451,452,455,457,423,411,1249,1250,1087,1252,1273,1248,1262,446,447,450,1274,1388,1389,1390,1392,1122,1123,1124,1119,1128,1149,783,784,785,148,149,153,732,750,751,740,1430] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [2534,2473,2533,2528,2532,2475,2476,2665,3425,3518,3519,3524,3525,3526,3440,3420,3050,3051,3076,3411,3043,3441,2472,3074,3075,3077,2678,2679,2680,2681,3000,2891,3004,3021,3024,3042,3018,3032,2494,2498,2499,2500,3527,2484,2490,2491,2492,2479,2483,2497,2493,2516,2517,2519,3387,3388,3389,3549,3550,3540,3541,3542,2737,2738,2743,2747,2776,2749,2693,2502,2715,2739,2695,3416,3414,2478,3707] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1893,4185,1918,1516,1517,1518,4241,4243,1949,1950,1951,4212,4213,4218,3807,1926,4210,3809,3810,3811,3808,4242] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1933,1958,1959,1960,1973,1824,1825,1817,1820,1811,1900,1927,1972,3660,3674,3675,3676,1902,3815,3826,3834] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4111,4192,4194,4252,1384,4191,4219,4190,1368,1372,1383,1523,1534,4225,4103,4109] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [201,368,348,363,364,112,113,114,218,219,220,682,66,67,68,683,684,202] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [348,112,113,219,108,234,94,682,66,67,683,684] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2686,2542,2543,2976,2388,2389,2390,2391,2975,2687,2691,2711,2527] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3415,3755,3754,3412,3413,3414,4055,4042,4043,3968,3066,3067,3068,4057,3065] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3554,3565,3566,2740,2742,2502,2503,2739,2737,3546,3550,3542,3544,2501,3681,3684,3701,3680] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1750,1462,774,1676,775,1763,1765,1766,1751,1122,1123,1120,1463] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2435,2437,2542,2543,2557,2976,2418,2417,2388,2974,2975,2436] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3741,4090,4171,4057,1860,1864,1850,4145,4146,4170] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4517,3285,3279,3290,4515,3865,3313,3345,3312,3885] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3688,3691,3680,3667,3687,3713,3717,3549,3766,3767,3379,3846] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        