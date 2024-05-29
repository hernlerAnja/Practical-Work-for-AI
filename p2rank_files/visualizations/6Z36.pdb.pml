
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
        
        load "data/6Z36.pdb", protein
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
 
        load "data/6Z36.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6716,6691,6905,6912,6915,5887,5893,5897,5898,5951,6750,4757,6692,6694,5494,6749,4851,4852,5790,5791,5023,5802,4760,5826,4758,4759,5266,6911,5754,5750,5045,5837,5840,5855,5857,4808,4809,4811,6918,4771,4810,4812,4813,4814,7142,7143,5195,6631,6917,7144,5136,4795,4799,5146,5148,5051,5053,5049,4853,5194,5265,6662,6663,7187,7162] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [682,2366,491,2495,1407,2493,2494,2513,2538,2115,2146,256,257,296,200,214,251,252,489,579,254,238,240,242,580,487,1203,1239,1240,483,1199,294,295,461,201,203,202,1271,1273,2353,2359,2360,2363,2083,2202,2143,2168,2114,1346,2144,1347,1336,1342,2528,2533,2534,946,945,1251,2201,1286,1289] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [8190,8192,1899,8187,8208,8210,8211,1745,4410,4473,8255,8253,1686,1688,7365,7366,7367,1793,1795,842,870,872,871,893,2298,1780,1744,1779,1781,1898,1900,7331,8342,8188,8193] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [7315,8188,8189,8191,8193,7317,7163,7164,7160,7360,7363,7364,7394,7313,7420,7238,7257,7261,7175,7176,7568,6603,7504,7318,7124,7139,7419,6607,6608,6604,7506,7107,7366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2115,1382,2146,2147,2148,3536,3541,3567,3539,3549,3550,3555,2113,2603,2539,2601,3141,3428,1380,3412,2575,3413,2576,2577,2145,2134,1378] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [7196,7188,7211,7215,6663,6696,7217,7218,7219,8147,8164,8163,5929,5931,5933,6694,6695,8010,7243,6661,6682,7756,6693,8009] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2753,2673,2676,2752,2615,2619,2675,3594,2722,2782,2056,2059,2060,2867,2869,2953,2077,2055,2082,2526,2527,2533,2516,2490,2511] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [8912,8929,8942,8932,8933,8934,6389,6387,6412,8956,8959,7476,7546,7477,7480,7547,7478,7524,7525,6391,7596,7544,7521,6388,8888] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4385,4380,4383,4384,4363,4339,1850,1854,4409,1829,2884,2888,2839,2924,2886,2981,2929,2931,2932,1826,2894,2896,2841,2843] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [446,992,993,1221,107,1222,1009,380,383,377,378,379,381,382,384,67] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1294,2236,2324,1292,866,907,959,960,1253,1254,1255,1256,1257,1295,1252,1268,881,883,2238] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [5471,5846,5845,5507,5433,5508,5803,5804,5805,5448,5450,6784,6786] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1686,1688,1606,1745,8255,2297,2298,2299,1627,1700,1623,8341,8342,4543] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [2287,1580,2285,1653,1516,1498,1572,1578,1651,2219,1325,1426,1427,1487] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4695,4696,5730,5733,5734,5735,5728,5578,5581,4664,4660,4661,5773] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [942,943,946,2350,2359,2376,683,2333,1240] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        