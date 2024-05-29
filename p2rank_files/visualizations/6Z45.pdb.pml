
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
        
        load "data/6Z45.pdb", protein
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
 
        load "data/6Z45.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [351,355,206,227,229,174,228,338,769,771,773,176,171,172,170,191,203,749,751,752,753,754,501,1169,803,1161,1184,1185,804,805,777,783,792,791,799,1265,1266,1267,1261,1262,1269,608,609,1260] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3574,3579,3607,3608,3573,3576,3578,440,442,433,434,435,436,3601,714,691,694,699,702,701,387,384,385,386,408] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4103,4106,4108,4127,4169,4281,4351,4352,4109,4134,4136,4185,4188,4193,4181,4184,4189,4192,4251,4253,4263,4194] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3703,3702,3704,3707,3012,3052,2607,2608,2559,2551,2557,3708,4045,4046,4039,4001,4002,3677,3680,3692] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1537,1538,1975,1977,1964,1948,1522,1523,1498,1499,1925,1927,2318,1554,1924,2311,2324,1933,1940,1941,1946,1532,1535] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2851,2875,2876,3962,3963,3964,3939,4518,2874,2905,4546,2850,2954,3930,3932,2877,2873,4516,3909,3911,4545,3940] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3744,3716,2960,2962,2957,2986,2951,2956,2952,3717,3718,3736,3894,3931,3739,3733,3734] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3369,3372,3375,3406,3408,3367,3368,3191,3163,3340,3534,3537,3338,3397] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2760,2786,2672,2751,2636,3986,2776,2750,2780,2781,2785,2787,2661,2663,2660,2748,3985,4020,3980] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        