
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
        
        load "data/7OM4.pdb", protein
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
 
        load "data/7OM4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3056,3314,3244,3313,3812,3301,3302,3412,3413,3414,3231,3365,3339,3232,3523,3524,3107,2955,2971] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4984,4985,4962,4963,5049,131,175,202,205,206,77,62,242,239,204,207,208,213,251,203,5054,5068,5070,232,5053,5055,5099,3192,3194,3189,3190,3191,3193,3206,5040,5056,72,75,76,78,89,90,91,334,178,180,181] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2668,3107,2875,2998,2669,2876,2852,2533,2569,2595,2597,2666,2685,2687,2686,2532,2811,2897,2899,2872,2873] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [910,895,774,786,1126,1127,1019] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [82,2456,2679,2946,2947,2676,2678,5032,5033,5034,5035,2515,5024,83,90,80,81,2496,2454,2509,2513,2516,2519,3181,3184,3192,3194,3185,3170,3164,2464,2661] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [534,724,725,107,108,735,793,4885,4870,4907,4908,4892,535,548] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [5316,5318,5856,1239,5874,5876,5860,5861,1233,1232,1253,5502,1246,1121,1123,1237,1255,1234] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1168,1489,1490,1545,1645,1662,1557,1549,1552,1666,971,1770,955,1668] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [910,646,909,774,543,786] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2520,2506,2507,2501,2512,2517,2518,2519,2788,2708,2748,2771,2789,2770,2772,2541,2523,2510] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [378,123,152,154,4851,357,359,555,553,4865,4872,4855,4877,4878,556,4880] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4933,4764,4790,4792,4924,4913,4914,4923,4926,4915,4843,4770,4765,4768] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1091,5507,5524,1096,5510,5508,5509,1069,1326,1331,1311,1321,1330,1375,1377,1329] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        