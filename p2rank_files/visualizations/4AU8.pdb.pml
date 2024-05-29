
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
        
        load "data/4AU8.pdb", protein
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
 
        load "data/4AU8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [554,555,557,145,146,254,92,89,90,558,1080,1086,1087,611,972,94,97,100,88,447,1079,448,1000,1001,581,584,564,608,590,596,597,604] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1364,1358,1363,1366,1356,1357,915,1352,1353,1342,1343,2090,1369,2124,2107,2110,2111,2121,894,895,896,899,868,869,1133,1134,1135,1143,1144,1146,872,1392,870,876,2112,2117,2116,848,880,2631,2637,2638,2639,2640,2630,2629] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2822,2357,2482,2309,2312,2356,2358,3232,2874,2875,2877,2824,2483,2592,3340,3345,3346,3347,2821,2823,2826,2699,3260,3261,2830,2820,2698,3339,2304,2301,2303,2300,2306,2466,2847,2850,2864,2856,2863,2870] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3159,386,387,388,389,3585,3586,377,379,378,380,3571,3572,3581,3582,3393,3394,3395,3404,3128,3129,3136,3137,3154,3155,3108,3592,3593,3130,3132,4319,4335,4339,4340,3621,4336,4341,4345,4330,4346,4350,3156,3403,3587,3594,3598,3175,3595] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1773,1740,1741,1723,2062,1287,2069,1726,1284,1322,1335] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2042,2047,2050,2049,2085,1714,2055,1678,1679,1666,1658,1867,2016,1659,2036,2013,1712,1713] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2492,2490,2491,2784,2785,2774,2783,2228,2223,2224,2270,2767,2772,2781,2799] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        