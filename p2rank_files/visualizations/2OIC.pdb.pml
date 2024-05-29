
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
        
        load "data/2OIC.pdb", protein
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
 
        load "data/2OIC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3357,7497,7498,3364,3365,3366,2909,2806,2807,7540,7519,7520,7539,8591,833,7503,7515,7516,8588,8589,2917,3367,8581,8582,8583,2555,2559,831,8576,2908,2910,2783,3389,3403,3404,2914,2787,2751,2752,2790,7834,7542,7552,7826,2759,7838,2755,7836,7550,7508,7514,7549,7499,2743,2744] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [4721,4676,4685,4686,4687,4689,5576,5675,5668,5669,5670,5671,5674,5676,5677,4667,4673,4674,5174,5592,5169,5171,4671,4720,4807,5158,5147,5148,5149,5033,4668,4670,5150,4821,4823,5152,5153,4929,5151,5201,5205,5206,5593,5568,5229,5177,5185,5197,5198] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [2948,2950,2954,2955,2978,2449,2487,2488,2455,2588,2448,2450,2454,3417,3418,2898,2900,2901,2902,3419,3420,2590,3341,3342,2899,3317,2589,2467,2468,2469,2470,3325,3423,3424,3426,3425,2923,2926,2907,2453,2574,2947,2934,2920,2452,2782,2896,2897] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7433,7405,7409,7772,7797,6888,6889,7376,7375,7381,7402,6894,6943,6895,6898,6901,6911,7878,7780,7873,7872,7874,7029,7378,7362,7796,7235,6892,6890,6893,6942,7351,7875,7044,7355,7881,7237,6912] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [5371,5364,5395,6629,5339,351,6341,342,6628,6624,6625,6627,35,36,37,38,39,5337,6325,366,6342,340,364,365,341,5373,5334,5323,5365,6361,6360,6618,6340,6353,6355,594,607,606,56,55,30,34,11,609,379,610,5340] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [583,1144,1145,1220,1128,1221,1226,297,298,246,245,251,252,254,249,723,724,203,248,710,726,257,264,1229,256,385,699,702,704,585,1222,1223,1227,1228,401,299,399,482,757,749,750,753,758,781,729,737,1120] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [5632,5634,5299,5304,5310,5311,5312,5315,1168,1170,6321,6314,6320,6328,6326,6327,6329,5336,5335,5346,5316,5338,1166,3028,5293,5294,1169,712,717,370,561,562,1206,1207,5348,593,590,713,547,574,1160,1158,1175,1192] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2909,2806,2807,7540,7541,7536,7539,8591,2234,2260,2238,2239,2240,2242,8604,8603,8623,7527,7535,8587,8588,2568,2555,2553,2554,2531,2540,2910,2804,2803,7538,7574,8891,7599,8887,8888,8886,8889,8890,8880,2215,7543] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [2522,218,2521,2523,2524,202,199,738,737,320,334,139,141,220,230,231,232,186,224,722,724,318,319,123,134,138,140,2935,333,335,2403,2422,2424,2428,2435,2342,2343,2344,2345,2372,372,2934,2921,2406,2436,2507,2508,2509,2405,2919] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [867,845,3123,3371,851,7485,863,846,1182,1184,1185,1186,3362,847,898,899,897,844,856,862,1173,747,748,1165,1174,3379,3381,3383,3059,2944,2945,3048,3042,3043,3096,3095,3087,3089,3065,3094,1902] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [1592,1606,1607,8288,8523,8524,8525,8273,8287,1844,1856,8339,8340,8341,1634,1648,1658,8315,8528,8530,1659,1660,1668,8329,8330,1847,1849,1851,1614,1613,1632,1633,8489,8517,1651,8314,8294,8313,1808,1836,8332,8295,1875,1876] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [3122,2757,2758,2759,7400,7399,3390,7499,3119,3118,3141,3144,2767,3147,3167,2766,3389,3371,7498,7818,7822,7390,7389] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [1868,1886,1592,1607,8565,8566,8567,8288,8273,1884,805,806,8554,1599,8280,7455,7458,1875,7457] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [4069,4028,3798,3799,3791,3851,3852,3860,3850,3872,6066,6052,3826,4000,6070,6053,4041,4043] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [6025,6026,6255,6266,6078,6079,6080,3825,3826,3840,3841,3843,6087,6268,6227,6270,6099] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5457,5499,5502,5683,5684,5508,5681,4953] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [7819,7820,7821,7822,3187,4319,4344,3224,3225] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [4801,4762,4786,4788,5057,5058,4787,4761,4763,4764,4478,4773,4770,4460,4458,4412] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [6018,6026,3799,3791,2994,3000,3002,3003,4076,4077,4078,5253,5245,6304,6305,6303,5251] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [875,1906,1923,1942,877,1922,1941,1910,2199,2205,2207,2209,916,917,887,890] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [8441,8444,8662,8503,8636,8634,8637,8501,8660,8491,8494,8496,8639] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        