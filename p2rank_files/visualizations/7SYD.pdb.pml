
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
        
        load "data/7SYD.pdb", protein
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
 
        load "data/7SYD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8293,10142,10092,10093,10095,8302,10144,10145,10096,5192,7626,10134,5191,10097,8300,10164,10181,10180,10189,10094,10073,10165,10186,10187,10201,10061,10072,10070,8295,8296,5193,8274,7771,8055,8280,7564,7566,7602,7611,5185,5186,5187,5200,5440,5199,5201,5241,5291,5197,5441,5314,5345,5349,5313,5315,5317,10191,5338,5321,5318,5239,5238,5277,5307,5316,5342,5278,5275,5180,5182,5188,5190,5172,5352,8057,7788,7619,7623] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [70,82,83,78,90,4982,4984,4985,4987,3186,3189,3190,3191,5070,5071,5072,5069,5054,5055,5079,5081,62,63,3188,72,91,75,77,211,242,239,241,203,204,207,208,330,131,181,202,205,206,235,236,227,231,232,2679,2945,2947,3183,3170,3185,2661,3165,3193,5032,2676,2678,2454,2456,5034,5035,2516,5024,2492,2509] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1882,1883,6972,6973,6974,1879,1908,6989,6992,6994,6975,6978,1862,1863,1864,6993,7012,7019,7018,1865,1868,2048,2025,1869,7023,7022,2047,6902,6904,7157,7294,7297,7293,1885,1893,1896,2181,2184,2185,2187,7088,2183,2193,7003,7006,2198,1977,1978,1909,1913,1902,7308,7303,7158] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1976,7279,7281,1970,1900,1974,1975,1898,1899,7286,7298,7299,7282,7287,2177,2176,2175,2178,7289,7366,7367,7457,7475,7476,2179,7288,7360,7361,7477,7337,7340,7345,7346,7458,7459] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [6743,6752,6657,1602,1607,6712,6719,6734,6735,6718,6645,6656,6640,6652,6751,6749,6809,6810,1530,1628,1633,1623,1699,1700,1542,1629,1625,1624,1642,1648,1547,6738,6739,6732,6733] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1932,1941,5614,5804,5416,5160,5788,5789,5790,6867,5400,5401,5602,5143,6888,7178,7174,7177,7185,6872,6909,6910,6868] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2188,2189,7009,7010,2166,2169,2172,2176,7087,2230,2171,7086,7084,7085,7079,7081,7286,7287,7285,2251,2365,2366,2250,2256,2235,2236,2347,2233,2257,2349,2342,7289,2179] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [492,504,678,679,680,694,491,302,34,290,35,306,50,1778,2068,2064,2075,7043,7042,7051,7044] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [7744,7745,8026,8027,7535,7536,7369,7372,7380,7383,7338,8042,7755,7387,7758,7759,7339,7343,7384,7365] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [9990,5264,9958,9960,9965,5233,5666,9980,5910,9995,5922,9961,9979,5467,5469,5662] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [357,359,378,552,556,571,812,154,123,4850,4851,4855,4879,4880,4865,4869,4870,800,4885] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [8575,8580,8843,8846,8830,8837,8840,8841,8848,8809,8802,8803,8806,8801,8774,8776,8570,8571,8597,8604] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4962,4960,4963,5076,5077,5075,5091,5092,5093,5055,4984,129,128,205,206,167,170,231,232,197] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [7257,7259,8262,7166,7169,8489,7168,1958,1960,7331,1959,8285,7162,7171] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4412,4414,4340,4406,4409,4341,4408,4576,4339,4514,4540,4667,4533,4536] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3849,3831,3832,3833,3049,3294,3048,3040,3041,3823,3824] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        