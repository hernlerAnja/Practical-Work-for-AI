
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
        
        load "data/6N7A.pdb", protein
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
 
        load "data/6N7A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1077,1113,1212,1207,1206,167,174,175,216,217,163,164,165,166,157,162,1127,1128,1129,709,159,160,1385,182,178,1075,1076,199,200,201,202,218,1213,1214,1215,372,373,688,588,692,357,195,197,188,192,429,430,431,435,407,439,441,387,410,434,1236,1237,1238,1230,1228,1381,1102,1104,762,763,764,1099,1100,1101,156,738,734,712,730,731,720] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3568,3450,3459,3464,2529,2580,3115,2526,2527,2528,2520,2525,3114,2542,2530,2531,2538,2539,3428,3453,3455,3570,2728,2729,2582,2556,2563,2564,2565,2743,3586,3592,3593,3594,3569,3571,3584,3478,3063,3479,3480,3071,3081,3082,3085,2523,2521,2524,3057,3563,2939,3039,2581,2713,3043,3113,3060,3742,2546,3741,2766,2559,2792,2795,2797,2763,2791,2785,2787,2790,2786] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1395,1444,1471,1380,1366,1367,1368,1237,1067,1352,1353,1354,1524,1504,4196,4197,4198,1364] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1880,1888,1913,1854,1855,4214,4218,4219,1487,1488,4252,4277,4243,4244,3840,3841] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1541,1543,1542,1544,1002,1003,1004,1005,1529,1304,1537,1570,2185,978,2173,2176,2178,1549,2135,2136,1545,1546,2168,2157,2172] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3882,3890,3894,3896,3897,3898,3899,4521,3923,4532,3902,4500,3329,4537,4540,4542,4549] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [662,663,664,363,74,101,105,119,226,241,115] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4463,4465,4461,4115,4116,3968] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        