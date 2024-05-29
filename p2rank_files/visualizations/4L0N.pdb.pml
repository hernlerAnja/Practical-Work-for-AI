
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
        
        load "data/4L0N.pdb", protein
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
 
        load "data/4L0N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3224,3118,3119,3120,3122,3100,3418,369,371,372,373,680,657,658,681,374,376,3455,516,3155,3267,3362,3363,3395,3256,3258,624,625,515,485,486,524,621,409,411,622,402,3117] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2341,1128,2298,2331,2333,2340,2342,2229,2431,2433,2428,2429,2430,913,1105,1126,1127,1068,1104,918,1760,917,919,1720,2227,1163,2302,2303,2190,2191,2192,2193,2465,2492,2490,1164,1699,1724,1725,1125,2189,2399,2334,1069,1070,1071,1073,923,924,972,1758] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2978,2951,2902,2912,2915,2916,2917,2943,3588,2918,2919,19,820,821,822,819,857,859,18,59,824,20,21,47,48,51,52,167,58,49,60,163,208,228,229,231,230,3548,2752,225,161,2798,2800,2802,2806,2808,2796,158,159,274,3552,3553,3549,3550,3551,2976] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1263,2076,1377,2035,2073,2074,2075,2036,2037,2038,2039,1821,2634,1262,1260,1376,1378,1259,1261,1298,1402,1405,1407,1408,1505,1507,1374,1415,1414,1416,2033,2631,2633,1560,1814,1539,1529,1530,1531,1562,1564,1610,1241,1818,1504,1815,1502,1819,1372,1362,1258] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1228,2154,2116,2152,2536,2156,2114,1263,2076,2074,2075,2634,2535,2115,2569,2633,1165,2193,2194,2170,1161,1160,1197,1199,1198,1644,1646,1648,1609,1610,1241,1679,1683,2599,2597,2595] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [788,789,2976,3014,3015,3016,3531,787,751,272,273,274,299,752,3552,3553,3551,2951,824,231,3487,3488,3489,3518,717,337,336,307] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1408,1473,1507,1984,2038,2039,1821,2016,2014,1979,2669,1980,1981,1819,1823,1826,2629,1828,1815] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1367,1369,2028,888,140,2029,2090,867,887,2062,2063,2061,180,2053,895,885,137] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        