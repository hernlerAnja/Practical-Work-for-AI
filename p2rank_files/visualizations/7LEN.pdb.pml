
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
        
        load "data/7LEN.pdb", protein
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
 
        load "data/7LEN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3756,3761,3933,3773,3763,3769,4022,3766,3767,3768,4021,6797,6795,6803,6805,6558,3772,3774,3781,8121,8124,8130,4025,3782,3779,8155,8164,8166,8165,6289,6290,6291,6127,8128,6125,6131,3757,6800,3932,6782,3923,8185,8187,8192,6801,3927,3930,3926,3895,3899,3902,3893,3894,3896,3898,3919,3918,3917,6818,6828,6802,6804,8189,8193,8118,8119,3822,8182,3866,3871,3872,4040,3803,6074,6076,6084,6273,6068,6121] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [54,3013,3014,3016,7754,53,7753,51,52,61,7756,7759,7764,34,3009,3011,3012,3008,7815,7825,3029,2779,2502,2519,2520,2780,2518,7800,2354,2358,2360,2364,7791,3006,7798,7801,2305,2312,2303,2297,41,43,44,48,49,213,212,201,207,197,206,198] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1842,1840,3993,3997,1841,3981,4182,4195,4370,4371,4383,1815,5721,1814,1819,5459,5727,3717,5728,5461,5463,5426,5427,4183,5416,5422,5716,5734,5735,5724,5718,5719,3741,3980,3982,3723,3726,3994,3991] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [5522,5523,5528,5708,5524,5542,5543,5544,5539,1784,1790,1778,1791,1794,1795,5829,5830,5839,5838,5831,5832,5834,1860,1745,1746,1750,1926,1761,1765,1766,1764,1903,2056,2057,2058,2060,2067,2072,5638,5556,5569,1767] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [273,275,276,261,262,640,641,654,466,1953,10,1684,1685,22,5591,5592,5593,642,1681,1942,1945,1946,1638,1640,1643,1644,452,453,454,5618,5620] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1782,5835,1781,5833,1858,5815,5817,1848,1853,1856,1857,5822,5818,5903,5881,5882,5985,5986,5987,5858,5873,1852] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5298,5294,1429,5297,5374,1430,5211,5299,5276,5221,5302,5303,5307,5312,5220,1442,1521,1511,1517,1437,1441,1512,1493,1494,5208] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2043,2045,2046,2053,2218,2219,2051,2109,2220,2110,5629,2104,2101,2127,2128,2222,2223,2226,5634,5635,5631,2061,2063,5559] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [7614,331,332,94,124,125,7492,7486,7491,7493,517,515,514,772,348,533,518,7484,7485] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [47,48,59,305,302,301,320,210,83,176,179,182,151,152,146,178,174,175,103,62] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2355,2356,2352,2346,2321,2357,2361,2362,2613,2611,2612,2589,2396,2398,2386,2397,2610,2629,2403,2406,2365,2546,2550,2551,2552,2547] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3814,4048,4050,7854,4243,4501,4068,4262,3844,3845,7846,4069,4247,4487] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6736,6030,6525,5874,5924,6527,6528,6529,6046,6246,6247,6240,5919,5921,5974,6754,6737,5878,5901,5908,6029] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [7805,7806,3073,3228,3229,3243,3060,2795,3004,2812,7818,3015] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [8170,8174,6828,6826,6849] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [7453,6660,6661,6906,7454,6652,6653,7432,7433,7434,7431,7425,7424,6703,6935] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [2275,2486,2489,2270,2474,2475,2263,2267,2476,2141,2144,2145,2146,2147,2148,2149,2485,2765,2749,2126,2130,2133,2106,2102,2103,2490] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6128,6129,6136,6320,6357,6360,6317,6318,6321,6322,6323,6383,6153,6401,6124,6384] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        