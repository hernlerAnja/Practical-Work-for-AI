
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
        
        load "data/4FG9.pdb", protein
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
 
        load "data/4FG9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3282,3283,3284,3285,2491,2492,2490,2357,2358,2372,2370,2371,3137,3161,3292,3293,2326,2327,2331,2332,2354,2353,2356,2791,3148,3149,3176,3177,2314,2315,2320,2321,2322,2324,2475,2743,2744,2762,2748,2766,2765,2316,2318,2767,3117,3332,3136,3120,2335,2339,3152] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [152,157,158,162,163,195,196,316,317,181,197,315,593,594,149,300,598,610,640,146,615,155,145,151,147,150,998,999,1011,1027,1135,1026,1134,1141,1142,1143,1133,633,638,629,630,986,987,970,166,170] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1591,1592,1593,1594,1572,1420,1598,3781,3783,1439,3640,3641,3644,3646,1404,1406,1407,1408,2041,1403,1413,1617,1618,2042,2066,2068,3655,3803,3826,3827,3807,3800,3609,3610,3801,3605,3606,3608,3802,3615,3776,3779,4288,4289,3604,4254,3622] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1038,1037,832,1094,803,802,804,734,736,771,774,681,685,672,674,708,711,712,1077,770,772,773] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2817,4310,4313,2787,2789,2790,2791,3150,3151,2800,2804,2807,3141,3142,3140,3145,3153,4319,4296,4298] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3358,3359,3374,3373,3617,4298,4300,4285,4296,3153] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [112,65,111,113,115,116,205,567,569,323,549,547,190] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3244,2940,2982,3187,3234,2824,3227,2924,2922,2923,3239,2862,2920,2953,2952,2954,2835,2884,2921] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        