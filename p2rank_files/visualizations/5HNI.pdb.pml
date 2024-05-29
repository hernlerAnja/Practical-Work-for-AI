
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
        
        load "data/5HNI.pdb", protein
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
 
        load "data/5HNI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [96,95,97,94,1005,994,1028,1029,1066,1062,1063,1064,1065,1067,176,475,477,357,1061,190,192,993,526,912,913,118,119,884,893,898,535,482,492,494,501] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [2851,2946,2947,3016,2050,3018,3020,2141,2049,2048,2981,2982,2129,2435,2445,2447,2310,2428,2430,2482,2488,2479,2837,2846,2866,2864,2865,2451,2454,2455,2456] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3629,3631,3601,664,665,1838,1853,3630,3669,3665,3647,716,1833,1835,3589,3564,3598,1810,1841,3591,1811,3587,3593,3594,3588] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1083,1257,1363,1364,1069,1079,1350,1352,1361,1081,1429,1426,1428,1386,1391,1397,1399,1402,1358,1513,1462,1427,1125,1126,1663,1086,1224,1087,1664] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3022,3032,3034,3036,3380,3303,3314,3316,3317,3305,3177,3039,3381,3355,3350,3079] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [957,958,627,522,524,954,956,573,574,619,628,622,625,614,616] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3136,3138,2743,3137,2746,2744,2745,2749,3689,3693,3144,3692,3694,3698,2715,2717,3705,3709,3146,3147] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [2527,2907,2909,2911,2910,2567,2572,2526,2569,2575,2578,2580,2581,2475,2477] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1192,1193,1194,1736,1739,1740,1756,764,762,1741,791,1185,1183,1184,792,793,796,790] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1515,1519,1520,1521,1526,1932,1946,1952,1935,1285,1343,1514,1371,1372,1533,1282,1314,1317,1319,1539] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3486,3238,3267,3270,3272,3899,3905,3885,3492,3888,3472,3474,3479,3324,3325] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2527,2906,2907,2909,2911,2905,2908,2910,2593,2526,2626,2581,2583,2584,2589,2590,2622,2620,2623,2624,2655,2656,2657,2625,2904] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1663,1224,1462,1463,1502,1662,1664,1257,1364,1513] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3177,3416,3615,3616,3617,3455,3466,3317] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1846,1891,1851,1857,1859,1860,3418,3420,3424,3055,3434,3435,3412] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2210,2974,2975,2977,2343,2177,2323,2324] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        