
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
        
        load "data/5CF6.pdb", protein
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
 
        load "data/5CF6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3625,2529,3626,3627,3629,3633,3635,2514,2518,2521,2522,2531,2775,3631,3469,3612,2526,2523,2773,2715,2533,2534,2524,2698,2841,2697,3611,2809,2811,3765,3777,3771,3459,3634,3468,3507,2510,2511,2549,3497,2802,3650,3651,3762,3763,2799,2798,2797] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1140,1141,131,173,174,175,1221,123,124,125,127,128,129,1220,1226,1228,1227,559,308,678,682,696,677,703,727,728,700,130,1124,731,735,736,1110,763] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3083,3086,2682,3065,3523,3079,2493,2495,2548,2549,2491,2547,2497,2498,2499,2500,3493,3502,3507,3114,3118,2503,2504,3524,2501,3110,3119,3146,3111,2492,2496,3610,3603,3604,3611,3061,3609] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [323,1228,1227,1229,1242,324,452,1244,158,156,157,341,175,162,159,161,328,164,165,420,415,408,414,1086,1252,136,143,1114,1124] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4556,4566,4567,4571,4572,4575,4577,4576,3924,3925,3927,3931,3920,3392,3356,3362,3391,3393,3926,3364,2334,3708,4584] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4556,4571,4575,4576,2035,4606,863,865,2023,874,2330,2332,861,867,872,2334,857,853,856] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1739,1740,1753,1754,1448,1747,751,1700,1654,752,1652,1447,753,1115] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1985,1619,1779,1974,1586,1453,1941,1428,1778,2127,2129] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        