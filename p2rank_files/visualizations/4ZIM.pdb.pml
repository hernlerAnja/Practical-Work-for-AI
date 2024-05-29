
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
        
        load "data/4ZIM.pdb", protein
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
 
        load "data/4ZIM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1142,1147,326,1143,1144,1244,1249,1250,1251,1252,325,150,161,162,154,343,698,700,701,1265,1266,1414,469,1267,401,397,427,431,430,403,432,124,125,130,175,176,177,131,132,163,165,751,754,127,1162,1163,1164,726,723,310,705,128,717,142,157,159,1429,1109,1135,1136,1138,758,1133,136,139,1275,1410,1411,1412,1447,1274] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3684,3686,3688,3694,3669,3671,3670,2741,2569,2572,2574,2816,2550,2553,2554,2557,2561,2565,2567,2576,3566,2740,2852,2884,2568,2758,2592,2577,2578,2579,2551,2548,2546,2547,2842,2843,2845,3709,3710,3828,2846,2847,2850,2810,2812,2564,3844,3528,3557,3554,3555,3827,3692,3693,3829,3518,3826] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3177,3181,3182,3209,3174,3164,2540,2542,3142,2543,2539,2545,2546,2547,2538,3146,3149,2591,3124,2725,2592,2590,2991,3582,3128,2740,3123,3668,3552,3561,3566,3662,3663,3583,3669,3670] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3451,3452,3767,3762,3415,3423,3450,3991,3992,3993,4663,4656,4667,4671,3425,4611,4635,4646,3994,3998,3986,3985,4651,4654,4655,3763] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [885,886,888,2058,2070,4650,4654,4655,4685,884,4618,4622,4635,2374,2371,2372,876,880,897] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1760,1761,4412,4411,2054,4550,4551,4585,4552,4553,4573,2052,2053,4589,4591,1740,1741] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        