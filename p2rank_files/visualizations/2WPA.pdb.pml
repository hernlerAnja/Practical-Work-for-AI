
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
        
        load "data/2WPA.pdb", protein
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
 
        load "data/2WPA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [171,151,152,119,272,674,169,170,113,117,287,288,289,1188,1190,665,666,664,285,532,1182,1183,1110,1111,1187,1094,1082,1084,691,694,702,1087,725,711,718] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [5155,5156,5674,5673,5573,5601,5602,4604,5216,5158,5160,5185,5200,5202,5192,5193,5201,4763,4608,4605,4606,4661,4662,4778,5681,4610,4642,4643,5157,5159,5161,4779,4780,5678] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [5045,5046,5049,3018,3027,3028,4707,4743,3469,4555,4556,4557,5054,5055,5057,5149,3462,3461,3437,4521,4546,4543,4517] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [554,555,563,558,658,7484,7485,7475,252,253,28,29,7919,55,216,566,27,66,65,52,7926,7894] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [2497,1238,1240,1242,1244,3594,1239,1487,1493,1261,1461,1472,1482,1485,2464,2440,2429,2437,2441,2442,2218,2450,1486,2208,2443,1258,1262,1264,3624,3625,3585,1492] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [3546,2881,2885,2886,2888,2889,3550,3731,4405,4392,3730,3575,3579,3580,3583,3584,3585,3614,3616,3703,2887,3698,3699,3729,3705,3706,3700,4389,3710,3677,3675,3678,3679,4401,4403,2879,1262,1279,2893,1255,1263,1256,2876] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [8328,8334,8333,8311,7999,8355,7982,7987,7990,7993,8238,8232,8234,8236,7373,7398,7374,7376,8242,8281,8282,7992,7065,7066,7435,8292,8293,8294,8297,8291,7056,7049,7048,7407,7401,7404,7400] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [8051,6920,6921,6924,6925,6926,8050,6927,5973,5976,5978,5984,5982,5983,6743,6744,6745,6740,5468,5469,5471,5733,5735,5736,6954,5729,5749,5963] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [2978,2916,2941,3785,2608,2609,3837,3840,3876,3530,3536,3542,3877,3854,3825,3835,3775,3777,3779,3898,2947,2950,2943,2944,3525,3535] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [5754,8042,8040,5746,8005,8007,8041,7336,7338,7342,8862,8006,8187,8188,8860,8037,8003,8071,8073,8032,8160,5770,7346] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [146,428,1188,1189,1190,147,149,151,1054,1070,1071,1094,1086,1087,395,1203,1204,1206,1211,1213,1212] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [602,3427,321,351,354,356,3388,3389,3390,3391,3392,3425,3399,3361,376,324,366,367,591,322] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2203,1896,1894,1895,1852,1867,1486,2209,2210,1861,1866,1868,2219,1460,1481,1485,1443,1446,1448,1409,1412] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [6710,6694,6343,6346,6352,6357,6358,6359,6709,5976,6701,5900,5901,5903,5934,6386,6387,6385,5939,5948,5951,5937,5938] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [3425,3426,3428,3461,3396,3397,3437,4521,4546,3399,4514,3429,3430,604,607,3401,3427,585,3460] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [7884,5081,5091,5093,5082,4815,7855,7858,4831,21,7882,7883,7853,7851,55,4867,4858,4826,7878,7845,7844] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [5170,4996,4998,4999,5659,5660,5643,5615,5618,5032,5174,5631,5198,5633,5166] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [1142,1127,1140,1124,1152,507,1169,675,679,696,540,683] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [7949,7951,7911,7912,7915,7916,7885,5061,5073,5077,7887,5080] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [5545,5561,5562,5703,5702,5681,4640,4642,5679,5680,5585] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [4574,4575,4789,5113,5115,4527,4528,5134,4525,4526] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [4083,3634,4080,3632,3633,3635,2435,4076,4079,4045,2478,2479,2480,2473,2477,2470,2467,2434] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [2849,3272,3274,3270,3301,3300,2851] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [1007,3559,3180,1246,1234,1250] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        