
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
        
        load "data/Q9UGI9.pdb", protein
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
 
        load "data/Q9UGI9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2411,1713,1715,1716,2406,2394,2408,3558,3559,2376,2396,2398,2400,2378,2397,2981,2399,3129,3132,1717,1720,3112,3114,3118,3126,2989,2991,2995,2998,2999,3000,3005,3571,2993,2833,3020,2837,2374,2391,2373,2375,2377,2379,2526,2528,2395,1859,1855,3121,1850,1848,1851,1866,1714,3560,3556,3557,3554,3551,3555,3547,3568,3682,3684,3705,3706,2791,2793,2794,194,2548,3539,2530,2533,3688,2537,2538,3693,3698,3696,3810,3807,3809,2529,2547,3549,3096,2826,3668,3670,3671,2832,2348] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1829,1832,1834,1850,1848,1851,1833,1873,1863,1865,1866,1900,2206,2186,2187,2984,2987,2982,2983,2980,2204,2213,2203,2205,2230,2222,1826,2217,2224,2384,2386,2389,2391,2404,2405,2376,2398,2132,2168,2169] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [202,213,196,1700,1701,1702,3134,3135,3136,3169,1717,3350,216,3166,1675,1680,1683,1684,1685,3186,227,3158,1707] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1647,1651,1884,1622,3218,3219,3220,3221,3222,3224,1624,2017,1907,1916,2047,2048,2052,2054,2041,2043,2045,2015,1625,1626,1662,1664] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3357,3392,3549,3092,3096,3389,3391,3565,3386,3539,3530,3545,3551,3547,3129,3132,1720,3112,3114,3333,3336,3093] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1534,1527,2504,2505,2506,2510,2514,2507,2511,2528,1545,2529,2547,194,2548,2552,2555,2556,2559,195,166,1509] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3703,3732,3733,3735,1292,1288,2777,2773,2775,2787,3763,3765,3796,3795,3730,3728] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2608,2611,2671,2673,2676,2707,2604,2605,3481,3743,3489,3456,3458,2598,2600,1390,1393,2601,2603,2636,2635,2637,2638] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        