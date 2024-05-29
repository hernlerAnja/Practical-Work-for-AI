
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
        
        load "data/6O8U.pdb", protein
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
 
        load "data/6O8U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4760,4757,4745,4747,4749,4750,4756,4899,4900,4761,5675,5693,5692,5703,5704,5711,4773,4901,5812,5811,5674,5676,5365,4737,4738,4743,4744,5404,4736,4739,5412,4897,4790,4792,4791,4885,5312,5320,5326,5332,5333,4740,4741,4742,5374,4696,4693,4695,4697,4813,5307,5286,5287,5288,5283,5285,5284,5728,5803,5804,5173,5727,5340,5282,4774,4949,4951,4966,4950,5834,5937,5938,5940,5946,5947,5935,5934] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [2499,2500,2501,2502,2506,2507,2508,2504,2505,3027,3020,3022,3077,3079,3080,3056,3048,3041,3047,3035,3049,3051,3055,3451,3450,3535,3536,2881,2882,2457,3127,2510,2512,2513,3427,2520,3426,3434,2519,2521,2522,2553,2555,2655,2554,2641,3001,3003,2883,3002,2997,2998,2999,3000,2657,3543,3537,3089] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [222,224,221,1145,1170,1246,1245,216,218,219,754,1169,735,751,755,756,747,749,286,287,288,374,388,389,1253,727,729,730,725,726,225,226,233,235,1153,1254,390,775,778,783,807,776,782,777,768,774,762,214,215,176,220] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [7572,7574,7576,7220,7118,7119,7120,7622,7624,7628,7629,7653,7621,7066,7072,7073,7064,7067,7362,7573,7575,7461,7462,8091,8092,8093,8015,8016,7570,7571,7581,7070,7206,7069,7597,7600,7601,7602,7608,7620,7077,7084,7085,7078,7075,7221,7991,7999,8098,8100,7222] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [7964,7999,8100,7980,7981,7991,7992,7099,7100,7101,7102,7222,7077,7084,7085,7088,7089,7078,8205,7262,8209,8210,8216,8204,8207,8208] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [1774,1763,1764,1773,2049,2050,1748,1736,1747,2076,2078,2072,1739,8290,8292,8925,8927,8262,8263,8266,8904,8911,8919,2080,8910,8307,8924,1770,1771,1772,8915] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [6341,6317,5997,3696,3727,4349,3703,4337,4338,4344,4345,4339,6642,6342,6343,3729,6309,6107,6108,6627,6307,6333,6623,6624] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [4017,6003,6043,3993,6000,6641,6644,4340,4342,4006,4009,3808,3807,4320,4321,5999,5996,3697,6029,6007,6652,4041,4042,4044,4033] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [2596,2598,2604,2245,2246,2247,2293,2295,2907,2908,2635,2620,2621,2622,2310,2312,2607,2294] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [830,4179,4180,4178,1630,1638,1908,1909,3104,3896,3101,3103,1890,1892,1896,1907,1623,1885] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [1134,1153,1154,1118,1254,233,235,237,239,1135,1146,263,267,390,1251,1275,1266,241,243,1145,1252,1253] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [1419,1460,8556,8572,8580,8607,8907,8908,8909,8886,8596,2070,1430,2083,2087,2092,1426,2093] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [257,263,267,390,403,470,1251,1275,465,466,1266,1267,1254,464,1253,711,507,1252] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [2524,2533,3560,3565,3566,2657,3544,3539,3540,3541,3556,2527,2741,2674,2778,3557,3399] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [2030,8917,8918,2064,2055,2059,2061,2062,2063,1765,2028] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [3945,3948,1637,1872,3944,3929,3930,3931,1630,1638,1645,1691,1665,1692] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [6340,6341,3743,6317,6316,6318,3727,3703,4357,3707,4349,4354,4355,4356,4338,6275,6315] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [4549,4838,4840,4848,4527,4528,4529,4864,4865,4866,4879,4836,5276,5195,5196,5198,5199] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [3889,3903,3904,4180,1664,3956,3957,4144,1682,1665,3944,3931,3896,3911] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [5158,5533,5159,5771,5774,5775,5776,5777,5532,5503,5504,5505,5507,5508,5509,5762] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        