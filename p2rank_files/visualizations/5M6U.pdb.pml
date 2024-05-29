
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
        
        load "data/5M6U.pdb", protein
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
 
        load "data/5M6U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5431,5404,5408,5435,5610,5351,5380,5759,5762,5763,5765,5744,5778,5506,5207,5385,5386,5204,5383,5271,5269,5277,5223,5268,5266,5206,5228,5549,5552,5505,5551,5609,5565,5270,5452,5453,5630,5631,5793,5797,5813,5811,5353,5354,5357,5247,5248,5333,5777,5779,5789,5790] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [2196,2197,2199,2198,2430,2641,2640,2652,2201,2202,1869,2089,2200,2087,1859,2042,2044,2043,1858,1965,1769,1955,1956,1957,1958,1758,2069,1961,1754,1755,1962,2055,2057,1953,2449,2450,2212,2213,2023,1772,1849,1848] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [4857,4859,4886,5062,5065,5052,4916,4917,1496,1136,4881,5045,4880,4914,4918,3577,3583,4892,4889,4890,4891,4915,3870,3872,3916,4860,5068,5076,3873,4494,4504,4505,4513,1134,1135,3569,3548,3570,3572,3574,3841,1120,1121,1122,1123,1127,3568,3917,3573,3575] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [4644,4647,4762,4668,4587,4669,4539,4687,4688,4586,4570,4371,4363,4361,5131,4199,4225,4447,4448,4446,4559,4226,4245,4387,4362,4388,4489,4490,4207,4470,4590,4591,4585,4589] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [1420,1481,1501,1504,1300,1297,1298,1299,1318,1465,1513,1256,1262,1466,1173,1252,1251,1260,1509,1276,1279,1280,1284,1285,1272,1463,1273,1483,1583,1587,1570,1571,1167,1186,1172,1242,1506,1352,1419,1353,1595] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [2340,2135,2137,2387,2388,2386,2404,2710,2339,2714,2722,1679,1682,2116,1675,1676,2686,1688,2734,1678,2392,2328,2329,1723,1728,1730,2114,2117,2669,2670,2667,2678,2681,2682,1718,1733,1736,1738,1702,1713,1712,2663,1732] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [5059,5162,5620,5621,5638,5156,5559,5057,5139,5143,5150,4853,4789,5636,5639,5640,5641,5645,4788,5138,5187,5560,5159,4636,4648,4768,4770,4649,4658,4659,4660,4769,5154,4652,4604,4602,4638,4883,5070,5202,4642,4643] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [1076,1650,1628,1631,1634,1630,1629,1079,1408,1410,1412,1413,1604,1347,1116,1113,1115,1409,1411,1393,1082] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [2471,6696,7373,7343,7345,7346,2626,2623,2627,2620,1784,7372,7374,7371,2588,2589,2601,2602,2604,6727,6728,3982,3983,2463,2446,2461,2277,2282,2631,2465,2468,2469,2470,2274,6695,6704,6665,6667] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [3433,3435,3436,3437,2163,3420,3732,3733,2372,3703,2152,2352,2373,3723,3726,3691,3688,3689,3690,3728,3739,3700,3717,3696,3742,3651,3676,3678,3409,3376,3380,3483,3456,3454,3455,2153,3705,3695,3418,3673] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [3832,3834,4108,4130,4124,4125,4127,4129,4128,1105,1075,1650,1072,1654,4113,4117,4118,4120,1098,1099,1016,1018,998,1025,1022,4106,999,1116,1115,4477] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [2659,2660,2663,1748,2650,2655,2201,2202,2184,2185,1732,1730,2670,2430,2641,2640,2418,2652,2651,2319,2325,2393,2395,2392,2328,2329,2315] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [5801,5802,6414,5819,5799,5768,5771,5883,6358,6360,5901,5902,5903,5904,5905,5884,5772,6388,5408,5382,5384,5388] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [2568,3694,3702,882,866,2566,2316,2397,2315,2396,2342,2345,2349,879,881,883,3713,2571,2574,2575,2576,2581,4009,867,2580,890] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [3445,3446,3447,3239,3241,3242,3243,3272,2758,2759,2762,3218,3221,2768,3430,2731,2744,2760,2761,1690,2725,2726,3215] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [2103,2104,1727,1729,1879,1878,2144,2168,2137,1930,1931] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [2560,3988,3989,2468,2291,2294,2537,2463,2458,2461,2471,2548,2552,2553,2556] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [2594,4001,818,819,815,6756,6755,820,6791,6811,2593,6779,6780,6753,4006,853,788,789,816,817,3955,3959,829,4002,4003] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [4187,4189,4202,3933,3934,3931,767,3906,5087,5089,5091,5092,5095,5119,5120,4204,4206,4203,4231] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [3266,3138,3469,3448,3449,3451,3452,3372,3107] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [4942,4977,1151,1521,1524,1491,1519,5048,5030,4976,1150,5010,5024,5009] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [2176,3418,1901,1902,2177,3397,3421,3673,3695,2323,2159,3420] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [2468,2469,2470,2475,2478,2479,2482,7423,6663,6665,7394,6635,7373] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [3266,3139,3448,3449,3452,3242,3428,3431,3176] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        