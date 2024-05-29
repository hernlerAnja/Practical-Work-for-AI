
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
        
        load "data/1MOX.pdb", protein
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
 
        load "data/1MOX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [72,74,75,76,77,7972,3133,7968,236,3134,3137,3138,3140,8036,3139,3141,7961,7963,7962,84,85,7964,7965,125,200,8018,8019,226,8021,3118,3136,3114,2211,2212,5757,2411,2404,2208,2396,2599,2608,2627,2894,3131,2598,2626,2467,7997,8007,2461,2463,2624,8005,2402,2440,2399,2457,2879,3113,2410,2412,2595,2594,2219,64,71,235,234,222,224,197,198] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [6278,6295,6305,8373,8363,6976,6978,6979,6980,8371,8329,8384,3877,6972,6974,6975,3876,8400,4056,3889,3892,3897,3895,3896,3904,3905,8330,8331,8327,4055,3884,3886,3891,3945,4019,4020,8328,6242,6732,6733,6969,6462,6464,6956,6953,6971,8396,6952,6950,6446,6240,6241,6234] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [5994,5995,5859,6004,6009,5992,5993,5997,6002,1887,5690,5693,5694,5696,5836,5858,2039,2173,2174,1876,1884,5707,5720,5723,5724,5789,2172,2175,2177,5999,5679,5673,5674,5676,5675,1903,1904,1899,5603,5605,1853,1854,1855,1859,1874,1870,1873] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [3837,3838,3840,3848,5613,5614,3849,5568,3847,3839,4306,4104,4105,4305,4318,4116,5556,5557,3864,4120,5573,5574,5563,5569,5651,5589,5572,4492,4493,4494,4508,5641,5636,5637,5537,5551,5886,5610,5611,5612,5875,5878,5879,1923,1933,5628,5639] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [2059,2066,1792,1793,1749,45,285,27,498,672,673,674,284,485,486,1769,1752,687,2058,1753,2052,2055,5771,5745,5743,5744,686,688,5748,5752,44,299,300] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [2180,5786,5787,2202,2179,2161,2162,2167,2169,5782,5785,2222,2226,2227,2245,2325,2320,2221,2223,2218,2321,5710,5711,5804,5709] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [550,7696,7698,7671,117,146,147,148,352,7830,806,7685,819,546,547,372,371,565] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [1890,1966,6000,1967,5982,1961,5983,5998,5980,5990,6147,6148,6047,6065,6041,6046,1891] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3242,2987,2989,2996,2997,3012,3014,3235,3271,3806,3778,3779,3780,3781,3039,3771,3772] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [2362,2374,2582,2583,2863,2864,2576,2224,2216,2219,2220,2597,2266,2247,2250,2258,2262,2263,2865,2243] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5359,5363,5366,5473,5304,4982,4978,5303,5581,5583,5374,4785,4769,4779,4781,4768] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [4364,4365,4366,4385,4626,4636,8058,4191,3966,3967,3968,4192,4367,3937,8069,8071,4637,4638] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [8013,7944,7953,7954,7955,7801,7803,7804,3198,3368,3199,3366,2923,3197,3204,3205] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [2449,2719,2717,2720,2718,2455,2458,2459,2460,2696,2464,2465,2466,2509,2486,2489,2499,2501,2500,2736,2659,2656,2657,2658] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [1791,1792,1793,1744,1749,1808,28,29,1816,1817,1731,1737,1743,485,1753,1754,1831] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [324,71,233,234,169,202,205,197,198,325,329,175,343,174,85,125,82,200,207] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [6078,6081,6082,6086,6703,6212,6192,6420,6421,6039,6040,6211,6435,6042,6044,6049,6063,6067,6070,6043] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [6293,6298,6302,6287,6304,6574,6555,6556,6557,6303,6558,6297,6296,6347,6327,6339,6337,6338] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1535,1611,1615,1614,1593,5348,1598,1599,1600,1624,1536,1541,1620,1690,1691,5345,1524,5344] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3905,4145,4149,4144,3945,4019,3994,3995,4021,4022,4025,4027,4163] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [6783,6791,6815,6816,6817,6848,6609,6635,6854] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        