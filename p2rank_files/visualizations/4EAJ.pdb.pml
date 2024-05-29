
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
        
        load "data/4EAJ.pdb", protein
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
 
        load "data/4EAJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2192,2182,2193,2194,2195,1715,1717,2196,2197,1716,2938,2187,2329,2804,2805,2801,2936,3337,3338,3340,3332,3336,2346,2349,2929,2175,2786,2787,1708,2939,1566,1567,1568,1569,2945,2350,2204,2206,1700,1702,2207,2331,2330,2943,2947,2944,1701,1703,1707,2934,1711,1725] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [19,20,21,23,24,905,906,907,923,1070,1076,977,958,978,979,981,1081,1080,934,936,937,920,921,922,26,1182,1391,1387,1390,1166,1167,1168,1183,1548] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2943,2956,2957,2948,2946,3319,3314,3112,3137,3139,3121,3099,3097,2350,2928,2909,2929,3348,3350,3345,3330,3329,3326,3331,3332,3336,3153,2910,3161,3166,3167,3168,3165,3164] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3464,3477,3478,3463,3475,3476,3479,3485,3486,2600,2601,2602,3449,3347,3448,3450,2800,2810,2795,2636,2629,2786,2805,2807,2801,2806,3349,2184,2197,2198] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [26,996,5,1541,1056,23,24,923,920,1016,1018,1513,1040,1041,1015,1183,1202,1548,1549,1201,1516,1519,1391,1390,1539,1540,1482,1483,1511] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [624,625,626,1096,636,1105,2269,642,675,2268,1087,684,1090,2280,2264,2247,1110] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1475,1477,1734,2984,1468,1471,2990,1497,1478,1902,1903,1799,1800,1759,1768,1756,1794,1797] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1658,1661,1664,2032,2239,2238,2273,1656,1657,658,656,2236,2271,2028,2045,662] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [460,600,602,963,582,497,474,477,461,964] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2015,2187,2012,2021,2013,2014,2033,2038,2202,2185,2175,1684,1677,1678,1680,1685,2203,2204,1702,1724,1725,1683] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1048,989,775,52,55,57,62,993,50,1009,1011,772,806] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [393,394,367,368,1649,1650,385,386,732,733,1651,729,731,1624,734,735,739,760,235,366,1212,759] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2437,2438,2440,2445,2450,2452,2453,1242,1243,1244,2401,2407,2412,2519,2491,2481,2472,2480,2414,3246,2454,2482,3274,2409] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        