
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
        
        load "data/7QG3.pdb", protein
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
 
        load "data/7QG3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3368,2460,2465,2472,3393,2459,2505,2506,2507,2998,2985,2997,2977,2978,2974,2454,2456,2970,2972,2457,2968,3001,2991,3369,3005,3006,3476,2607,2608,2609,2949,2950,2951,2953,2593,2947,2948,2958,2473,3469,3392,3468,3470,2979,2831,3376,2729,2952,3039,3030,2453,2411,3077] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [238,242,249,284,232,233,234,282,283,754,757,761,1124,1148,1149,753,734,726,728,730,733,370,762,786,236,237,230,231,1224,1225,1132,1232,614,706,708,1226,1227,704,709,703,384,705,707,714,250,251] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2476,2479,2483,2486,2488,3475,3476,3477,2609,2626,3338,3357,3341,3358,3376,3474,3590,3592,3593,3599,3473,3490,2687,2688,2689,2694,2695,2934,2692,3499,3498] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [95,44,45,46,47,48,49,83,640,637,697,365,118,313,94,82,364,639,327,326,328] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1233,251,253,256,260,265,266,1097,1113,1114,1254,1255,474,385,386,1132,1232,1231] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1603,1618,1638,1596,1609,1610,1611,1860,1848,1851,1840,1663,1664,1684,1853,1855,1672,3877,3890,3876,1881] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2854,2855,2242,2243,2264,2263,2244,2858,2548,2550,2588,2572,2573,2857] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        