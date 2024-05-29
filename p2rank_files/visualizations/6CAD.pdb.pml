
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
        
        load "data/6CAD.pdb", protein
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
 
        load "data/6CAD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2822,2824,2825,2914,2913,2916,2455,2912,2429,2444,2903,2909,2911,2456,1941,1974,1975,1944,1942,2423,2424,2053,2387,2402,2385,2065,2067,2384,2401,2406,2294,2224,2900,2904,2199] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [463,1086,570,571,1082,1084,575,591,593,226,995,997,998,1081,592,105,624,967,970,1072,1078,1079,1080,142,143,144,106,238,240,387,1071,1077,1069,600,595,598,613] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2887,2871,2863,2869,2870,1021,2841,1036,1037,1043,2299,2301,2265,470,471,2268,2270,468,579,1011,1014,1016,2302,434,436,439,1044,1056] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [916,918,920,1069,907,913,1073,1076,379,902,378,380,359,360,362,387,386,411,865,454,864,1060,1066,463,388] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2285,2290,2291,2891,2223,2224,2225,2897,2898,2900,2904,2697,2746,2749,2750,2751,2752,2753,2196,2197,2740,2907,2216,2242,2733,2734,2698,2736] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2860,2601,2632,2633,2635,2602,2863,2870,1018,1021,2277,2278,2634,581,211,214,587,609,2656,207,584,1015,1016,605,210,2654,2269,2270] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [801,800,802,1033,1034,1035,1037,1043,2415,2418,2842,2843,2848,791,821,823,2041,799,768,789,2037,2034,2436,2440,438,439,446,447] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [549,232,247,85,86,153,155,72,512,530,536,529,69,71,68] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3124,3209,3353,3356,3357,3358,3359,3363,3364,2946,3095,3349,2944,3216,2968,3317,3318,2983,3347,2938,3094] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [879,1854,1874,880,1865,2017,1891,1892,2029,889,1835,1839,888,886,887,2317,1840,1867] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [486,191,37,2720,2721,4,12,2722,190,63,46,11,26] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2361,2077,2360,2363,2366,1900,2059,1896,1897,1899,1914,2342,2343,1880] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        