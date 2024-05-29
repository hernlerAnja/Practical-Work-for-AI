
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
        
        load "data/4EOJ.pdb", protein
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
 
        load "data/4EOJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4701,4653,4655,4656,4700,4702,5212,5229,4648,4803,5224,5642,5643,5232,4645,5258,4644,4650,5204,4818,4819,4820,5206,5207,5202,5071,5203,5205,5070,5621,5614,5714,5715,5719,5720,5721,5626] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [631,648,252,93,651,99,102,1140,1039,1139,677,1067,1068,105,489,490,151,149,150,621,623,118,268,269,112,115,624,94,95,97,96,645,1144,1145,1146,1147,1051] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [3573,3754,3755,3574,3609,3638,3727,2903,1233,1234,1217,1232,1224,3607,3608,1219,3606,3635,3724,4439,3728,2918,2919,2921,3576,3580,3581,3583,2917,3214,1236,3582,1195,1194,1204,1203,1254,1256,1191,3204,3213,1190,2912,2905,2909,2910,2913,3734,4413,4425,4427,4418] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [1,2,523,7885,7432,46,7433,232,246,615,7853,196,520,511,512,514,522,521,7873,7880,7882] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [2444,2450,2448,2449,2224,2206,1436,1437,2207,2208,2216,1221,1227,1438,1212,1215,1218,2479,2255,1475,1477,1502,2249,2254,2238,1478,1481,1381,2258,2466,1201,1226,1468,1466,1476,1447,1448,1458,1213,2473,2461,2463,2471,2515,1206] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [497,635,632,637,640,1126,464,1125,499,465,7065,7067,475,1109,864,2383,1084,1096,7438,7439,7087,7088,237,1097,7086,233,230,7069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3002,2967,2968,2971,2974,2940,3566,3801,2944,3809,3554,3560,3549,3895,3900,3901,2620,3878,2609,2613,3861,3848,3849,3864,3850,3922,3799,2626,2627] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [6047,6618,6619,6620,6624,6629,5793,6838,6626,6663,6866,6831,6837,6032,6034,6041,6042,5788,5790,5796,5801,5802,6846,6858,6860,6850,6853,6855,5776,5777,6902,5787] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [4550,5101,4597,5196,4596,4783,3461,4553,4586,4583,4747,3051,3052,5096,5093,3042,5092] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [7013,8248,8264,7346,7383,8199,8203,8209,8250,7355,7941,8300,7321,7348,7349,7352,7004,7014,8278,8301,8249,6971,7325,7946,7949,7952,7958,8322,8201] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [8154,8126,5792,5795,7999,5794,8030,8032,8119,8118,8120,8848,7284,7298,5807,5808,5809,7290,7293,8152,8836,8001,7965,7966,5799] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [7973,7974,7299,7300,7301,7972,8000,8001,7966,5811,7284,7298,7595,5807,5808,5809,5792,5769,5770,5778,5779,5829,5831,5803] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [1436,1437,1859,2207,2208,2209,2201,1421,1423,1850,1853,1865,1848,1866,1892,2224,1430,1425,1434,1438,1864,1447,1381] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [2680,2699,5672,5673,5675,5659,5216,5221,5235,5701,5656,2681,2682,2683,2684,2678,5078,5217,5043,5046,5045,5700,5671,5684,6780] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [8050,8504,8505,8507,8051,8469,8503,8500,8038,8005,8040,6886,6868,6872,6874,6876,6866,6870,6879,6882] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [3613,3657,3646,2479,2481,4107,2485,2489,3645,3659,2444,1212,3648,2492,2495,2496,4100,4103,4104,2497,2499,4069,3658] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [2174,2179,2181,1834,1840,2183,1997,1998,2190,1996,1781,2192,2180,2182,2145,2168,2146,2147,1782] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [7570,7631,4920,7599,5837,5839,5841,7608,4954,4956,5745,5836,5857,5737,5739,5740,5741,4933] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [4586,4561,3486,557,559,560,556,3452,4584,4585,3422,3424,4574,3420,3421] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [10,7878,26,7808,34,35,7842,7876,7841,7806,5140,5137,5138,7844] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [338,340,345,1162,365,1165,1164,1170,3218,3227,367,1174,1264,1266,1297,1166] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3524,3525,3526,3527,2611,3536,2580,423,426,3538,3539,3011,2600,2601] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        