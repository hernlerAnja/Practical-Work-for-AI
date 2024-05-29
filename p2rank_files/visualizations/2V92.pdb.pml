
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
        
        load "data/2V92.pdb", protein
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
 
        load "data/2V92.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1287,1292,1144,1147,1148,1150,1192,1059,1060,1061,1076,1094,1121,1122,1124,1155,1120,1281,28,29,31,1077,1379,1394,25,26,27,5,1075,4,6,1107,1109,1073,1074,1188,1189,1190,1283,1291,1293,1378,1615,1157,1626,1628,1630,1393,1377] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1939,1940,1941,1942,1808,3085,3086,3210,1806,1807,2485,2487,1955,3217,3219,2463,2476,2478,2470,2474,2475,3224,3226,3228,1804,1805,2488,3664,2610,2611,2612,2630,2631,2473,3657,3658,3662,2619,2613,2617,3666] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2307,2314,2293,2302,2319,2456,2467,2469,1940,1941,1916,2312,1919,1922,1923,1924,2317,2483,2484,2253,2254,2294,2296,2255,2295,2217,2214,2215,2207,1962,1963,1964,1991,1954,1956,2243,2206,2245] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3087,3091,2881,2882,2883,3082,3673,3776,3076,3080,3067,3081,2455,2456,2478,2479,2915,3777,2916,2910,3675,3672,3789,3790,3803,3810,3811,3812,3804,2920,2917,2904] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [802,832,833,838,60,62,63,67,1275,778,803,1259,804,805,808,1204,1220,1222,1215,1258,1200,1437,839,842] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3657,3671,3640,3645,3655,3493,3479,3487,3492,3190,3191,3674,3209,3210,3676,3423,3425,3462,3464,3422,3227,3237,3224,3225,3229] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1267,1252,1412,1413,1207,1779,1,1780,1212,1205,1228,1230,1231,1410,1758,1755,1754,1251,1227,1229,1750,1752,1721,1722,1723] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [628,629,630,631,625,632,701,702,1301,704,703,2561,2528,2550,637,638,635,636,1298,1307,1319,2577,1321] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2800,3572,2772,1481,1482,1483,2721,2733,2743,2762,2758,1470,2688,2693,3592,2719,2690,2724,2728,3600,2695,2748,2746] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2037,2038,2039,2072,2110,2112,2114,2115,2113,2151,2108,2109,3324,2138] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        