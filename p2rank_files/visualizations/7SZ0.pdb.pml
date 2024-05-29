
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
        
        load "data/7SZ0.pdb", protein
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
 
        load "data/7SZ0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7297,2184,2187,2181,1882,2182,2183,1879,1885,1893,6995,7003,7006,7293,6992,6989,1978,7157,7158,7294,7303,1896,7135,7019,7023,7088,2047,2048,6993,1862,1863,1864,1865,1868,1869,7018,1792,7022,6972,6974,1883,6978,1913,2175] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [8301,8303,8295,8296,8300,8302,10180,5182,5185,5188,5192,5193,5191,5180,5351,5352,10092,10094,10095,10097,10164,10165,5187,5241,5315,5316,5200,5201,10189,5349,5312,5314,5338,5341,10191,5346,5336,5337,5345,8293,10145,10142,10144,7623,10134,7626,7786,8280] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [5054,5055,5068,5079,5081,203,204,227,228,208,207,4985,4983,4984,131,88,89,4987,4986,91,236,239,241,242,5071,5072,5069,5070,70,72,74,77,202,205,231,62,3189,3190,3191,3186,3188] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [6749,6751,6758,6809,6739,6810,6719,6733,6734,1602,1607,6712,6718,6657,6640,6652,6641,6814,1530,1531,6831,1547,1642,1646,1629,1624,1625,1620,1639,1641,1699,1623,1700,1608,1609,1546,1537] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [2256,2249,2251,2365,2366,2250,2367,2169,2171,2172,2176,2177,2178,2179,2166,2257,2347,2349,2351,2230,2233,2235,2236,7286,7086,7085,7010,7084,7080,2211,2188,2189] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [7279,7281,7282,7296,7298,1899,1900,7289,7457,7459,7360,7361,7367,7477,2176,1970,7343,7340,7345,7346,1976,1975,7299,1974] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [5600,5601,5602,5400,5401,6866,5614,5789,5788,5804,5803,5143,5144,6896,6897,6888,7178,7177,5790,6872,6877,6868,7185,6909,6911,6912,6913,7174,1932,1941,1933,5416] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [1767,1778,2067,2068,678,679,680,1758,1762,1799,1801,1802,7043,504,694,490,492,290,306,289,291,491,33] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [2661,2945,2947,2678,3185,3186,2454,2492,2509,2456,3183,2676,5024,5032,5034,5035,2513,2516,3191,74,83,4985] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [7524,7531,7536,7743,7744,7745,8026,7369,7380,7384,7335,7339,7385,7338,7388,7342,7758,8042] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [2270,2234,2255,2426,2274,2278,2228,2229,2232,2932,2633,2648,2916,2427,2649,2634,2635,2628,2406,2421,2405,2414,2259,2262,2273] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [4850,556,4869,4870,812,4855,4878,4879,4880,357,359,378,123,152,154,552,571,377,553] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [74,83,84,4985,4983,88,89,4987,4986,91,4990,5032,5034,3191] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [5187,5241,5316,5198,5201,5222,5186,5444,5440,5441,5459,5205,5291] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [3047,3048,3040,3294,3833,3859,3824,3049,3323,3849,3858,3092] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [9989,5264,5467,5469,5662,5663,5666,9979,9980,5233,9960,9961,9965] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [6911,6912,6913,5120,5122,6862,6868,6856,5601,5401,5121,5128,5130,5137,5141,5142,5143,5144,5145,5114] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [8150,8404,8934,8933,8433,8959,8159,8968,8969,8940] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [10162,10165,10186,10094,10074,10075,10079,5312,5314,5341,5342,5241,5315,5316,5239,5238,5277,10061,10072,10073,5278,10066,10070] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [131,90,180,181,213,203,204,208,207,211,77,330,205] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        