
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
        
        load "data/7MFE.pdb", protein
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
 
        load "data/7MFE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5418,3240,3241,3245,3249,5394,5395,5396,3244,5393,5386,5417,5972,5973,6009,6001,6002,6008,6042,6041,6028,6029,6031,3235,5448,5449,5447,3228,3229,3230,3231,3227,3220,6077,3251,6704,6706,6341,6342,6349,6351,6335,6336,6339,6340,6344,6345,6705,6735,5355,3252] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [561,304,547,2880,2898,559,2881,2902,2903,2814,2815,2838,2847,2850,2831,2851,6808,6809,6810,6726,6750,6751,6752,6759,6787,6784,6785,6786,6783,552,553,6727,274,266,6777,255,66,2816,2817,303,281,801,800,2897,2904,2905,2908,2879,2899,2863,2849,560,2909,2910,807,808,554,562,786,2812] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [791,792,793,3233,3199,3195,3205,3213,3215,778,788,790,3180,3179,3174,5448,5449,5450,5451,3226,3220,3222,6075,6077,585,587,795,5482,5509,5510,5479,3167,5539,5446,5453,5455,5476,5478,5475,5477,5499,5501,5502,3170,3168,5458,591,5456] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [2138,1401,1404,2155,2156,2157,1380,1400,1585,1498,1500,1502,1584,1236,1237,1597,1598,1408,1496,1501,1373,2144,2145,1428,1430,1474,1479,1492,2142,2135,1344,1353,1354,1349,1383,1385,1384,1520,1583,1519,1358,1326,1572,1522,1523,1524,1525,1351] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [4573,4176,4178,4207,4567,4571,4174,4572,4206,941,937,4594,4967,3630,3632,3633,4213,4209,4212,4245,4247,936,952,3665,3667,4236,4281,4233,4234,959,3611,3574,3575,3601,3602,958,4938,3609,3634,4563,4564,4565] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [2130,2023,2026,2131,2134,1089,1621,2046,2047,2048,1990,1110,1109,1102,1105,2005,2018,1619,1620,1138,1137,1139,1098,1088,1090,1119,1235,1125,1117,1221,1156,1233,1236,1237,1599,1225,2016,2022,1648,1652,2017,1641] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [591,5222,5198,5199,5201,5220,5456,5213,603,604,605,606,607,3417,3416,5482,5510,5516,5479,5480,5481,5488,3170,635,636,3446,3447,3412,3429,3448,3419,3423,3424,778,3697,3698,3707,5196,5209,5210] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [945,936,741,743,952,3664,740,742,3666,744,745,3725,722,730,735,736,725,739,751,726,939,942,928,724,925,930,752,754,3718,914,904,906,3753,3754,3755,921,922,923,927,618,640,629,950,951] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [3147,3148,3170,3171,3172,3135,3144,3168,642,643,3114,3116,3118,3136,3139,3134,3143,3413,3417,621,637,641,605,606,607,3140,3410,3389,3398,3409,630,3439,633,3437,778,3180] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [851,862,853,872,864,868,870,697,698,716,717,722,733,714,672] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [1798,1799,1802,1804,1827,2581,1740,1745,1753,1757,1758,1748,2577,1793,1794,1760,1762,2080,1791,1792,1821,2054,2055,1688,1689,1690,1692,1700,1701,1660,1829,2077,2082] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [6378,6355,6358,6377,6380,6382,6383,6387,6359,6384,6411,6547,6551,6243,6245,6268,6269,6360,6275,6276,6570,6572,6577,6408] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [680,3092,3029,3030,3062,3060,2944,3093,2921,2942,2943,681,812,833,2912,3126,2886,3061,3088,3089,657,671,706,661,660] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [810,3123,3125,2886,2870,2871,2873,778,790,799,3178,3177,3179,3148,3146,3118] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [648,948,4958,954,4937,966,3084,3106,3107,3108,3109,3080,3110,3087,3054,651,4959,642,968,1894,4928,4929,4930,3082,1875,3052] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [3176,3179,3194,6817,2878,797,800,802,3208,3209,3212,2879,6758,6787,6782,6784,6785,6783] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [1894,4915,4919,4925,4929,4951,3052,3055,3056,3057,3039,4980,4983,4948,4949,4950,1920,1919,1927,1929,1930,4916,4959] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [967,968,969,3140,3392,3394,949,3612,628,629,3640,3641,630,3439,642,3139,644,637,638,641,3620,956] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [690,692,844,3290,3291,879,880,878,691,842] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [1974,1975,2185,1984,2007,1109,2448,2447,2449,2340,2341,2289,2292,2369,2183,2275,1994,2325,2335,2336,2339,1991] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [4649,4302,4305,913,914,904,905,911,3754,3755,926,930,932,920,4690,4691,4692,4689,4701] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [4880,4916,4881,4855,4974,4975,4858,1929,1930,4943,4945,4946,4949,4950,4915,4919] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [580,822,823,691,842,840,844,3288,3290,552,556,557] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [6525,6526,6413,6245,6246,6220,6244,6414,6447,6448,6449,6186,6221] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [1562,1564,1536,1320,1291,1324,1286,1272,1563,1315,1282,1285,1288,1278,1279,1326,1570,1572,1349,1318,1571] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        