
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
        
        load "data/5OXG.pdb", protein
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
 
        load "data/5OXG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5383,5772,5799,5800,5801,5174,5870,5871,5048,5310,5325,4784,4779,4780,4782,4831,4934,4832,4932,5384,5410,5412,5411,5376,5351,5348,4920,5324,5342,5344,5346,4810,4811,4805,4806,4807,4808,4809,4936,4980,5761,5762,5773,5784,5745,6036,6037,5872,5875,5878,6034,6035,6056,6043] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [290,244,110,111,112,113,114,115,116,137,242,87,135,82,83,85,107,106,236,136,84,240,1146,484,1075,1076,1077,660,635,1151,358,1148,1147,594,608,609,613,228,626,632,628,630,1154,1060,1048,1049,667,668,696,1021,1310,1311,1312,1313,1332,1038,1051] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [3423,3411,2469,3508,3440,2998,3438,3439,2995,2445,2447,3401,2446,2448,3412,3030,3031,3059,3023,3026,3418,3384,3400,3676,2420,2415,2416,2418,2467,2468,2417,2989,2991,2993,3008,2574,2576,3513,3516,2572,3509,3510,2816,2971,2972,2976,2442,3658,2957,2953,2568,2560] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [8095,8107,7714,7742,7713,8096,7274,7278,7633,7266,7173,7174,7175,7280,7282,8192,8193,8199,7394,7395,7127,7152,7153,7154,7150,7149,7151,7672,7674,7676,7706,7123,7125,7122,7647,8122,8123,8124,7648,7519,8191,7678,7681] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [6929,1487,1488,1476,1489,6930,1208,1209,1483,1470,1472,1517,6917,1206,979,892,1224,900,904,905,907,1244,1245,6173,6220,6922,6923,6924,1490,6214,6255,6211,6195,6928] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [5731,5734,5735,6229,6165,6001,6231,6266,6125,5730,6032,6041,6045,6047,6048,6097,5897,6095,6122,6124,6585,6164,6179,6180] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [1038,1051,1053,683,687,1036,115,1349,1350,1764,1765,685,1333,1343,1347,1833,1835,1840,1848,1834,1362,1364,1044] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [8085,8365,8381,8382,8383,8788,8864,8858,8859,8872,8854,8098,8099,8100,7733,8857,8789,7729,7731,8091,8097,8083,8394,8396] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [3654,3663,3666,3667,3744,3369,3668,3370,3371,3373,3374,3623,3745,3784,3785,3847,3849,3799,3800,3851,3767,3711,3878,3742,4200,3715,3717] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [6556,6569,6561,4800,6555,6075,6548,6074,6486,6554,6052,6056,6057,6086,6073,6088,6485,5775,4810,5776,5777,4796,4801,4805,4808,5761,5762,5774,5745,6036,5768,5401,5403] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [1531,2205,2206,6214,5946,5948,1450,6213,6241,5930,6253,6255,6240,6961,5630,5616,5624,5631,5945,5703,5635,2193,2192] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [8057,8058,8309,8537,8433,8473,8472,8486,8487,8488,8054,8055,8053,8218,8566,8355,8356,8340,8349,8352,8354,8432,8403,8405,8325] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [3416,3413,3414,3415,3048,3050,4170,4171,4169,4176,2445,2447,3401,4184,3687,3694,3706,3708,3407,3695,4100,4101,3677,3676,3678,2426] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [1505,1401,1441,1543,1400,1320,1322,1371,1323,1324,1373,1542,1006,1455,1456,1454,1507,1293,1308,1317,1010,1011,1277,1440,1398,1423] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [8085,8364,7150,7148,7149,7151,8351,8343,8344,7152,7153,7154,8098,8068,8199,8345,8084,8095,8107,8096,7282] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [5145,5815,5816,5817,5162,5357,5356,5175,5176,5330,5331,5332,5334] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [3867,3860,3861,3269,3855,3857,3256,3258,3859,3862,4560,4566,4569,4572,4571,4577,3893,3856] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [6249,6237,6239,6240,6241,6961,6281,6950,6956,5630,5619,5617,6960,6959,6962] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [8547,8548,8549,9266,9269,9271,8520,8522,7942,7944,8545,8518,8519,8555,8557,7955] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [1516,1517,893,1515,895,1486,1513,1557,897,2247,892,904,1529,2237,2235,1525] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [455,640,641,1091,1093,453,472,485,616,618,614,615] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [813,1112,1083,779,706,707,1109,1110,1088,1097,802,803,780,752] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [8155,7828,7752,7753,7786,7790,7801,8157,8130,7862] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        