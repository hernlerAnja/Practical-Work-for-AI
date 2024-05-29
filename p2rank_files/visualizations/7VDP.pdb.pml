
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
        
        load "data/7VDP.pdb", protein
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
 
        load "data/7VDP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2391,3289,3415,2411,3312,3408,3409,3412,3413,3407,94,95,2389,2534,2536,2651,3288,2377,2942,2943,2945,3300,3301,2409,2410,2380,2381,3328,2759,2932,3329,2519,2898,2918,2915,2931,2938,2890,2532,2892,2894,2888,2889] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [111,113,112,1056,81,672,82,645,646,657,642,221,615,616,617,619,486,1055,378,621,620,78,651,90,1142,237,238,1027,1135,1039,1134,659,658,665] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [5786,5794,6788,6813,6814,6815,6136,6107,6109,6134,6169,6170,6137,6138,6141,6143,6272,6274,5926,6241,6267,6268,6271,6273,6243,5854,6245,5888,5889,5918,5798,6201,6202,6203,6204,6167,6168,6171,6244] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [100,242,96,97,98,326,327,325,2373,2403,2404,105,106,2396,2397,2398,2561,261,262,263,265,299,2562,2559,2584,260,2385,2395,2540,2371,2543,2545,292,306,307] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2371,2372,89,90,1142,238,1141,1165,345,346,1155,379,343,344,347,348,998,1163,1164,99,96,326,327,324,322,2373] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1309,1311,1312,1314,2964,2967,2968,1014,1016,1291,1292,1293,1325,1032,689,3001,1031,2970,2971,1294,1298,1310,1301,1613,1617] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [6328,6136,6098,6099,6104,6100,6109,5926,6273,6302,5798,6074,6070,5958,6110] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5304,5295,5308,5309,5310,5311,5002,5003,4957,4982,4983,4995,1222,1230,1223,4935,4959,4962,4964,4949,4952,1179] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [695,696,697,3564,3565,3585,3587,3598,3571,3581,3582,3583,3584,3287,3304,3305,2961,2962,728,690,691,694,3566] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2852,2853,2867,2810,2826,2827,2346,2347,2524,2527,295,2835,2418,2318,2321,2324] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2660,2860,2861,6572,6571,6529,6530,2816,2817,2818,2819,6531,2571,2572,2573,2605,6537,6539,2630,2631,2632] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4402,4431,4382,4388,4394,4395,4396,4060,4005,4401,4008,4004] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [6086,6091,6088,3488,6732,6763,6765,6766,6767,6092,6733,6117,3489] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [5665,1215,5695,5697,5699,4562,4988,5696,5698,4986,4991,5662,5664,5671,5672] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3687,3681,3682,3684,4119,4087,4086,4415,4069,4072,4423] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        