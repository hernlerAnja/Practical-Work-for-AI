
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
        
        load "data/7UY0.pdb", protein
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
 
        load "data/7UY0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2469,2452,2547,2549,2541,1691,1692,1693,2548,2545,2416,2573,2567,2569,1708,1735,1742,2568,2602,2604,1913,2571,2433,2444,2445,6242,2088,2089,1545,1546,1549,1566,1559,1554,1560,6240,1562,1582,1584,1583,1536,1538,1540,1568,1569,1534,1535,1528,1529,1530,2113,2084,2081,2059,2080,1532,2053,1677,2034,2035,1689,2039,2468,2060,2056] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [2729,2730,3036,6229,6230,6231,3035,3042,6214,3056,6210,3000,3002,2983,2987,2996,3041,6298,6300,6297,6310,6316,6318,6302,6348,6376,6378,6299,6301,6303,6277,3032,3031,3029,3045,2141,5994,6420,6422,6423,6424,6373,5992,6169,6170,6309,6347,5987,2433,2445,6228,2742,2743,2105,2104,2947] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [1553,1561,6221,1563,1565,2629,2617,2626,2627,2628,2692,1552,1717,2603,1732,2605,2608,1734,1730,2651,2654,2693,5307,2642,2644,6220,6222,6273,6248,6251,6206,6202,6204] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [6062,6037,5660,5663,5667,5668,5634,5626,5628,5111,5113,5114,5489,6061,6134,5609,5614,5258,5631,6045,6135,6141,6142,5274,5610,5266,5270,5272,5273,5592,5164,5165,5163,5595] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4172,4173,4192,4194,4195,4202,4174,7068,7111,7097,4196,5828,5796,5801,5805,5797,7098,7099,7101,4231,4492,4498,4501,4507,4229,4480,7128,4510,5829,5830,5831,7060] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [6106,6077,6071,6072,5463,5465,4913,5464,6079,6081,6074,6078,4917,4924,4179,4180,4182,5639,5641,5642,4912,4910,6091,4178,4213,4215,4148,4150,6120,6121,5462,5637,5638,4938,5619,5615,4935,4936,4937,5623] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [629,596,598,624,625,617,619,621,622,623,658,933,903,924,599,600,601,3460,3503,3498,3501,3502,3522,3523,2243,2244,2245,2246,2212,915,2211,3490,3493,3497,618] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [6164,6009,6045,6046,6138,6139,6140,6141,6142,5274,5272,5273,5154,5165,5127,5149,5150,6026,6197,6287,6299,5145,6310,5314,5140,5143,5147,5322,6195,6160,6162,6166,5289,6169,6167,6170,6037] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [4938,5516,5615,5517,4934,4935,4936,4939,4945,5241,5612,5232,5237,5238,5242,3686,3687,4965,5236,5228,3668,3665,3669,3659,4931,4922,4011] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [4904,4126,3643,4905,4110,3631,4066,4065,4114,4116,4064,3632,4120,4121,4122,4124,4147,4150,4078,4927,4928,3996,3997,3994,3995,4016] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [2528,1335,2478,2513,2481,2044,2062,2527,2043,2048,1356,2485,2488,1336,1889,1333,1922,1355,1357,1353,1340,1890] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [547,548,549,551,553,557,537,554,46,57,58,423,491,514,1336,640,555,577,556,1326,1328,1346,574,575] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2781,2786,2790,2704,2706,2667,2657,2658,2663,3089,3066,6257,3091] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [1367,1373,1374,269,281,1368,1369,1870,1372,1920,1923,1927,1410,1388,1407,1845,1422,1424,1840,1869,1842,1844] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [4510,4515,4530,7127,7171,7135,4523,7142,4501,4480,7129,4482,7128,4174,7111,7110,7109,4194,4196,4161,4163,7146] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [1913,1930,2560,2020,1836,2571,2550,2553,2541,2542,2543,1691,2548,2035] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [1882,2349,771,2291,2292,2293,3430,3431,3465,3464,593,578,579,582,609,2294,597,602] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [1656,101,102,1363,1384,1358,1345,1350,1353,1354,1942,1355,1364,438,1657,1660,1356] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [3040,3167,3173,3175,3176,2992,3027,3028,3025,6706,6665,6667,6709] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [6164,6135,6136,6141,5610,5272,5410,5411,5595,5505,5358,5489] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [3888,4016,3610,3611,3889,3811,3813,3592,4031,3834,3835] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        