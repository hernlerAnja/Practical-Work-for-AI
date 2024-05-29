
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
        
        load "data/7MU7.pdb", protein
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
 
        load "data/7MU7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [132,133,696,136,662,677,681,135,669,680,137,185,187,658,186,289,306,1186,1187,1188,1192,657,1104,526,1103,683,1077,138,139,144,1195,143,147] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2234,2351,2352,2353,2666,2667,2233,3194,2535,3192,3193,3083,3109,2708,3110,2705,2336,2671,2682,2686,2689,3198,3199,2178,2179,2180,2182,2184,2185,2186,2712,2183,2190,2191] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2476,2478,2479,2480,1375,1916,1917,1906,2446,2477,2475,2488,2451,3022,3239,2999,3002,3003,3001,2454,1373,1374,1390,1399,1400,1401,1372,1431,1907,1908,3004,1404,1405,1414,1415,1418,1422,1423,1424,1427,1240,1425] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3402,3425,3876,3887,3890,3893,3396,3403,3852,3399,3401,3397,3395,2956,2984,2986,3899,3895,3907,2996] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1947,1948,1960,1426,1930,980,1450,1944,1949,1953,1954,1422,1424,1427,978,990,1431] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2779,3128,3129,3130,2853,2886,2887,2778,2780,2782,2852,2803,2828,2776,2777,2873,2875,2876,3152,3153] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        