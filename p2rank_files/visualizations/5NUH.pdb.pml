
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
        
        load "data/5NUH.pdb", protein
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
 
        load "data/5NUH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1105,2949,2704,2696,2697,2947,2948,2950,54,99,41,51,44,46,48,2828,2837,2841,2821,2840,2832,2842,2843,35,2844,2847,70,81,89,91,2683,2695,2686,2694,2688,61,67,71,58,544,98,424,56,1119,1120,1147,1148,1116,1121,1128,1130,1131,1137,1138,1093,1095,2403,2401,2402,2385,2388,2397,2400,2825,55,415,417,418,419,421,2512,57,2509,2511,404,2380,2381,2383,2384,1140,543,1141,447,1103,1104,1110,1468,1471,1474,1106,2951,2952,2873,2932,2933,1084,1090,1100,2823,1591,1596,92,1585,1503,1589,1584,1586,2135,2133,1500,2255,2257,2264,1097,2507,2508,2404,2407,2510,2433,2493,2246,2248,2254,450] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1312,1879,1878,1300,1309,1333,1299,1889,1897,1883,1884,1850,1938,1502,1507,1519,1524,1334,1335,1337,1511,1508,1557,1558] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [979,981,2250,2252,1161,1190,1192,1193,1194,1017,1018,1040,1041,2244,2245,2246,2247,2248,1168,1169,2249,1191,1991,980,2022,2013,2023,2024] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [164,205,162,158,161,163,197,187,155,207,315,337,338,339,340,342,341,343,352] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [451,455,458,454,466,250,504,850,791,789,795,796,801,507,251,260,263,449,286,288,611,808,809,790,473,471] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2068,925,936,2067,2069,2062,2105,2106,902,141,142,143,144,145,903,112] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2690,2691,2692,2684,2685,2686,2687,2689,112,114,115,120,2067,2069,143,145,2129,2130] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1386,1387,1388,1389,1390,1391,1392,1211,1207,1209,1212,1245,1246,1247,1248,1203,1239,1236,1364,1256,1359,1358] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1401,1391,1392,1211,1437,2237,1176,1203,1201] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        