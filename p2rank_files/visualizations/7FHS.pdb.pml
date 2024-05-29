
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
        
        load "data/7FHS.pdb", protein
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
 
        load "data/7FHS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [893,589,328,896,898,899,752,1442,1443,1444,1445,1451,1323,1335,1449,282,1324,1327,1352,1351,943,950,923,522,297,289,292,5694,5640,473,517,457,456,520,302,305,307,308,588,1453,1465,557,1467,1473,1450,1452,6123,6126,6116,6117,1577,1558,1563,1565,5715,5717,5643,5635,5627,5638,6110,6118,6104,5713,6115,5707,5682,5686,549,551,6127,6122,559,1446,1285,1293,1295,1576,1294,1311,1312,1583,1584,1588,1589,1596,1597,1593,327,276,277,279,274,920,928,270,271,903,440,917,916,1553,1567,1556,6107,1574] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [3115,3122,3124,8899,3116,3119,3290,4405,4122,4123,4393,4394,4400,4401,4406,4106,4262,4263,4276,4284,4146,3396,4104,4105,4391,4138,8904,8905,8906,8908,4370,4384,3363,8909,8913,3334,3289,4277,4278,3367,3368,3109,3114,8476,8496,8420,8422,8498,8499,4380,4382,8409,8897,8886,8889,4373,4375,8898,3339,3337] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [3316,9866,9867,9977,9687,9688,9689,9988,8707,8856,8857,8873,8702,8705,9859,9862,9845,9846,8979,9679,9686,9705,9706,8949,3323,3317,3321,9972,9953,9967,8946,8954,8917,9865,8951,3315,8697,2912,2914,2916,9958,9965,3330,3313,3309,3303,3306,9956,8920,8698,8922,8689] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [5926,5888,5890,5892,5894,5897,5944,5945,5946,7065,6198,6947,7057,7058,7061,7062,7064,5925,6073,6074,6075,6540,6964,6935,6528,6532,7054,7055,7056,6936,6562,5900,6058,6505,6506,6508,6515,6535,6529,6527,6364,6533,6534,6510,6511] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [8674,8840,9297,9837,9311,9315,9317,9746,9729,9838,9717,9316,9344,9310,9314,8670,8676,8727,8728,8679,8682,9705,9706,8980,9145,9836,9847,9853,9839,9840,9843,9293,9287,9288,9290,9291,9292,8707,8855,8857,8708,9844,9846] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4163,4254,3728,3086,3087,3092,3093,3096,3144,3257,3089,3091,4255,4162,4134,3734,3714,3739,3731,3727,3761,4253,3709,3710,3272,3273,3274,3705,3707,3704,4256,4257,4260,4261,4263,4146,3563,3124,3125,3145,3099] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [6168,7077,5920,5923,5925,6075,6091,6197,6947,7064,504,506,7083,7084,6164,7078,7079,7085,509,513,6163,6135,6138,6140,7188,7189,6905,6907,6906,7200,6923,6924,5907,7165,7179,7184,7186,496,5910,5915,500,486,492,495,6172] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [4513,4514,4898,4899,2703,2704,2705,2706,2707,1730,2660,4894,4910,1255,1502,1726,1727,1714,1717,1231,1232,4512,1501,4313,1190,1193,1218,2714,2713,1225,1220,1254,1722,1724,1725,1721,1217,5463,4872,5470,5471,5473,4507,4868,4517,4518,4510,4511,4515,4516,2672,4531,4532,4534,4312] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [499,523,5911,5914,6100,5704,5706,5909,482,524,293,5716,5705,6141,6142,88] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [2893,2834,2836,9964,9997,2838,2907,9958,2846,9965,2842,2912,2914,3303,9956,3316,9977,9988,9993,9953] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [9612,9611,8263,8264,11092,11094,10114,10126,10120,10117,10127,10115,10116,10124,10122,11102,7114,7326,7327,7328,7329,11059,7313,9896,7113,7312,7305,7307,7310,7308,7306] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [3109,3110,3113,8487,3108,3299,2899,8896,8923,8880,8882,8924,8693,2901,2913,2915,8696,3341,3340,8484,2903,2904,2905] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [7271,7713,7714,7715,7737,7738,7739,842,847,832,836,31,848,849,7169,7531,7532,7740,831,52,54,55,40,7155,7156,7157,7162,7163] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [8431,9242,9243,4920,8440,4942,4943,4944,4945,9226,8454,9230,4736,4919,9225] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [7114,8299,11060,7326,7329,8295,8296,8297,8298,11059,9896,7337,7332,7334,7336,7333,8306,8252,6829,6867,10095,10096,6830,6866,10101,10114,10093,10098,10100,10117,10115,11057] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [5672,2136,2137,5658,5670,2112,6460,6461,1919,5649,6443,6444,6448,2111,2133,2134,2135] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [10480,10481,10482,10096,8299,11060,8329,8328,10090,11051,10455,11043,10448,10089] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [7177,7176,7209,7201,7205,96,98,99,19,21,7188,7189,7196,7200] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [10503,10528,10525,10526,2848,3659,3660,3646,2857,10527,2869,2871,3647,3642,3643,3653,10502] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [1319,1621,1824,1868,1869,1310,1308,1587,1620,1609,1607,965,967,969,1037,1035,1853,1325,1328] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [4414,8402,8405,4422,4424,4423,4425,4426,4427,3778,4685,4404,4405,4406] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [8960,9260,8963,9211,9212,8985,8986,9022,9192,9193,9194,8996,4341] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3388,4356,8939,8940,4345,3413,4300,4353,4355,4292,4295,4297,3387] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [7201,7205,7217,7218,7219,7220,7222,7221,7209,7199,7200,7231,6924,6922,6939,6940] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [9704,9721,9722,10007,10009,10020,9359,9361,9363,10268,10269,10224] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [7140,7151,7150,7098,7094,7093,7096,6189,507,508,540,6224,7105,6188,6187] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        