
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
        
        load "data/4EOS.pdb", protein
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
 
        load "data/4EOS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5135,4619,4721,4570,4618,4620,4569,4573,4574,4580,4581,5123,5140,4566,5198,4565,5137,5139,5143,5151,5159,5113,5114,5115,5116,5117,5118,5119,4734,4738,5569,5174,5534,5650,5547,5649,5654,5655,5657,5568,4981,4878,5651] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [496,497,1146,1147,1046,1053,1058,1151,1074,112,1048,104,259,103,650,652,654,100,638,1075,675,682,686,687,689,673,674,659,665,666,655,657,276,156,158,157,108,119,633,634,629,630,632] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [7479,7480,203,622,53,253,518,519,522,7470,521,239,7921,1,4,9,527,528,530,7889,42,39,52] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [3398,3430,2989,4504,3422,3423,4477,5030,4513,4514,4515,4665,2979,2988,4701,5004,5006,5107,5007,4715,5003,5012,5013,5015] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [8183,8162,8182,8853,8855,8841,8037,8066,8068,8155,8154,8156,5742,5727,5729,7331,7340,8002,8001,5744] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [2397,2433,1454,2402,2403,2411,1453,2189,1439,1449,1466,2183,2184,2185,2188,2191,2432,2404,1213,1222,1225,1228,1233,1234,1461,2416,1208,2419,1460,2195,2193] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [3837,2908,3496,2877,2904,2905,2881,3494,3497,3503,3736,3746,3738,2698,2902,2939,3742,2911,2556,2570,3815,3838,3859,3786,3787,2569,3798,3801,3486,3491] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [7977,7060,7061,7395,7396,7399,7402,7430,7987,7368,7393,8237,7047,7051,8306,8292,8276,8227,8231,8277,7982,7988,7994,8328,8329,7372,8350] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [1133,2345,1132,1116,660,1088,1091,469,471,472,482,7114,7133,7134,647,656,1103,506,642,7115,7116,7112] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [3575,3664,3541,3544,3546,3511,2840,1240,1241,1224,1226,3510,2846,2847,2849,3691,3692,3671,4362,4364,4350,2842,2850] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [5455,8010,5704,5705,5714,5746,7641,7642,5713,5743,5744,5700,5764,7345,7346,7347,7349,8002,8008,8009,8011,8004,5766,5727,8036,8037,7382,7632] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [6652,6469,6470,6471,6312,6266,6267,6313,6663,6618,6647,6265,6641,6262,6264,6665,6654,6309,6311,6655,6651,6653] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [5585,4957,4956,5619,6840,5635,5636,2628,5132,5127,5146,5607,5609,2623,2624,2625] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [1428,1438,2185,2186,2187,1378,1415,1831,1872,1429,1826,1828,1837,1844,2194,2179] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [1197,1198,2855,3150,3151,1201,1210,3517,3513,3545,3546,3511,1240,1241,1243,1211,1224] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [8397,8398,8622,8626,8655,8656,8657,8659,8624,8388,8634,8936,8416,8417,8419,8421,8922,8934,8935,8927,8390] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [7069,7464,7468,7070,7117,7119,7115,455,457,503,504,505,506,7114,522,7470] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [353,3126,360,380,1169,1176,1273,1269,1272,1268,1294,3155,3164,382] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [7912,7913,7879,42,7914,7881,16,17,33,41,32,34,7878,7846,7848,7849,7850,7880,5035,5042,5043,5044,5048,5049,5051,5052] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [1313,1315,1316,1329,1330,1331,1332,1333,1335,1033,1035,1042,1347,1348,1334,1336,1560,1041,1320,1043,704,706,1047] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [2435,2428,2430,3550,3583,3585,3594,3596,4044,4040,4041,3595,2438] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [5957,6881,6923,5736,5956,5737,5716,5725,5728,5731,6924] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [5932,5931,6332,5917,5918,6689,6690,6680,6681,6674,6323,6367] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [2123,2158,2159,2160,1976,2124,1974,2146,2152,2156,2161,2168,1819] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [6930,6931,6933,8535,6919,6922,5722,8043,8076,8084,8086,8087,8073,8074,8041,8531,8532] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        