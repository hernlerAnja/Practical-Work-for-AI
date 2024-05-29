
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
        
        load "data/1N8Z.pdb", protein
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
 
        load "data/1N8Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5384,5386,6777,6778,6568,6569,6570,6571,6572,6574,5354,5372,5375,5454,6338,6563,5302,5301,3309,3310,3312,3314,3315,3319,3323,3324,6779,6579,6792,6794,3499,6790,6791,3325,6387,6389,6391,6341,6342,6363,6364,5453,5353,6776,6786,5350,3296,5360,5363,5356,5368] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5046,5310,3547,5317,3546,3734,3735,3736,3545,5012,4988,4991,5003,5083,4996,4997,3726,3725,5299,5316,5307,5301,3312,3304,3302,3303,3305,5047,5048,5049,5067,5068,5069,4976,4977,5321,5330] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [6383,3396,3400,3401,3393,3374,3384,3390,6382,3375,3376,6399,6401,6403,6594,3404,3430,3431,3436,6162,6440,6441,6442,6164,6178,6179,6372,6374,6375,6425] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [2071,2073,2060,2034,2036,7474,7477,7478,7480,7482,7595,2431,2457,7608,2427,7637,7600,7607,7618,7362,7364,7486,7365,1874,1873,1875,2037,2428,2429,2430,7590,7591,7593,7571,7592,7594] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [699,2437,2447,2435,378,7570,7674,7675,226,225,7732,7578,7577] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [5670,5671,5676,5677,5679,5672,5902,6144,6373,6374,6375,6376,5674,5738,5743,5718,5745,5750,5921,6356,6357,6143,6361,6382,3378,3376] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [5462,5660,5460,5687,5876,6128,5878,5456,6355,6357,5471,5493,5496,5483,5484,5465,5694,5695,5621,5622,5626,5643,5645,5662,5696,5661,5466,5515,5517,5502,5510,5505] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [2444,2445,2446,370,2441,2442,369,371,404,7778,397,421,425,415,417,7748,7749,7754,7656,2435,378,7673,7674,7675,7672,7645,7646,7650,7651,7653] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [3325,3557,3558,3565,3333,3341,3575,3328,3329,6387,6385,3955,3957,3344,5453,3559] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [6906,6905,6907,6860,6673,6657,6662,6680,6681,6687,6880,6684,6934,6933,6651,6911,6883,6690,7002,6695,6682,6683,6944,6940,6949,6943] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [716,7490,7507,718,194,7563,709,7562,7582,722,7513] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [2818,2819,303,304,305,306,2530,2353,2354,2377,2375,2513,1934,1948,284,286,290,1932,1933,1935,285,2521,2522,2536,2534,2537] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [5019,5020,5029,5030,4427,4429,4430,4447,4220] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [7602,7562,7582,7563,7490,7507,718,7522,7513] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [2537,2549,2809,2810,3013,3014,3015,2342,2536,1946,2796,2797,2550] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [5019,5030,4429,4430,4447,4803,4896,4437,4439,4898] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [2913,1286,1287,2926,1049,1050,1310,2896,2901,2906,2907,1042,1051,3061,3062] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [2095,7454,7503,2098,2139,2141,7455,2090,2091,2092,2102,2104,2080,2082] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1934,1949,1950,1952,284,286,1951,283,640,290,786,787,788,1933,1935,1954,1955,285,641,664,1268,1270,1269,289,296,297,302,789] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [1708,1710,1709,1711,3196,3204,3194,3205,1707,2820,2529,2522,2524,2819,2530] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [1391,1416,1417,1419,1415,1459,1198,1199,1457,1158,1159,1160,1169,1217] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [1042,1051,2714,3061,3062,3063,1040,870,871,2713,2699] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [999,1367,1368,1382,1381,2978,2980,3022,1231,2749] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        