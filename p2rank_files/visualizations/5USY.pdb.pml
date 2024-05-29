
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
        
        load "data/5USY.pdb", protein
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
 
        load "data/5USY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [332,334,725,470,1266,1269,1265,1280,709,724,503,502,192,190,191,318,747,1183,1184,1262,729,140,143,142,736,741,750,775,397,333,351,437,431,469,1285,427,425,426,1270,1271,1272,1167,782,1153,147,139,145,146,810,778,177,178,179,153,154,157,176,1286,1287,1293,1295,807,848,167,168,165,169,398,399,395] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2476,2518,2660,2662,2517,2519,2646,3050,3051,3608,3610,3591,2796,3592,3596,3604,2826,2828,2829,3490,3509,3510,3055,3076,3100,3101,2478,2479,3073,3067,3108,3479,3488,3493,3598,3600,3104,3136,2475,2481,2483,2506,2505] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2500,2501,2502,2503,2504,2731,2727,2730,3618,3626,2490,2506,2505,3455,3624,3625,3617,3602,2662,2519,2661,3596,3615,2795,3616,2757,2764,2769,2729,2759,2763,2679,2758] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4680,4681,99,103,55,85,4665,699,701,343,200,201,215,89,86,87,56,60] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3892,3893,3691,3894,3379,3377,3378,4552,4555,4557,4561,3342,4564,3348,3350,3899,3895,3888] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1051,1558,2217,2212,2215,1357,1557,1559,1053,1553,1560,1564,1352] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2527,2671,2443,2427,2429,2425,2426,2542,2439,3025,2401,2402,2406,2970,3027] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3997,4086,3790,3791,4093,3124,3126,4043,4075,4078,4074,4079,4038,4048,3481] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1742,1743,1739,1688,1662,1708,1709,1154,1156,798,1455,1756,1757] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3267,3230,3232,4386,4410,4404,4412,4649,4385,4684] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4476,4477,4479,4480,3932,4118,4289,4325] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1605,1464,1112,1114,1543,1545] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        