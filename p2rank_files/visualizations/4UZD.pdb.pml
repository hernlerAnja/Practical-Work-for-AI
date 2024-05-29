
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
        
        load "data/4UZD.pdb", protein
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
 
        load "data/4UZD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2699,2819,2817,2818,2820,2821,2824,2362,2364,2361,2363,2372,2359,2360,1644,2342,2358,1379,1377,1369,1370,2632,2640,3302,1645,3285,3262,3267,2844,1405,1407,1352,1354,1356,1376,1378,1360,1362,2676,1666,1667,1668,1383,1266,1275,1280,2697,1271,1669,1670,1671,1672,2678,2355,2368,1273] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1229,1230,1227,1228,129,133,145,407,408,414,420,448,147,309,459,686,294,292,308,484,1218,409,413,383,385,2094,2095] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2433,2434,2435,2436,2468,2775,2430,2458,2530,2531,2567,2534,2535,2527,2529,2498,2499,2497,2719,2720,2735,2736,2737,2774,2437,2712,2714,2715,441,399,405,2536,2538,393,394,402,409,410,412,378,376] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [703,166,293,294,702,167,165,107,277,110,719,721,108,561,1140,707,714,725,746,728,1207,1112,1141,1206,755,484,1219] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3327,2401,2402,2275,2227,2221,2218,2827,2829,2216,2214,2215,2274,2385,2810,2273,2815,2669,3315,3314,3247,3249,2836,2854,3248] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3326,3327,3335,3336,2402,2237,2810,3339,3342,2241,2556,2557,2561,2528,2416,2417,3348,3347,2794,2592] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1078,1081,1082,1083,1063,1065,1069,1077,1312,1059,1062,1084,2090,2091,2098,2102,1289,1290,1278,1282,1285,1270,1064,1327,1288,1311] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2093,2096,2097,410,411,412,2101,439,440,441,476,2608,2598,2569,2573,2599,2606,2713,2715] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [253,586,587,584,585,694,272,21,22,209] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [457,458,604,606,612,422,423,426,427,389,430,667,328,627,629,390,391,459,666,419,421,350,611] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        