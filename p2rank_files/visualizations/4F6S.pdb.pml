
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
        
        load "data/4F6S.pdb", protein
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
 
        load "data/4F6S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1359,1355,1356,1227,1368,1369,1370,1251,1252,886,887,854,2678,853,855,802,646,798,800,297,1371,298,425,237,240,2684,2675,2676,2677,571,801,647,803,824,827,807,1228,248,1367,282,299,242,245,247,542,440,442,1375,1391,256] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1429,1699,1700,1440,1441,1223,1427,1655,870,872,873,875,908,909,1215,1224,1214,1404,1405] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1360,1117,1178,1180,1359,1353,1354,562,1161,1118,598,570,571,647,639,1166,1172,1174,535,542,539,531,530,1363] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1009,2532,2537,2547,2548,976,1005,2502,2504,998,999,1000,1001,1671,1667,982,956,967,994,983,2273,2288,2239,2243,2244,2245,2274,2232] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4073,2769,2771,4354,4355,4356,4360,4036,4037,4038,4039,4043,4048,4049,4047,4074,4006,4348,4350,4003,4357,4359,3995,3998,2753,2754,2756,2768,2735,2738,2739,2740,3992] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1663,1659,1684,928,1000,993,901,894,897,929,930,931,932,933,956] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3431,3432,3433,3805,4895,4888,4896,4887,3794,3793,3446,3447,3747,3749,3739,3758,4873,4850,4847,4849,4845,4846,4889,4826] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4283,4286,4662,4663,3019,4280,3088,3057,3058,3059,3055,3054,3014,3013,3015,4293,3060,3061,3062,4687,4686] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3089,3046,3048,3075,3082,3086,3076,3077,3116,3078,3323,3084,3315,3313,3353,3402,3321] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1504,1507,1508,1522,1996,1958,1984,1995,1470,2387,2388,2396,1959,1962,1940,1943,2381,1471,1547] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [47,52,3383,3385,50,25,3381,3389,3416,3410,3393,3411,2958,2959,2960,3378] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2334,2156,2154,2169,2171,1896,1899,1928,1929,1931,2374,1875,2355,2361,2366,2367,2365,1879,2160,2371,2372] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1905,1913,1898,2099,1935,1969,2021,2022,1970,1893,2050,2051] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        