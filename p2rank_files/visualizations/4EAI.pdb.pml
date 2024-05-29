
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
        
        load "data/4EAI.pdb", protein
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
 
        load "data/4EAI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2193,2195,2197,2194,2196,2198,2338,3340,1716,2936,2182,2185,2189,2187,2016,2346,2801,2805,2796,3338,3332,3336,1715,1717,1752,2014,2938,2175,2789,2786,2788,1702,2204,2206,1700,1708,2331,2207,2329,2330,2939,2943,2929,1567,1568,1569,2350,2348,2349,1707,2934,1701,1724,1725,1711] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [19,20,21,22,23,24,905,906,938,937,1067,1069,1070,1071,1072,1076,977,978,979,981,1080,1081,934,935,26,923,922,1167,1182,1183,1390,1548,1168,1391] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3477,3478,3463,3464,3485,2600,2601,2140,2174,2146,2173,2341,3449,3346,3347,3448,3450,2810,2795,2800,2636,2602,2623,2176,2786,2634,2639,2635,2629,2801,2806,2807,3349,2340,2197,2198,2184] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2956,2957,3099,3112,3097,3314,3137,3139,3121,2943,2928,2929,2948,2946,2350,3319,3326,3332,3336,3348,3329,3330,3345,2911,2909,3350,3153,3155,3161,3165,3166,3167,2910,3164] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [26,994,996,1201,1056,5,923,1541,1016,1511,1513,1485,1040,1041,1001,1183,1202,1548,1549,1391,1540,1482,1516,1199,1483,1484] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1734,2993,2984,2990,1468,1471,1473,1475,1499,1497,1796,1798,1902,1903,1476,1477,1890,1799,1800,1768,1759,3014,1794,1795,1891,1797,3013] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2268,2269,2280,674,675,677,620,623,624,625,626,635,636,1105,1087,1090,1096,684,1110,1112,2264,2247] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2185,2189,2187,2202,2016,2015,2021,2033,2036,2038,1715,2014,2012,1702,2203,1684,1685,1683,1680,1701,1724,1725] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [658,2045,656,2238,1656,1661,2032] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [758,760,235,366,729,759,732,1651,393,394,367,731,1624] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1683,1978,1966,1968,1975,1694,1723,1724,1725,1752,2014,2001,2004,2013] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1242,1243,1244,2401,2407,2412,2519,3266,2437,2438,2440,2445,2450,2452,2517,2491,2414,3243,3246,2454,3244,2482,2410,2409,2406] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [930,964,600,602,963,497,582,849,874,460,598,461,474,319,321,477] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [55,57,775,50,52,62,1047,1048,989,993,1009,772,806,1011] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        