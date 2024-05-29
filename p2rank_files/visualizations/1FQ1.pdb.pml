
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
        
        load "data/1FQ1.pdb", protein
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
 
        load "data/1FQ1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1532,1529,1523,1524,1526,2503,2504,2505,2496,2492,2600,2597,2598,2599,1697,1698,1699,2076,2078,1579,1580,1581,2592,2520,2521,2103,2104,2101,2084,1682,2096,2098,2100,1543,1544,1550,1541,1542,1566,1567,2135,2128,2161,2493] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2449,2955,2797,2800,2801,2802,2803,2917,2919,2834,2831,2463,2678,2679,2891,2893,2680,2622,2447,2453,2454,2738,2740,2768,3106,3108,2804,3107,2681,2684,2692,2739,2693,2696,2697,2698,2839,1270,1271,1273,3325,2853,2870,2868,1272,2752,2753,2754,2748,2735,2677,1256,1254,726,2759,2762,2788,2787,2786,2796] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3099,1184,3115,3093,1152,1160,1289,1291,1293,1153,1130,3121,3123] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [299,281,959,964,966,954,212,213,280,237,961,216,236] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2777,2778,2779,2780,2781,2782,2151,2152,3006,3055,2761,2775,2495,2497,2486,2149,2494,2793,2794,2479] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3266,3282,3317,3309,3310,3300,3624,2861,2860,3623,3625] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1444,1445,2048,2050,2007,2052,2047,1452,1473,1453,1494,1689,1470,2049,2051,2053] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3208,3063,3074,3587,3465,3444] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3359,1292,1293,3357,3358,1327,1328,1330,1332,3356,3361,3366,3151,3152,3377,3376,3343,1340] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        