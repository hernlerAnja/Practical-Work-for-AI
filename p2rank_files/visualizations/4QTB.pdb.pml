
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
        
        load "data/4QTB.pdb", protein
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
 
        load "data/4QTB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3180,3172,3176,3177,3178,3181,3182,3184,3162,3169,3186,4231,4232,4519,4521,4219,3472,3500,4332,4333,4336,4337,4338,4352,4339,4230,4239,4218,4360,4361,4202,3459,3467,3460,3462,3813,3814,3815,3819,4330,4331,3318,3206,3208,3210,3187,3832,3836,4255,4256,3154,3834,3835,3153,3852,3863,3895,3897,3842,3843,3849,3850,3851,3856,3497,3350,3351,3498,3499,3333,3335,3352,3156,3157,3159,3637,3638,3830] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1272,1370,1372,236,238,1263,1264,237,239,1289,904,907,403,404,524,402,1371,230,233,234,387,235,232,214,221,229,208,211,258,205,260,262,206,370,876,893,895,896,894,936,878,879,385,858,874,202,1235,1251,1252,1265,512,514,516,228,1365,690,857,859,689,1288,1363,1364,549,550,552,551,855,863,880,1366,1369,1393,1385,1388,1566,1394,1552,1554] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1480,1705,1706,5880,1721,2451,2452,2461,2431,2449,2450,2453,5884,5882,1632,5877,5856,5861,5863,2077,2078,2460,2440,2444,2445,3538,3553,3539,3557,3559,5858,5862,1485,1488,1668,1664,1666,1667,2085,2087,2437] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4671,4673,4672,4688,5418,5427,4687,5416,5417,5419,4444,4445,4447,4641,4596,4599,4600,4640,4602,4448,4452,4454,5044,4635,5045,5426,5052,5054,5411,5406,5410,5397,5403,4631,4633,4634,4626] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1713,5900,5901,5913,2485,2491,2494,2496,1432,1707,1712,1709,1711,1716,1447,1714,1715,2512,2502,2511,2497,1169,1167,5874,5877,5879,2457,1704,1705,1720,1721,2450,2474] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3615,4015,3623,4079,4053,4013,5569,4045,5567,4081,4080,5614,3624] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [996,1065,1325,1026,1027,1028,944,979,1301,1309,899,889,943,977,978] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1252,1250,1265,1812,922,924,961,1586,1602,1589,1591,1567] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1704,1705,5880,1720,1721,2451,2461,2449,2450,2474,5874,5877,5879,5875,2457,5901,2496,1711,1716] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4219,4534,4558,3923,4827,4232,3878,3880,4226,4569,4779,4217,4553,4556] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1470,1472,1455,1461,1452,3823,3661,3530,3571,3628,3640,3641,3601,4317,3588,3592,3598,3600] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [3905,3906,3939,3940,3941,3845,3855,4268,4292,4027,3987,3989,4274,4276] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4682,4131,4678,4680,5468,5457,5463,5470,5474,5460,5461,4128,4127,4135,4136,5462] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [676,1091,1092,1093,1051,1053,664,667,1083,2589,2596,2598,2601,1084,1117,1118,1119,2648] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2057,2439,2468,2026,2004,2016,2005,2012,2432,2020,2428,2422,2425,2389,2416,2427,2241,2243,2392,2008] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3082,1447,3251,3275,1191,3267,3268,3676,3677,5890,5893,3656,3675,1446] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        