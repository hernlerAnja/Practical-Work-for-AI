
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
        
        load "data/4EHZ.pdb", protein
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
 
        load "data/4EHZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2575,3578,3579,3580,3581,2721,2722,2825,3594,3595,2573,2792,2793,2796,2798,2786,2787,3465,3467,3468,3470,3479,3443,3474,2521,2505,2511,2513,2519,2520,2522,2574,3572,3573,3048,2706,2514,2517,3066,2516,3064,3099,3094,3098,3091,3495,3494,2499,3122,3123,3124,3052,3069,3072,2539,3761,3602,3603,3604,2524,2531,2532,2535,2545,2559,2525,3442,3776,3778,2552,2768,2549,2556,2557,2736,2765,2791,3596,2788,2789,3762,3765,2554,3738] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5892,5722,5724,5870,5891,5868,5869,5723,5768,5893,5019,5020,5093,5120,5883,5885,5081,5083,5087,5059,5091,5082,5752,5754,5756,5750,4856,4830,4819,4829,4857,4817,4818,4854,4855,5034,4873,4843,4840,6051,6054,4833,4837,4842,4845,4847,4850,5063,5060,5086,5084,6050,6065,6067,6023,6024,5909,6025,6026,6027,5085,5714,5908] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [1299,412,1289,1290,1291,447,471,472,473,479,469,470,475,476,247,248,427,1128,1314,1315,223,215,216,222,249,250,1138,1297,1298,1137,1274,1276,1174,413,1275,266,508,481,1164,1165,1471,245,1426,1429,1431,1432,1433,453,451,474,1457,1460,1416,1402,236,240,243,226,448,1456,1473] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [795,799,825,1190,823,824,792,773,208,767,1160,826,1169,196,202,203,210,204,205,207,1275,264,265,266,748,749,1174,1267,1268,1273,753,760,770,1189,765,397,211,213] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4814,4871,4872,4873,4803,4809,4811,4812,4815,5004,5339,5346,5356,5359,5351,5353,5412,5378,5410,5411,5409,4817,5334,5335,5861,5862,5867,5784,5783,5235,5869,5768,5747,5381,5385,5386,5748] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [7693,7717,7685,7688,7692,7718,8083,7110,7716,7660,7662,7108,7168,7646,8082,7109,7111,7658,7642,7300,7534,8161,7663,7653,7666,7116,7105,7106,7107,7112,7113,7114,7115,7167,7169,8056,8054,8053,8067,8166,8168] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [8058,7126,7128,7118,7119,7125,7150,7151,7152,7153,7359,7382,7383,7385,7380,7386,7143,7330,8366,8029,8030,8031,8190,8191,8192,8184,8207,8208,8295,7384,7146,7148,8353,7361,7363,8350,8349,8322,8323,8326,8182,8183,7419,8167,8168,8169,7381,8056,8067,7315,7316,7392,7169,7387] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [166,168,169,171,177,6870,6849,6851,6840,6845,6846,5959,6194,6211,6214,6830,6841,199,193,198,200,6197,6206,6208,6210,6235,6202,6209,5625,6860,5614,6858,5649,5650,5651,5652,5622,5655] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [2478,2479,2480,8509,8510,8513,8260,8263,8508,2431,8249,8256,7982,2430,9140,8501,8505,8507,8534,8220,8221,7957,7981,7983,2469,2470,7956,2436,7955,9145,9148,9157,9159,7932,9150,9154,9161,7921,2476,2475,2458,2467,2472,2429,2427,2434,8493] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [4263,1558,4264,4296,4297,1959,1991,1992,1958,1960,1559,4234,4238,1933,4272,4236,4239,3861,1967,1990,1929,1931,1934,4265,3863,3864,3865,3862,3874,3871] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [6153,6151,8827,8860,6152,8826,8885,8822,6586,6552,6553,6554,6561,6527,6528,8451,8852,8851] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [2568,2583,2567,2478,8260,8261,8263,2430,3022,3023,3024,2476,2458,2472,2598,2429,2459,2460,2462,2732,2751,2752,8262] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [814,816,817,1161,1162,1163,1165,1717,1157,1792,1768,1772,1791,1756,1504,1503,1807,1804] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [1612,1614,1615,2264,1062,1063,1065,1039,1070,1064,2252,2257,2255] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [1612,1613,1614,1615,2264,1616,1617,1620,1365,1641,2247,2252,2257,2236,2255] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [122,167,169,5945,419,724,725,273,274,275,423,257,259] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [2032,2180,2178,1650,1681,1682,1484,2021,2176,1831,1653,1830] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [8359,8331,8308,8408,8409,8020,8021,8191,8436,8309,8435] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [8925,8724,8546,9069,9071,8576] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3958,4135,4136,3988,4481,4326,4483] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [6247,6615,6770,6772,6277] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        