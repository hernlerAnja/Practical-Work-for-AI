
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
        
        load "data/1FYR.pdb", protein
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
 
        load "data/1FYR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1467,1475,1476,1549,1440,1451,1439,1441,1551,1481,1530,1531,1532,1493,1497,1499,1477,1480,1509,1347,535,536,537,496,1342,1345,1346,532,538,1500,515,1501,1503,1452,514,503,511,517,682,683,686,687,721,3127,3128,691,1327,1348,1324,1321,1325,2277,2359,2360,2361,3063,3073,3077,3145,3147,722,2358,741,657,659,739,667,671,2375,2376,1510,2378,661,665,666,670,627,629,630,631,641,642,2405,2594,2596,2595,2356,2266,2275,2278,2365,2355] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2131,2134,2135,2137,3048,3076,3081,3082,3036,3037,3072,2285,2943,2249,2251,3096,3100,2158,3099,3088,3089,2279,3092,3093] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3162,3164,3146,689,690,3124,3127,692,694,1814,1815,1808,1475,1434,1469,1437,1439,1347,1426,1432,1366,3123,3137,3140,3141,3144] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3033,3021,3022,3027,3028,3030,2960,2962,2998,2320,188,190,1568,189,2999,3023,3026,3000,3003,2309,2319,2327,2311,2313,2929,194,1566,1567,3065,2334,2339,2340,2341] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2239,2240,2270,2271,2387,2388,2208,2432,2423,2422,738,2269,1004,758,756,755,754,646,734,745,735] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2763,198,2333,2762,2760,358,359,197,350,2765,2768,376,2775,356,354,393,1523] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1004,1005,758,756,718,717,3095,2236,738,740,2279,2269,2237,2238,2239,2240,734,735,731] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3024,3025,3026,1627,1629,1646,1637,1644,3055,3056,3057,1578,3174,1575] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        