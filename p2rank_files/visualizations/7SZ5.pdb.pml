
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
        
        load "data/7SZ5.pdb", protein
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
 
        load "data/7SZ5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5174,5177,5181,5183,5353,5189,5190,5193,5194,5186,5188,5202,5242,5317,9296,5191,5192,5195,5201,5198,5187,5441,5442,5324,5319,5290,5292,8294,8302,8304,8305,8296,8297,9324,9325,9326,9334,9336,9291,9289,9290,9343,9346,9292,9293,7567,8295,7786,7788,7789,7790,9333,9335,7626,7627,7629,7805,7769,7565,9365,9358,9362,9366,9349,9370,5343,5342,5352,5350,5315] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [7298,7304,6996,6990,6993,1978,1889,1893,1896,1882,1885,6975,6979,6994,6995,1868,1883,1884,1908,1862,7158,7159,1909,1913,6905,7297,2187,7295,7296,2181,1900,7299,1863,7020,1864,1869,2047,2025,7007,7013,7017,7018,2184,7089,2183,7023,7024,2048,2198,1792,1794] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [78,82,83,90,5033,5029,5032,70,77,232,242,204,239,3183,5072,5073,5075,5076,5031,3193,3187,3185,3186,3190,3191,3188,3192,3194,5105,5103,5030,5088,206,205,62,5036,5066] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [7281,7283,7322,7460,7345,7362,7341,7346,7347,1969,1899,1900,7290,7280,1975,1976,1974,7360,7367,7458,7361] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [1620,1624,1700,1701,6641,1629,1602,1608,1609,6642,1534,1535,1541,1530,1542,1531,6713,6719,6720,6749,1547,6652,6736,6753,6653,6740,6734,6731,6811,6812,6744,1548] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [2634,2635,2228,2648,2649,2913,2915,2916,2917,2265,2259,2262,2276,2277,2272,2273,2332,2226,2229,2231,2235,2278,2403,2414,2424,2425,2426,2255,2236,2629] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2188,7011,2170,2178,7088,2257,2365,2347,2349,2233,2230,2232,2235,2256,7086,7087,7081,7078,2212,7085,2239,2243,2237,2366,2367,2179,2177] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [5235,9157,5264,5265,5468,9022,9024,9025,9020,5489,5663,5681,5682,5923,5933,5936,5940,9015,9019,9009,9010,5664,5667,9156] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [825,123,152,153,154,357,359,378,570,4898,556,4744,4762,4764,4765,4752,822] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [774,1402,1127,1017,1019,1126] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [7376,7381,7384,7385,7386,7387,7388,7366,7370,7343,7344,7349,7373,7515,8027,8028,8043,7535,7536,7537,7744,7745,7746,7759,7336,7340,7339] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [7179,5417,5791,6872,5602,5603,6863,6867,6869,7178,6898,6873,6874,5615,5402,6910,5144,6912,6913,5145,5146,6857,5400,5401] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [3183,5073,5075,5076,83,2661,2676,2678,2679,2946,2947,3165,2456,2451,2448,2454,5066,2513,2515,2516] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [3832,3859,3824,3830,3046,3047,3292,3049,3293,3803,3048,3092,3303,3304,3323,3847,3858,3062,3090,3091] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [8434,8959,8415,8943,8958,8405,8914,8926,8970,8935,8202,8160] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [7881,7883,9120,9122,7630,9309,7635,7820,7631,7899,7649,7650,7652,7817,7849,7856] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [679,680,491,678,2063,2068,693,694,7053,7043,504,306,7045,1767,1778,2067] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [7963,7986,8109,8194,8183,7798] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [7779,7705,7706,7708,7643,7644,7986,7680] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        