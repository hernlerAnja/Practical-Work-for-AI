
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
        
        load "data/5VLO.pdb", protein
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
 
        load "data/5VLO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2467,2470,2472,2473,2516,2517,2518,2460,2461,2466,2636,2637,2479,2480,3028,3029,3030,3032,2896,2624,3038,3454,3455,3069,3070,2894,2895,3057,3080,3426,3438,3546,3549,3542,3543,3541,2462,2464,2465,3054] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [152,153,154,270,272,274,426,114,115,116,119,120,121,122,118,260,687,690,666,668,1062,1179,1182,1185,1091,1090,693,1177,531,1178,532] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2285,2287,2317,2318,2319,2320,1357,1359,1611,1346,1348,1337,1344,1345,1066,1067,1049,1644,1642,1343,1678,1342] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [753,781,782,844,872,724,1155,863,1142,898,865,1099,1143,1118,1119] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3398,3415,3548,3547,3549,3563,3564,3565,3562,2483,2488,2638,2487,2789,3545,2749,2503,2504,2637,2652,2480,2490,2491,3571,3569,3570,3572,3395,2751] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3208,3146,3463,3462,3499,3500,3503,3506,3228,3262,3236,3203,3206,3487] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4681,4683,4007,3721,3430,3431,3723,4072,4008,3975,3988,3709,3710,3701,3706,3707] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3620,3621,4391,4392,4393,3830,3836,3835,3831,3823,3825,3827,3333,3824,3329,4382,3331,4388,3829,3307,4403] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        