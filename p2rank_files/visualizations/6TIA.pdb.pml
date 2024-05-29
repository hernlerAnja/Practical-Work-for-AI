
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
        
        load "data/6TIA.pdb", protein
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
 
        load "data/6TIA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [782,780,246,247,248,249,298,297,385,757,768,758,759,760,761,762,763,251,257,252,254,299,263,1284,1287,270,397,399,400,401,539,1280,1281,1286,809,811,1202,815,816,1178,1203,832,1179,1186,1278,1279,784,795,787,807,808,788,789,643,245,243,849,839,840,879,887,202,201] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2647,3030,3051,3464,3050,3465,2560,2510,2511,3049,3044,2508,2509,3070,3057,3073,3077,3149,2559,2561,2514,2519,2512,2513,2526,2529,2659,2661,2662,3440,3448,3078,2506,2507,3102,3141,2904,3540,3542,2800,2802,3541,2903,3020,3021,3022,3023,3024,3025,3019,2801,3543,3546,3547,3549,2663,3006] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [805,2878,2879,2874,1244,905,898,904,958,1223,1243,806,795,2872,2873,3287,2889,2890,3270,3288,3290,3289,3264,1227,4499,4500,4501,2871,3268,3241] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1168,1151,268,278,280,281,1285,1287,269,270,1307,1308,1309,499,502,1283,1286,1300,1148,1167,1186] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [539,1286,1300,744,497,498,504,418,472,499,502,1287,399,401,416,278,280,275,475] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        