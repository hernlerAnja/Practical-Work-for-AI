
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
        
        load "data/3KN5.pdb", protein
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
 
        load "data/3KN5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1185,1188,1189,1190,1193,1194,1195,1196,1197,700,703,1112,1187,541,682,465,438,686,542,732,1083,1111,1096,1087,159,160,162,211,210,164,171,172,197,157,699,154,156,153,165,316,328,329,330,679,680,681,331,332] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2406,2463,2404,2405,2411,2462,2458,3335,3440,3439,2793,3437,3441,3442,2933,2934,2582,2580,2583,2584,2690,2449,3445,3446,3448,2417,3348,2952,2568,2932,2938,2958,2794,2955,3364,2951,2408] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2225,1321,1044,1045,1279,1281,1322,1040,1320,1039,1041,1319,1218,2195,2196,2197,2194,2186,2188,2234,2235,2236,2223,2222,1358] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [172,175,179,197,178,331,332,437,347,411,379,382,404,1221,1195,1196,1209,1211,1210,1222] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4494,4496,4531,4534,4501,4503,4504,4505,3533,3531,4529,4530,4536,4541,3574,3292,3293,3296,3297,4535] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4439,4438,4414,4416,4411,4413,3340,3329,3330,3331,4408,4390,4392,2995,2996,2997,2998,4370,3000,2983,3012,2980,3332,3333] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4495,4524,4525,4535,4098,3597,3566,3567,3568,4140,4497,4533,4534] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2583,2584,2634,2656,2689,2431,2448,2449,2598,2599,2600,3448,3447,3472,3473,3474,3461,3463,2427] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2196,2197,2186,2188,1054,1358,2159,1321,1322,1040,1320,1039,1319] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        