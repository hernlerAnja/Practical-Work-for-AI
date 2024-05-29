
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
        
        load "data/6LES.pdb", protein
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
 
        load "data/6LES.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8175,7638,7643,7644,9317,8256,9668,8955,8933,8937,8953,8954,8791,8542,8543,8545,8927,8928,8930,8931,9651,9680,9682,9664,9665,9666,9667,9670,9669,7418,8565,8566,8557,7413,7415,7416,7417,7419,7412,9315,9316,7938,9313,9300,7654,7658,7420,8219,8223,8224,8251,8253,8250,8254,8964,8249,8291,8252,8255] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [836,837,838,1201,4436,4438,4583,1190,1191,4584,4585,4586,1188,452,451,441,447,450,4826,448,449,454,458,475,476,5341,5419,5457,1187,1189,5420,5422,1172,1185,1186,5417,5418,5415,5416,5421,834,4809,4810,4811,4812,4820,4824,86,87,4578,4581,64,65,63,77,78,4582,5104] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [6498,6851,6862,6864,10245,10243,10246,6497,6499,10238,10242,10241,10244,6093,10486,6119,5746,5748,5747,10484,6108,6111,6113,5725,6112,5724,5727,5735,5737,5739,10757,10762,6830,6846,6847,6848,6849,6109,6110,6136,6137,6494,10481,10469,10470,10471,10472,10480,6495,11001,6850,6852,10454,10763,10764,6483] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4017,4018,2523,4013,4014,4016,3665,4015,4030,4012,4028,1759,3664,1982,1984,1983,3285,3301,3302,2601,2599,2572,2575,3996,3997,3999,3303,3308,3310,3974,1606,1607,1609,1752,1754,1756,1757,1758,1612,1753,1755,1611,2571,2567] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2912,2913,2914,1999,3259,3268,3278,3274,3275,3276,3277,1744,1751,1757,2892,2905,1984,1985,1993,1983,3285,3302,1994,1997,3281,3665,1745,3664,3661,3663,2286,2284,2279] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [9190,9192,8164,8166,8167,9189,9188,9208,8163,8158,8160,9794,9795,9796,9797,9798,9799,9800,7015,7016,7017] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4145,4142,4143,4144,1336,4146,4147,4148,1353,1355,1356,2536,2538,3556,2506,1354,2511,2514,3534,3536,3537,3557,2503,2513,2508,2512] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [10989,10990,10992,10986,10991,9833,9834,9835,6976,6977,6978,6979,10984,6370,6390,6371,6372,6374,6980,6981,6982,11016] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [8537,8915,8917,8601,8602,7892,7893,9295] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3263,2885,2176,2949,3265,2240,2241,2175] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [637,2485,2452,3490,3492,2433,2451,2455,2431,2434,2355,2352,606,609,2364,2357,2361,2356,2386] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1887,1947,3810,4056,4057,4023] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        