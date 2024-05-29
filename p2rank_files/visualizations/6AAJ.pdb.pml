
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
        
        load "data/6AAJ.pdb", protein
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
 
        load "data/6AAJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [703,727,730,1131,1132,734,762,563,681,693,695,699,702,307,120,121,676,677,173,172,174,117,118,123,124,125,128,135,457,1101,1110,1111,1115,1213,1214,1221,1112,1217,129,136,1218,1219] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2849,2851,3492,3394,3395,3396,3474,3477,2492,2626,2947,2778,2946,2777,2440,2437,2439,2441,3004,3365,2435,2436,2969,2951,3000,2972,2997,3483,2454,2455,2442,2443,2444,3481,3379,2745,3478,2493,2640] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1067,1359,1386,1387,1393,1404,1258,1259,416,1364,1373,1380,1344,378,380,1377,1243,1242,143,141,142,1247,1235,1455,1454,379,415,417,388,390,446,156,151,154] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3188,3219,4517,4519,4518,519,572,3220,569,570,576,3194,3197,593,4487,515,518,4492,509,526,3187,4543,3158,3160,4545,3163,4515,494,580,3217,4485,4483,4486] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2825,2826,2828,284,288,592,593,570,571,682,686,3220,3216,3217,3218,3215,2821,2818,2819,2820,2835] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3218,3239,3240,3241,1147,1148,4459,4460,539,571,686,3219,572,3220,593,526,1200,4492] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2826,2828,18,287,20,3446,216,2827,218,3445,4] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3836,4362,4365,4022,4364,4211,3866,4222,3675,4021,3674,3700,4366] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1770,1935,1584,1968,2119,2121,2123,1979,1448,1581,1423,1614] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        