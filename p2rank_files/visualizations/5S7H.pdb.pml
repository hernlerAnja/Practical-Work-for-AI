
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
        
        load "data/5S7H.pdb", protein
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
 
        load "data/5S7H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1225,1228,1116,1128,721,1117,1118,722,757,1089,1320,1105,1106,1251,1255,510,1217,513,1220,1221,1222,511,653,1147,1149,714,717,689,1211,509,1235,1234,377,652,686,135,137,139,140,134,306,308,332,1299,307,159,160,161,108,109,111,113,110,638,260,262,264,256,634,248,680,682,1307,1313,1315,1316] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [2612,2616,2618,3010,3028,3518,3517,2490,2511,2604,3479,3489,3490,3492,3087,3088,3083,3116,2457,2460,2462,2509,2510,3046,3048,2458,3050,2459,3462,3595,3596,3590,3591,3501,3594,3597,2620,3589,2746,2747,3014,2872,3029,3775,3774,3052,3055,3080,3065,3033,2481,2484,2485,2486,2487,2660,2488,2489,4289,3752,3753,3754,3755,3761,2675,2701,2677,3776,3785,3768,3769,3770,3781,3784] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [481,4319,4320,4321,4322,4323,878,881,470,472,473,488,479,480,1194,1193,1195,934,954,2298,2326,952,955,936,904,874,906,961,963,1005,1007,455,953,989,4318,4351,4355,4311,4345,4346,4347,4348,3853,4386,4385,3867,3868,3866,4313,3847,2352] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3452,3735,3750,3763,3867,3838,3840,3842,3865,3866,3843,3759,3813,3815,3765,3766,3769,4312,3762,3883,3894,3893,3954,3956,3882,3719,3720,3451,3448,3983,3447,3799,3809] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3479,3491,3492,3493,3494,3791,3792,3103,3485,4087,4213,3793,4214,3105,3107,3804,3775,3774,4294,4283,4284,4289,4296,4297,2487,2489,3776,3785] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1104,1105,1106,1358,1119,1112,1636,737,1120,739,741,1118,1121,1321,1344,1345,1839,1840,1841,1356,1779,1343,1770,1771,1772,1833,1854] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1395,1492,1494,1296,1305,1309,1448,1496,1361,1532,1365,1311,1312,1315,1392,1394,1434,1075,1078,1079,1074,1083,1088] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [976,977,1510,1512,1514,2285,2297,1502,1506,1478,1477,2291,2296,2280,2283,2284,2286,979,2290,1547,990,1521,1523,1516,1479,2274] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3966,3341,3343,4704,4708,4709,3339,3340,3352,4681,4692,4698,4701,4702,4703,3998,4713,4716,3354,3972,3974,3975,3935,3936,3937,3964,3965,3962] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [466,515,666,670,694,695,1164,1165,1166,1162,692,1167,664,677,496,476,474] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3532,3534,2844,2846,2873,2874,3034,3035,3036,3038,2860,3061,3060,2836] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [242,202,203,204,205,206,207,208,209,66,645,541,535,536] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3022,2415,3003,2412,2411,2430,2428,2429,2911,2912,2914,2998,3000,3004,3005] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1186,1183,1184,891,824,855,857,889,1156,768,769,808,712,1170] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4744,2842,3300,2840,2848,3318,3320,3325] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        