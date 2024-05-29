
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
        
        load "data/6X3O.pdb", protein
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
 
        load "data/6X3O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2489,2491,2493,2831,2847,3372,3379,2732,2713,2730,3389,3391,2492,2335,2331,2332,2846,2851,3298,3299,3300,2872,2890,2873,2370,2371,2372,2322,2323,2326,2327,2318,2319,2891,2314,2315,2316,2830,2509,2584,3402,2588,3401,2619,3403,2616,2640,2642,2643,2733,3390,3428,3430,2581,3271,3280,3282,2898,2894,2899,2923,3378,3373,3374,2342,3380,3384,2476,2829] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1182,1183,1184,1206,1175,1176,1177,1178,295,297,390,1205,1207,392,673,676,677,694,695,698,702,1102,1103,1104,139,727,119,135,136,684,678,1194,1195,536,537,446,1188,420,120,122,123,174,175,176,293,313,634,280,650,655,651,635,455,423,636,1075,1084,703] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1830,1832,1833,1834,2424,2443,1769,1770,1808,1705,1707,1708,1709,1824,1827,1839,1817,1861,1862,1863,2258,2428,2429,1643,1687,1693,1694,1696,1684,1685,1692,1667,1668,1669,1670,1679,1688,1704,1851,1582,1848,1585,1618,1622,1641,1642,1673,1823,1854,1860] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [216,218,31,220,221,222,223,274,253,254,255,257,545,547,542,543,544,546,548,541,264] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2353,3404,3405,3408,3439,3524,2354,3476,3480,2343,3247,3249,3246,3377,3547] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2470,2741,2743,2744,2227,2738,2739,2740,2742,2414,2417,2416,2418,2419,2449,2450,2451,2737,2225] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1050,1051,1053,1180,1208,1209,1212,1328,147,1284,1280,1281,1351,154,156,1243,1181,1182,1184,1204] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3079,3044,3048,3327,3334,3336,3069,3070,2932,2934,2989,2991,3012,2986,2889,3333,3326,3043] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1366,1382,1723,1337,1381,1638,1596,1646,1666,1656,1658,1327,1328,1078,1079,1080,719] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [737,738,816,885,1139,1140,874,736,847,848,873,852,791,793,849,1130,1131,1137,1138] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        