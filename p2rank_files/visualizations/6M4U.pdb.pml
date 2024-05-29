
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
        
        load "data/6M4U.pdb", protein
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
 
        load "data/6M4U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1830,2637,2639,3120,1910,1912,3119,3154,3155,3156,3116,3117,1951,1952,1911,2298,2296,2297,2320,2319,3186,1976,1979,1981,1983,1984,1985,1971,2045,2048,2054,2057,1999,2058,2047,2060,2065,2268,2270,2634,2269,2090,2091,2092,2094,1829,2390,1902,2389,1897,1909,2326,3181,3182,3183,3184,3185,3187,3137,3138,3149,2638,2640,2635,2636,2641,3139,3211,3213,3215,2598,2599,3145,3147,2572,2574,2576,2597,2601,2604,1615,1620,2049,2051,3216,1617,1616] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1536,1539,1503,1002,1003,1004,1005,1006,1007,696,1001,673,342,347,1540,1541,1542,1543,1544,1545,202,285,286,287,288,328,273,276,278,672,695,423,642,644,674,676,999,1000,365,352,355,357,359,360,361,200,201,470,765,646,645,766,1583,1568,1569,1571,1573,3257,3258,3262,931,932,964,965,1505,933,942,1495,1496,1513,1474,1475,1497,1478,1477,327,1525,1535,1526,433,434,466,469,471,430,436,441,442,443,424,425,426,427,428,3259] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [160,161,389,3250,410,382,386,372,373,426,427,428,145,3222,3223,3224,3225,3187,3220,3221,3251,1581,1582,2012,2011,1578,2034,1579,1583,3256,3262,365,366,367,368,369,2013,1614,1608,1988,1990,1991,1992,1993,1995,1989,1994,2455,1787,1788,1789,831,2452,2457,1997,1996,1773] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2852,2853,2854,415,3260,3261,407,403,405,418,2877,401,2504,2505,2507,2503,2885,2920,2485,2489,2882,2478,2481,2484,2848,2851,2849,2850,3242,2921,3240,2879,2878,971,972,942] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1247,2043,1214,1215,1216,1210,1212,1213,1244,851,865,1283,1282,1237,1240,1241,1272,1239,871,1619,849,850,844,847,1589,1598,869,1600,2027,2030,2031,2025,2039] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1343,1383,1103,1130,1346,1104,1107,1374,1074,1076,1415,1341,1414,1099,1071] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        