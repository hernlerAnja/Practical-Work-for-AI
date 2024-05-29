
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
        
        load "data/1YI6.pdb", protein
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
 
        load "data/1YI6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [300,302,303,304,190,191,134,136,132,133,526,1086,1158,287,651,656,1087,1088,674,701,677,697,698,1160,418,447,1159,652,446,1063,705,706,730,1164,1071,1163,1166] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3318,3319,2929,2932,2936,3294,2370,2961,2533,2649,3390,3397,3396,2382,3386,3389,2756,2757,2678,2534,2535,2928,2518,2905,2908,2367,2421,2882,2364,2422,2365,2420,2887,2531] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1424,1426,3074,1748,1955,1387,1388,1950,1390,1391,1394,1970,1971,1440,1441,3075,3076,3077] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1430,3339,1283,1450,1452,1331,1287,1304,1305,1308,1312,1311,1432,3336,1302,1303,1269,1265,1203,1217,1412,2927,1407,1429,2970] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3533,3534,3559,3561,3557,3530,3513,3555,3564,3568,3570,3264,3607,3251,3419,3684,3265,3685,3256,3508,3608,3420] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1187,1188,1035,1165,1071,1166,1189,1181,304,380,353,383,354,388,417,1179,385] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2535,2645,2648,3409,3410,3411,3413,3418,3412,3420,2585,2614,2616,2611,2584,3391,3397,3394,3393,2619,3266] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1763,1904,1944,1905,1780,1781,1779,1906,1796,1875,1852,1873,1883,1849,1850] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4137,4114,4136,4135,4010,4011,4012,4014,3994,4104,4106,4083,4109,4112] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        