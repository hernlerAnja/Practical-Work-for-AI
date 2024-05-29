
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
        
        load "data/6Q2O.pdb", protein
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
 
        load "data/6Q2O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10890,11208,11209,11210,11168,11167,11169,10891,11018,11107,11140,11020,11009,11010,11011,11200,11003,11183,10638,11179,11180,11182,11304,11454] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [4168,4486,4297,4167,4280,4295,4384,4286,4581,4459,3915,4445,4456,4457,4417,4446] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [10570,11655,11672,10572,11622,10604,10603,11817,10606,11775,11777,11778,11782,11779,11791,11802,11623,11610,11636,11656,11657,12306,11612,10596,10723,10745,10621,10716,10720,10707,10592,10593,10594,10719,10747,11783,11786,10563,11761,12291] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [3849,4913,4932,4933,4934,4899,4900,3877,3866,3871,3873,3875,3881,3880,3898,3993,4891,5052,5054,5055,5059,4889,5068,5094,5047,5056,4000,4001,4022,5063,3997,3984,3847,3840,5038] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [8882,8883,8886,8888,9911,10925,10921,10923,11289,11287,11263,10611,11295,11296,10612,9917,9923,9924,9909,9910,9887,9983,8868,8872,8879,10907,11311,11313,11315,11443,11444,11445,11294,10915,10916,10917,10927,10914,10909,10913,8859,11425] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [4184,4590,4720,4722,4721,4572,4571,4573,3194,3888,4915,3889,4200,4192,4193,4198,4191,4190,4564,4186,3187,3188,4566,2145,2149,2156,2159,2160,2163,2165,2136,4702,4701] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [4220,1934,4524,4527,4221,1944,1919,1930,1932,1936,1942,4207,1893,2181,4195,4196,4199,4544,4543,2185,1947,1958,2098,2118,2120,2122,2109,2115,2124,2080,2083,2084,2113,2111,2082,4208,2130,1859,2169,2177,2180] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [8681,8904,11267,8659,8660,8665,11266,11247,8667,8670,10918,10919,10943,8653,8655,8657,11250,10930,10944,8582,8616,8832,8838,8841,8821,8843,8845,8805,8806,8807,8831,8834,8836,8900,8903,8908,8895] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [697,8104,2439,2438,698,674,693,8103,8105,2442,8098,2441,667,668,715,696,714,716,8089,2419,2447,2448,2450,2418,2444,8064,8050,8052,8095,689,8083] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [10587,10608,10611,10571,10572,10586,8886,8888,9911,8889,10361,10362,9910,9917,11639,11643,8875,10324,10358,10359,10331,10360,10582,10326,10329,10581,11663,11683,11424,11425,11444,11445] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [14811,14812,14826,14827,1504,1483,1486,1487,1488,1506,9161,9165,1479,14806,14828,9141,9173,9170,9167] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [11816,11839,10647,10649,11515,10629,10627,10650,11817,11587,11586,11555,11554,10631,10626,10675,10620,10622,11831,11830] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2186,3165,3173,3164,3186,3188,3260,4550,4566,4538,4540,4542,4544,4551,4191,4190,4548,2182,4200,4201,4202,2217,2220,2221,2198,2185,1957] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [4863,3899,3903,3904,5107,5116,5093,5109,3906,3908,4792,3924,3926,3927,3952,4831,4832] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [9381,9424,10050,10073,9434,10049,8707,9435,9436,10026,10048,9396,9397,10071,10072,10075,9365,9351,8703,8704,8706,9839] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [2673,2674,2711,2713,3303,3325,3326,1980,1981,2229,1979,2628,3349,2631,2701,2639,2658,3348,3350,3351,3352,3327,1983,1984,2642,1978] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [4891,5054,5055,4889,4933,4900,5568,5583] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [8874,10338,8872,8873,8875,10334,10335,10358,10359,10331,10360,10580,10582,10329,11683,10587,10361,10362,11381,11385,10579,11424,11425,10336,10337] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [9588,9593,9592,9548,9456,9102,9103,9002,9551,9550,1469,1419,1471,9590] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [2613,2599,2600,3385,3083,3084,2024,2643,3116] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [665,638,664,651,653,7770,7772,142,7766,7769,691,692,8097,159,155] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [2380,2865,2867,2825,2379,2869,2870,2827,629,681,2414,679,2730,2733,2279] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [9256,9293,9663,9756,10114,10115,9660,10243,10245,9695,9696,9697,10242,9681,9734,9638,10101,10112,10113,10110] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [8717,8744,8747,9839,9807,8711,8712,8713,9366,9323,9324,9806,9336,9321,9322] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        