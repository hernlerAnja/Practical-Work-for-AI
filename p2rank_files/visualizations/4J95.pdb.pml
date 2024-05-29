
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
        
        load "data/4J95.pdb", protein
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
 
        load "data/4J95.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4630,4631,4790,4791,4789,4624,4626,4595,4596,4597,4598,4602,4608,4645,4647,5557,5585,5566,5571,5659,5587,5660,5661,5664,5665,5666,5667,4922,5682,4589,4590,4591,5198,5195,5205,4593,5168,5170,5177,4646,5151,5152,5174,4775,4787,4594,5586,5035,4955,5560,5840,5561,5689,5535,7067,7079,5825,6845,4609,4613,4615,4616,6847,6848,4612,5826,5688,5690,4892,7104,7105] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [751,173,170,172,224,225,226,362,735,739,757,1182,1183,760,374,734,618,719,376,377,378,509,1260,1261,1264,1266,1259,168,169,778,781,788,1162,1153,1167,177,176,187,1265,1267,815,188] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3333,3347,3443,3440,3441,3437,3436,2557,2558,2687,2365,2375,2376,2689,2413,2414,2554,2556,2542,2915,2899,2914,3362,2798,3435,2721,2722,2357,2363,2364,2358,2360,2965,2958,3363,2933,2931,2940,2937,2968] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [6826,6822,6825,7824,7436,7408,7010,7387,7405,7399,6823,6877,6878,6821,6829,6830,7426,7429,7794,7808,7823,7896,7266,7383,6879,7022,7024,7025,7026,7157,7898,7901,7902,7904,7897,6857] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1265,205,479,1288,200,203,449,1267,1289,1290,1131,1153,1167,477,478,1282,378,1266,188,191,195,2382,2583,1154,1155,1156,1157,2599,2595,1397,1382,1383,2611] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [6844,6848,7797,4828,4832,7798,7799,7988,7989,7967,7968,4844,6855,6857,6859,7127,7972,7772,7903,7904,7809,7917,7771,7918,7919,7920,7925,7926,7927,7971,7808] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3617,3616,431,3601,3465,2383,3311,3442,3464,2391,2393,419,3336,3337,3347,3443,2657,2659,3602,3458,3466] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [431,3601,3465,2383,3311,3464,2391,2393,3443,194,2659,3602,3466,457,456] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [187,196,207,1265,205,203,1267,377,378,1266,188,191,195] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3443,2391,2393,2557,2558,2383,2375,2376,2398,2384,2379] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3078,3142,3394,3395,3171,3110,3111,3112,3109,3133,3134] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [827,859,860,861,897,898,885,775,776,1222,882,884] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        