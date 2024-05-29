
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
        
        load "data/6ITJ.pdb", protein
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
 
        load "data/6ITJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1168,1139,1153,1245,1253,191,193,194,195,196,1246,1247,1251,1252,1265,1269,163,164,169,737,755,1169,167,728,166,349,730,348,694,711,712,215,361,357,216,479,482,514,363,365,480,1266,1267,595,734,723,716] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3530,3607,3608,3501,3086,3531,3058,2919,3036,3040,2839,3035,3625,3626,2480,2482,2483,2484,3054,3079,2531,2660,2659,3052,3082,3089,3061,3078,2507,2509,2675,2676,3614,2806,2668,2672,3018,3615,2487,2488,2508,2510,2512,2486,2511,2532,2530,3609,2838] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1372,1436,1437,1375,1376,1373,1393,1142,1115,1116,1117,1143,1330,1333,1334,1336,1475,1335,1353,1476,1337,1102,1474,1559,1286,1296,1302,1305,1307,1322,1287,1288,1289,1154,1114,1275,1153,1253,1439,1444,1434,1435] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4356,4358,4360,4211,4194,4204,4065,4209,3930,4160,3760,4064,4123,4186] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3502,3998,3777,3103,3730,3732,3106,3105,3716,3778,3702,3504,3506] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1951,2232,2242,2243,2215,2244,934,909,910,1703,1705,1975,1935,1933,1934,1940,1945] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2689,2720,2719,2696,2987,2989,2992,2760,2691,2761,2326,2287,2293,2724,2723,2995] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1754,1619,1849,1875,1883,1893,1649] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        