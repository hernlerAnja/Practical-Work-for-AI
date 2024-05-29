
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
        
        load "data/3WLW.pdb", protein
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
 
        load "data/3WLW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [25,30,34,35,36,270,3546,3547,3533,3534,3549,3551,274,2013,20,22,33,40,205,208,209,211,3335,3337,2085,2165,3325,2097,2083,2096,3324,3326,3319,3532,3535,2064,2067,2079,2074,2071,3098,3094,3119,3120,3147,3327,2164] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7898,7899,1807,1816,7959,1817,1819,1836,1839,7679,7681,1825,7929,7960,7957,1739,1810,7505,7673,7675,7506,7971,7934,7897,2129,2132,2134,7932,7933,7671,7669,1752,2001,2002,2017,1750,1822,1976,2136,2137,2138,2143,2131] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [6357,7597,7810,7811,7812,7813,7602,7603,6373,6374,6375,6443,6442,4298,7827,7829,4303,4308,4300,4313,4311,4312,4314,4284,7826,7828,7830,7372,7376,6352,6361,6364,6342,6290,6291,7398,7421,7824,7605,7604,7825,4483,4487,4489] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [1056,1058,1057,1251,1249,1053,1054,1059,1063,1064,1348,1030,1031,1036,13649,13651,12583,12584,12585,13805,1349,13652,13653,13638,13803,13804,13806,13828,13796,13626,13639,1275,1281,1280,1276,1263,1272] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [5335,5336,5529,5314,5316,5582,5341,5342,9341,9342,9343,10564,10407,10409,10562,10563,10396,10586,5563,10411,10397,5626,5627,5622,5338,5550,5527,5528,5554,5558,5559] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [7198,7406,7408,7409,6930,7196,7417,4341,4365,4367,4420,4425,7437,7436,4452,7416,4340,7213,7476,7628,4390,4385,4389,4379,4373,4393,4417] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [1739,1741,1810,1727,1729,1731,1740,1138,1140,1730,7899,1807,1816,7959,1817,1819,7960,7694,7505,7519,7675,7506,7966,7971,7972,1155,1157,930,7517,8075,8076,7703,7503,7504,7705] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [3130,3131,3139,111,3197,3198,2919,2920,3181,3350,147,101,142,112,115,139,94,95,100,107,60,62,63,84,3158,3159,174] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [6697,7162,6888,6889,6670,6886,6654,6695,6702,6672,7161,6506,6455,6456,6485,6460,6467,6445,6449,6451,6454,7389,7391,6439,6450] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [2176,2161,2167,2171,2172,2173,2228,2608,2610,2177,2226,2419,3101,2883,2884,3113,2427,2182,2189,2371,2376,2392,2393,2394,2353,2207,2213,2216,2221,2358,2611,3111] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [5667,9012,9013,10890,10891,5584,5587,5595,5674,5668,5588,8999,8995,9001,9002,5569,8806,5567,8998,5671] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [7177,7178,6687,6728,7395,7401,7410,7416,6689,7390,7198,7407,7409,6755,6930,6931,7196,6753,6756,4367,6912,6684,6748,6680,6686,6682] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [1302,1306,1310,1389,1295,12237,12240,12238,1289,1291,12048,12049,1317,14132,14133,14107,12254,12255,1388,1390,1393] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [2899,2900,3129,3132,3130,3131,3138,2918,3117,3112,2620,2621,2403,2404,2618,2619,2624,2630,2634,2477,2653,2652,2450,2402,2408,2409,2470,2411] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [446,447,1718,1714,444,1757,1758,1794,1780,1760,2021,2022,2027,2028,1702,1708,257,16,258,436,437,438] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [9336,10552,10553,10554,10555,9352,10550,10551,9333,5553,5554,9341,9342,9343,10584,9380,9368,10599,10602,10603,8792,9364,9371,9355] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [12585,13844,13845,13796,13795,13797,13841,12578,1275,12034,12575,12562,12613,12593,12610,12611,1276,12035] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [14308,14329,14997,12813,15005,15021,12770,14321,12785,12786,14307,14309,14999,15001,14316,14317,14318,14355,14400,14386,14822,15015,14824] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1835,1839,1820,1821,7247,7680,7483,7484,7490,7489,7243,7244,7245,1861,7670,1832,1829,1952,7480] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [12113,12114,12504,12506,12697,12946,13147,13148,13149,12685,12929,12931,12933,12936,12939,12671,13104] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [6037,6038,5992,5981,5980,4714,4716,4722,4723,4724,5986,6058,5966,4712] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [43,44,279,3141,3143,39,40,41,42,52,36,269,667,668,276,286,55] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [14418,13170,13182,14299,14301,13076,13169,14411,14762,14406] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        