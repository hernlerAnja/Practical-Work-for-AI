
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
        
        load "data/4X7Q.pdb", protein
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
 
        load "data/4X7Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1945,1948,1949,1951,1953,1954,2798,2801,2804,1970,1971,1972,2051,2052,2103,1928,1132,1922,1923,2383,1925,1924,1926,2036,2306,2307,2308,2291,1179,1180,1248,1512,2658,2675,1237,1239,1240,1242,1234,1129,1130,1131,1276,1277,1278,1279,1251,1944,1931,1159,1937,1940,1941,1942,1145,1934,1173,1207,1164,1172,1161,2846,2838,2688,2687,2699,2796,2797,2356,2382,2349,2353,2354,2355,2793,2795,2196,2715,2716,2337,2338,2339,2296,2303,2319,2689,2692,2691,2845,2656,2657,2674,2852,2847,2853,2848] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [88,90,91,571,574,582,950,86,87,616,572,529,416,951,541,536,539,540,923,924,934,586,587,589,922,1027,1031,1023,1026,1025,927,93,111,115,133,132,92,252,254,524,237,109,110,112,114,1034,1028] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [916,918,1424,635,1450,601,926,927,1198,605,607,917,1189,1464,1465,1466,1457,608,642,1493] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2643,2644,2646,2979,2981,3012,3013,3014,2885,2888,2918,2919,2920,2844,2975,2977,2648,2976,2978,2980,2925,3047,3048,2875,2835,2843] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1170,909,910,925,926,927,893,923,934,102,103,105,112,114,1034,1054,1055,1033,1164,1156] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1260,1262,1285,1264,3136,1286,1287,1288,3103,3129,2373,2409,2402] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [680,627,702,737,626,975,958,988,738] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        