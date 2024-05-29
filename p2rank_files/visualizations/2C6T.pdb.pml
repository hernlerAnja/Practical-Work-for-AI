
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
        
        load "data/2C6T.pdb", protein
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
 
        load "data/2C6T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6686,6688,6596,6597,6598,6599,6739,6554,6555,6590,6566,6563,6564,6567,6568,6741,6556,1814,2178,2198,2199,2200,2197,2158,2122,2129,2130,2123,2097,2099,2100,2101,2131,1973,1974,1994,1998,1999,2000,2001,2089,2069,6536,6538,2092,2093,6539,6534,6546,6740,6547,1993,2156,2150,2159,2165,2121,2157,2144,2167,6665,6623,6626,6622,6624,6625,6664,6610,6588,6611,6617,6612,6467,6468,6471,6586,6589,6466,6682,6685,2202,6666,6667,2132,2221,2272,2274,2281,2266,2246,6276,2245,2262,2263,2264,6454,6460,6461,2279,2280,2079,6668,6669,2226,2227,2404,2219,6305,6281,6284,6632,6634,6235,6231,6439,6440,6441,6274,6279,6282,6283,6710,6712,6731,6730,6732,1972,6748,6733,6746,6747,1991,1807,1809,1817,6713,1764,6871,1838] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [1059,695,1052,1081,1064,83,89,94,102,101,92,90,1167,1149,1152,1157,1158,1160,1153,1154,259,502,1080,635,242,87,84,139,140,141,636,638,640,399,429,639,501,681,688,692,661,664,679,680,672] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [5620,5621,5106,5107,5102,5103,5105,4554,4551,4726,4569,4607,4608,4722,4723,4550,4559,4709,5519,5526,5531,5624,5625,5627,5162,5547,5619,5148,5155,5548,4969,5128,5131,4970,5111] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [1868,1869,1876,1877,1421,1434,1427,1435,1438,1422,1426,1824,1826,2185,2183,2184,2192,6851,6855,2193,6857,8043,6894,8053,8054,8055,8056,8057,8049,8052,8468,8469,1835,1840,1841,1862,1842,1860] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [7318,7972,7315,7317,7971,8153,8151,8128,5713,5714,5734,5736,7611,7612,5670,5671,7319,7316,7301,7303,7310,8825,5700,8006,8033,8036,8004,8007,8120,5674,5683,5684,5697,7974,7978,5443,5675,7979,7980,5444,5669,7981,8814,8132,8811,8823,8816,5699,8125,8126,8099,8122,8127] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [1459,1460,1466,1468,1472,1444,1445,1455,1234,1239,1240,1214,2452,1219,2206,2405,6668,6669,2402,2403,2404,2392,2395,2396,2398,2406,1226,1228,1231,2183,2184,2181,1434,1435,2182,2187,2189,2192,2193] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1220,1223,1230,1232,1233,3540,3539,2840,2843,3504,2848,3505,3511,1245,1246,1247,1217,2834,1249,3145,8081,3684,3686,4344,3661,3665,4356,4358,3569,3655,3658,3632,3633,8086,4370,4371] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3480,3831,2902,2905,3485,2871,2898,2899,3740,2550,2553,2564,2896,2933,3491,3781,3780,3790,3792,3795,3779,3497,3853,3730,3732,3734,3736,3826,3832,3809] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [7363,8197,8199,8207,8201,8203,7366,7369,7372,7338,7365,7013,7030,7031,8262,7400,7342,8298,8299,8276,8320,8247,7017,7020,6988,7014,7947,7964] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [2388,6293,6337,6307,6309,6329,2390,6344,6327,5902,5905,6650,5901,6651,6652,5888,5893,5884,5889,6644,6659,2384,6302] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [5939,6650,5851,5901,6651,5911,5922,5926,5935,5854,5698,5707,5701,5706,5927,5934,6648,6649,6660,6659,6872,5933,6859,6862,6863,6865] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1216,1217,1267,1269,1203,1249,3145,1208,1207,1245,1247,1241,1204,2852,3144,2849,3511,3512,3513,3514,2848,2850,3505,1230,3539] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1177,1178,1179,1182,3149,1277,1279,388,3158,1274,365,1175,351,354,360,361,364,366,359,386] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4813,5028,7809,7810,5039,7850,5037,7816,4807,7841,4804,7820,7811] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4826,5650,4832,5642,4831,5741,5744,5746,7625,4853,4855,5654] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5520,5176,5178,5179,5506,5788,5821,5515,6033,5513,5514,5820,5801,5802,5804,5807,5809] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [8109,8110,8832,8830,8831,8840,8842,3642,3643,8871,8803,8806,4336,4339,4364,4365,4373,4375,4395,4404] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [6984,7004,7015,4914,4910,7922,7923,7924,7925] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [2312,838,2319,804,806,2080,2062] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        