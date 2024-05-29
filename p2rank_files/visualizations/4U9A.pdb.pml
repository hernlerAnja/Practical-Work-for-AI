
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
        
        load "data/4U9A.pdb", protein
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
 
        load "data/4U9A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2817,3251,2407,2494,2833,2711,2806,2807,2808,2809,2810,2811,2812,2829,2831,2836,2844,2857,2355,2357,2358,2429,2310,2838,2837,2712,2850,2856,3235,3328,2372,2373,2374,2375,2376,2406,2408,3336,3227,3327,3329,2609,3330,3333,3334,3335,2377,2508,2510,2354,2359,2360,2361,2889,3252,2864,2865] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1075,712,737,1099,1100,705,658,1176,1177,1178,1181,503,655,656,670,681,684,686,704,572,573,654,665,571,1182,1083,222,235,268,270,269,215,216,236,370,372,657,659,660,356,220,217,218,677,679] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3767,3768,3764,3773,3774,3775,3776,3772,3801,3789,3793,3794,3798,3799,3728,3733,3808,3455,3456,3566,3564,4100,4081,4104,1992,1978,1986,1991,3802,1994,3800,1982,1326,1327,1971,1355,3751,1358,1333,1357,1232,1234,1219,1233,3727,1218,1373,3736,3740,3750] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1048,1183,1184,238,239,251,1197,1199,1205,1065,3369,3367,3368,1206,1207,243,242,253,228,235,247,248,249,250,252] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1636,1639,4113,4111,1647,1326,1328,1438,1975,1976,3464,4099,4119,3486,3487,3502,3461,3454] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1306,1550,1552,728,729,1071,1539,1063,1307,1547,1542,1546,1064,1076] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        