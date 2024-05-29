
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
        
        load "data/7OTE.pdb", protein
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
 
        load "data/7OTE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3158,3159,3229,3246,3247,3248,3226,3230,3233,3242,3243,3244,3245,3234,2748,2741,2743,2769,2756,2601,2722,2723,2362,2360,2361,2363,2365,2371,2705,2727,2375,2379,2522,2708,2377,2378,2739,2264,2265,2266,2213,2219,2220,2366,2215,2217,2218,2214,2223,2232,2233,2772,2776,2801,2600,2521] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1078,284,285,290,641,1077,1165,1167,1162,294,295,1163,1148,642,519,520,1145,441,139,142,183,185,184,664,667,687,688,281,646,658,660,675,133,134,136,137,280,1161,298,1152,1149,152,296,297,411,440,720,695,1053,691] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1149,1153,1156,1146,1004,1000,1142,513,941,465,998,1001,940,466,993,982,983,984,439,435,437,464,433,467,440,518,519,1140,1145,441] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2599,2547,3063,3066,2594,2519,2520,2521,2513,2488,2544,3221,3223,2595,3022,3083,3085,3074,3079,3081,3226,3227,3230,3233,3237,3234,3235,3229,2490,2493] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1424,1054,1218,1219,1040,1042,4065,4062,1187,4071,711,712,1477,1472,1459] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2379,2377,2378,2376,2467,2491,2492,2493,2460,2463,2465,2428,2455,3250,3241,2248,2383,2244,2246,2247,2245,2429,2462,2466,2464,2709] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1502,1503,1641,1642,1650,1651,1648,1414,1474,1643,1413,1446,1659,1658,1663,1412,1445,1464] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3860,3862,3442,3713,3576] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        