
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
        
        load "data/5A4E.pdb", protein
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
 
        load "data/5A4E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [297,1289,2897,3298,3299,3300,2899,2901,3301,1288,1306,1582,2822,2824,2807,2819,2870,546,1460,1461,543,544,1459,1467,1329,1446,517,545,550,3315,551,1547,1551,1553,1559,1561,3291,3288,3294,2866,1558,1463,3302,1466,3306,3308,3311,1279,1568,1570,1571,1578,1583,1587,302,457,289,292,298,299,305,307,308,282,1320,1322] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5694,5700,5706,6345,5752,5750,5751,5695,5698,5731,6845,6847,6844,5732,5879,5881,6315,6323,6746,6747,6342,5864,6298,6312,6318,6838,6839,6840,6841,6004,6146,6292,6294,6289,6291,6293,6288,6730,6723,6720,6718] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [915,916,917,328,1436,1345,1346,1437,1438,1317,282,944,1319,1320,1322,887,888,890,891,892,893,897,457,307,308,440,272,274,327,276,279,270,271,910,913,914,922,909,911,1439,1443,1444,1329,1446] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [9267,9268,9272,9289,9290,9291,10147,10148,10149,10153,2657,10154,10155,2654,2656,9629,10139,10140,10141,9620,9622,9275,9292,9298,9288,9299,1690,8791,9264,9304,10189,10191,9294,9296,9300,2074,2075,2076,8792,9269,1211,9270,1719,1212,2691,1709,1716,1720,1711,2692,10156,10157,1249,9080,1496,1495,1718,9076,1708,1712,1689,1695,2690,2689,1187,9656,2721,2722,9655,9271,9652,9668,1226] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [6688,6689,6690,6706,6707,6989,6722,6723,6978,6977,6985,6990,6988,7007,6994,6866,8090,6867,6868,6968,6971,6973,6975,6954,5729,5731,6846,6847,5726,5881,5973,5974,5975,5972,6860,5978,8082,5721,8083,8084,8085,8072,7683,7684,7685,6958,6960,6965,6997,6998,8099,8078,8086,5713,7608,7662,7606] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4177,4178,4179,3074,3076,3077,3128,3129,4185,4180,4181,4184,3110,3130,3259,3257,3258,4095,4096,4097,3673,3692,3695,4068,3688,4187,4080,3084,3109,3078,3079,3081,3497,3668,3648,3242,3665,3661,3643,3641,3644] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [4455,4456,4458,5321,7512,7511,4241,6650,4236,6896,6897,4435,4436,4437,4442,4430,4457,5278,5276,4459,4463,4464,4461,4462,5320,5329,5330,4467,4468,4471,4000,4237,7102,3962,3963,4465,7096,7097,7095,3927,5323,7123,7118,7131,5287,5288,7502,7125,7126,6610,6613,7549,7546,7548,4823,7556,6612,7115,7116,7119,7121,7122,7127,7128,7117] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [7883,5921,5922,9168,9147,9157,9164,7884,7888,7891,7893,8106,8108,8059,9039,9040,9042,8165,9025,9026,9046,9047,8867,8868,8869,8909,8885,8886,8901,5933,8131,8132,8135,5937,5924,5928,5930,9133,9041,8103,8137,8140] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [9018,8530,8897,8925,8926,7868,9016,8909,9017,8503,7913,8026,7912,7914,7857,7860,8332,8473,8474,8483,8497,8501,8502,7856,7862,8523,8508,8500,8042,8043,8166,9019,9023,9024,9026,8039,8041,8475,8479,8476,7893,7894] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [3099,3091,3094,3100,3107,3109,505,507,4208,497,4294,97,99,498,499,21,23,4300,4306,4040,4187,4038,4056,4057,4080,4329,4030,4037,4315,4317,4318,4325,4039,3351,3104,4185] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [9280,9282,9058,9116,9057,8842,9275,8845,9054,8841,8861,9084,9106,9108,9059,9063,9077,9080] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [9167,9168,9137,9147,9157,9139,9144,9145,9164,9169,9173,5923,5519,5521,5522,5523,5443,5500,5433,9476,5445,5447,9182,9184,9174,9179,9180,9181,8886,9472,9133,5910] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [4843,4844,4842,4867,4868,4869,52,54,40,842,841,31,843,825,826,829,836,830] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [6227,6230,6231,6237,6242,6244,5476,9702,5478,6243,9677,9675,9494,9492,9493,5462,5463,5464,6210,6211,6226,9676] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [8068,5510,5511,7672,7673,7674,5508,5506,5509,8110,7882,5920,5922,7670,7668,5947,5904,5905,5948,5717,5906,8109,5720,8085] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [523,524,84,96,98,481,2889,2890,82,87,2898,3284,3325,2900,3095,3098] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [1304,1614,1601,1603,1615,1818,1862,1312,1313,1581,962,1320,1321,959,961,963] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [6866,8090,8092,6867,6934,6682,6968,6971,6973,6953,6954,6936,6937,6935,8118,8077,8078,8086,8075,8072,6958] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [6207,6212,6213,6197,5980,5983,5984,6261,6009,6010,6011,6193,6194,6195,5982,6020,6019,9104,5985,5987,656] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [1520,1532,1533,1478,1530,1483,1480,1504,1498,1701,571,570,1471,549,1475,3309,3310,3341,3342] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [8146,8446,8392,8397,8398,8377,8379,8171,8172,8173,8118,6929,6925,8149] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [3594,2097,2119,2120,2121,2122,2856,2857,2096,3576,3577,3580,3581,3583,2833,2842] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [6362,6714,7008,7010,7225,7269,7270,6358,6359,6360,6363,6364,6433,7021,6705,6703] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [3712,3714,4609,4361,4362,4348,4350,4072,4073] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [4221,4279,4280,4212,4216,4215,4202,4204,4205,4206,504,505,4277,3372,539,3373,540] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [6352,6553,7233,6518,7200,7209,6521,7231] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        