
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
        
        load "data/2Y8L.pdb", protein
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
 
        load "data/2Y8L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1791,1927,1928,1930,1934,1935,2475,2476,1794,1943,1929,2473,3203,3208,3209,3212,3198,3205,3650,3664,3207,2444,2458,2461,2462,2463,2464,2466,3054,3055,3070,3074,3075,3651,3652,3654,2599,2598,2618,2619,3646,2615,1796,1944,3056] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1079,1134,1135,1279,1078,1080,1280,1365,1603,1278,1097,1103,1104,1107,1108,1102,25,26,28,1175,1176,1267,1268,1096,1366,1092,1093,1364,1614,1380,1616,1270,1271,1274,1177,1179,1137,1131,1132,1133,1129,6] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2445,2446,2415,2442,3791,3799,3800,2870,3055,3064,3069,3070,3075,3076,3068,3655,3663,3792,3777,3778,2444,2453,2466,2467,2443,3079,3765,2903,2908,3660,3661,3762,3764,3763,2869,2871,2904,2898,2409,2450,2609,2610,2905] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2471,2307,2457,2455,2444,2290,2295,2302,2281,1910,1911,1912,1929,1952,1928,1942,1899,1904,1907,2300,2198,2202,2205,2242,2189,2231,2191,2241,2243,2282,2283,2284,1951,2233,1944,1979,2234,1921] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3212,3176,3197,3198,3226,3664,3179,3467,3411,3225,3450,3452,3215,3628,3633,3645,3644,3475,3480,3481,3479,3659] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [598,801,797,832,833,61,63,579,836,79,80,95,67,791,155,824,826,133,165,94,131,136,576] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1399,1400,1194,1,2,1740,1768,1738,1254,1397,1214,1199,1216,1218,1709,1238,1213,1223,1714,1707,1710,1711,1735] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [846,57,60,62,64,67,1245,1246,1247,1187,1262,1207,1209,798,799,802,830,831,832,840,63,804,805,1202,1191,1248,1251,55,1425] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [372,398,399,373,759,1877,756,1876,239,241,787,218] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1305,1308,636,1294,630,631,632,625,628,629,1285,2549,701,702,703,700,637,639,2516,2537,2565,1288] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1161,1162,605,1047,502,1029,324,326,482,479,587,603,465,466] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        