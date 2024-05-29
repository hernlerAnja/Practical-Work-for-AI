
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
        
        load "data/6Q0T.pdb", protein
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
 
        load "data/6Q0T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [691,694,302,692,696,253,251,252,254,255,258,592,640,642,643,645,648,636,292,298,273,646,649,682,627,618,619,620,621,623,624,602,614,599,601,700,703,706,720,436,413,415,431,416,652,666,509,512,510,513,530,533,534,546,547,531,532,548,549,552,564,567,535,937,952,938,617,917,918,591,598,489,490,493,508,511,951,967,969,972,491,496,471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1920,1922,1923,1921,2328,1938,1957,2007,1939,1941,1942,2308,1992,1982,1988,1981,2080,2082,2081,2096,1643,2110,2026,2030,2031,2032,2084,2085,2086,2087,2092,2093,2090,1673,1659,1663,1688,1657,1952,1937,1950,1953,1954,1642,1656,1641,1644,1645,1658,1899,1900,1902,1903,1901,2038,2039,2042,2035,2036,2069,2072,2008,2010,2011,2013,2014,2017,2342,2339,2325,2340,2000,2001,2003,2004,2357,2358,2359,2362,2341,1821,1803,1805,1806,1822,1826,1692,1648,2056,1879,1881,1880,1882,1850,1861,1883,1851] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4264,3373,4243,4244,4260,4261,3540,3339,3347,4279,4263,3392,3804,3807,3372,3374,3375,3377,3378,3350,3353,3565,3553,3554,3555,3389,3391,3407,3408,3394,4242,4245,3358,4259,3526,3304,3300,3301,3524,3525,3822,3303,3320,3321,3290,3534,3536,3537,3559,3288,3539,3319,3785,3788,3787,3802,3575,3569,3409,3412,3519,3522,3502,3505,3507,3508,3520,3501] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1169,1166,1289,1253,1255,1256,1271,1273,1274,1167,1168,1183,1184,1248,1249,1252,1287,1288,1290,1291,1293,1294,1307,1309,1310,1204,923,1201,977,1146,1143,1150,1154,1329,516,513,515,533,534,535,538,1259,531,532,552,937,952,953,938,920,497,501,498,500,954,956,972,957,480,496,479,481,971,974] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2699,2556,2559,2574,2697,2698,2683,2681,1903,1906,1890,1884,1885,1888,2662,2663,2679,2684,2572,2573,2589,2310,2661,2313,2638,2639,2664,1923,1905,1924,1925,1927,1928,2328,1940,1942,2309,1943,1944,2557,2558,2346,2363,2364,2367,2344,2347,2575,2579,2360,2362,2327,2343,2312,2590,2594,2591,2718,2719,1870,1891,1887,2540,2544,1886] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4139,4165,4069,4083,4086,4087,4090,4140,4068,4071,4072,4075,4143,4144,4146,4147,4162,3413,3396,3394,3395,3397,3807,3377,3378,3806,3808,3827,3414,3417,4190,4180,4053,4054,4067,4070,4052,4055,4164,4188,4189,4191,3362,3379,3380,3360,3363,4195,3788,3787,3790,3410,3412,3767,3770,3772,3773] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3039,3207,3256,3260,3266,3591,3584,3601,3602,3605,3606,3126,3129,3206,3128,3144,3244,3245,3246,3249,3250,3252,3617,3619,3620,3633,3635,3636,3048,3038,3049,3637,3640,3110,3212,3107,3108,3109,3583,3198,3059] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3034,3023,3024,3203,3261,3207,2990,2986,2980,3005,2860,3206,3208,3202,2881,2883,2893,2877,2878,2880,2894,3251,2899,2875,2868,2874,3209,3014,2884] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3476,3466,3138,3156,3157,3159,3592,3446,3574,3188,3426,3441,3442,3443,3169,3160,3424,3575,3184,3139,3598,3601,3137,3144,3591] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1434,1534,1752,1430,1433,1718,1722,1741,1737,1524,1496,1440,1499,1738,1544,1742,1444,1505,1410,1755,1756,1758,1711,1712,1713,1762,1715,1533] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3411,3425,3427,3428,3431,3409,3412,3575,3526,3785,3788,3426,3520,3580,3498,3501,3519,3522,3502,3486,3592,3446] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [50,51,54,144,366,143,154,347,348,352,332,328,360,361,362,365,103,106,108,109,43,115,134,44,368,372,20] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [5547,5548,5638,5900,6020,5920,6004,5620,5622,5623,5598,5984,6002,6005,5914,5917,5935,5915,5569,5954,5936,5937,5940,5939,5637] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4484,4863,4777,4778,4781,4775,4801,4866,4800,4881,4761,4774,4499,4430,4481,4455,4459] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [6495,6494,6497,6512,6496,6513,6514,6517,6269,6272,6387,6252,6268,6386,6407,6385,6389,6388,6498] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        