
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
        
        load "data/4K3J.pdb", protein
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
 
        load "data/4K3J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1540,1541,1542,1544,1615,3217,1611,1612,1529,1618,1619,1621,1622,1620,1536,2964,1558,1565,1343,1349,1351,1352,1099,1298,1339,1548,1549,1550,1551,1570,1577,1597,1598,1607,1596,1546,3216] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2254,2585,2586,2587,2588,2737,2551,2255,2261,2262,2268,2269,2272,2572,2253,2518,2527,2528,2570,2383,2520,2382,2540,2166,2168,2163,2165,2184,2185,2550] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2552,2557,3115,3117,2201,2202,2538,2544,2199,3091,2560,2204,2207,2203,2197,2200,2198,2366,3090,3092,2205,2206,2214,2215,2874,2367,2534,2878,3116,3131,3080,3069,3078,3067,2873,2884,2885,2886,2563,2864,2554] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3189,3263,3264,148,150,342,3279,3188,3283,2977,2976,1367,1387,314,196,198,1364,1368,1369,192,194,184] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2918,2908,1903,1914,3483,3477,3472,3473,3974,5162,2902,2903,2904,5157,1898,1900,3470,3964,5146,5165,5159,2403,2409,1897,1899,2416,3972,3981,3978,3976] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4367,4369,4445,4644,4646,4444,4402,4412,4443,4364,4657,4650,4651,4653,4654,3832,4363,4629,4631] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3128,3392,3074,3122,3362,3085,3141,2826,2817,3341] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [958,971,972,1027,974,477,478,1369,973,185,188,181,184,488] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [6808,6745,6749,6767,6771,6750,6805,8345,8363,8365,8337,8340,8343,8347,8353,6760,8332,9048,9049,9051,9047] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [7010,8743,8758,6998,7008,7011,6991,6992,8767,7147,8507,8508] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2225,2229,2230,2233,2301,2208,2209,2210,2329,2280,2298,2297,2316,2334,2335] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        