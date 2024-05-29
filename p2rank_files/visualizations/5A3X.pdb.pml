
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
        
        load "data/5A3X.pdb", protein
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
 
        load "data/5A3X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1459,1460,579,1461,1467,1445,1446,1329,1289,3315,3316,1287,1305,1306,1588,546,3330,3312,3340,2915,3313,3314,543,545,550,517,551,3299,3341,3108,520,307,482,522,293,296,297,292,473,554,299,302,305,308,523,96,98,524,2904,2905,3107,3109,3110,3113,457,1317,282,1318,1321,87,88,549,3321,1466,3323,1465,3322,1567,3326,1279,1574,1576,1577,1288,1583,1286] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5686,6076,6087,6088,6089,8618,5666,5688,9877,9879,5689,9884,9886,8841,8623,9781,9782,9783,9784,9786,9787,9788,9767,9608,9609,9610,9895,9874,9888,9893,9898,8778,9766,9780,8626,5599,5609,5611,9918,9650,9626,9627,9642,9651,9909,9905,9908,9910,9914,8628,6090,6094,6099,8838,8866,8867,8871,6103,9800] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [6907,6909,6936,6534,6512,6030,5864,6501,6504,6505,6507,6506,6047,5917,6043,6045,6335,6336,6477,6478,6480,6481,6482,6483,6487,7029,7033,7034,7036,6919,7027,7028,5916,5918,5866,5897,5898,6046,5872,6912,5860,5861] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [7305,7307,7317,7320,5448,8174,8175,7312,7314,6838,6839,7315,7304,7308,7316,6802,8217,5449,8207,8208,8209,8218,4513,8210,6801,6777,7291,7284,4518,4531,4532,4534,4535,4547,5437,4311,4539,4541,8176,5481,5482,5483,5484,5491,4309,4317,7285,7286,4028,4029,7081,7083,7087,4512,4510,4511] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [457,1346,1436,1437,1438,1317,1345,944,890,892,893,916,915,455,456,308,307,274,327,270,271,276,922,440,897,911,326,328,1439,1440,1443,1444,1446,1329] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [5879,5882,5887,6912,8820,8420,6879,6895,6896,8418,7178,7167,7174,7179,7153,7155,7183,7187,5895,5897,5892,5898,6046,5918,6138,6139,7057,7056,8825,7143,7159,8819,8818,8813,8807,7147,7149,6063,8416,8397,8385,8338,8346,8350,8341,8343,8344,6877,6878,7033,7034,7035,7036,6919,7027,6047,7049] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [3563,3714,3257,4163,4254,3728,3731,3732,3091,4256,3562,4253,3143,3144,3145,3709,3710,3272,3273,3274,3397,4257,3705,3707,3708,4146,4162,4255,4134,3739,3124,3125,3096,4260,4261,4263,3087,3093,3099,3761] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [8591,8647,8649,8628,8629,8597,8648,8595,9638,9650,8600,8603,8776,8777,8778,9765,9767,9666,9667,9757,9759,9760,9758,9764,8761,9209,9211,9218,9235,9243,9232,9231,9214,9213,9067,9238] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [4262,3122,3124,4263,4146,4277,4278,4284,4103,4283,509,513,3337,3339,3115,3116,3119,504,4370,4391,4394,4104,4106,4105,4405,4122,4123,500,486,497,498,499,3114,4374,4376,3360,3362,3367,3363,3368,3334,3290,4276,3274] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [2697,10908,2694,2695,2696,2698,1730,2651,10891,10898,10905,10907,10367,10369,1496,1495,1714,1718,1715,1716,1717,9816,10035,10038,2663,10899,1249,10011,10016,10017,10018,10020,10021,10022,10010,10015,10372,10399,10402,10403,10376,10378,1211,1248,1725,1209,1212,1724,1722,1726,1727,1720,2704,2705] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [9570,9816,10035,10036,10038,10039,10045,9817,9532,2663,1695,1696,1697,1690,1500,1714,1700,1701,1715,1717,1693,1694,1495,2662,10908,9542,9545,10046,9533,10943,10949,10950,2081,2078,10047,10043,10940,10941,10942,10051,10896] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [2914,2916,3315,3316,1306,1588,2819,2820,2826,2837,2839,1467,1289,2912,3314,1556,1558,2881,3303,3307,1564,1565,1553,1567,1576,1577,1584,1587,1589,1597,1593] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [8417,8803,8406,8407,8409,8844,8845,8611,8612,8613,8614,8617,5674,5677,5678,6072,5883,5886,8419,6114,6113] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [52,54,829,830,4736,4944,4945,40,825,826,836,842,843,4373,31,4737,4361,4918,4919,4920,4943,809,808,810,4366,4362,4364,4476] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [20,22,64,490,4374,4376,4380,4382,9,4414,14,17,25,4370,4394,4393,4400,4401,4405,486,95,497,499,97,99] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [6416,6431,6432,6433,10423,6422,9865,10424,10240,10449,10446,10447,10448,5644,5630,5621,9878,10241,5642,9980,9987] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [1304,2822,1610,1313,1312,1620,1621,1824,1607,1609,1868,1869,963,1322,959,961,1029,1031,1587,1589,1600] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [6822,811,796,797,806,792,793,794,593,586,812,4341,860,861,561,560,563] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [1696,1697,1690,2056,1694,2646,2647,2055,2057,2662,2661,2653,2654,2082,2048,10942,2081,10943] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [2126,2127,3659,3660,2128,2855,2857,2871,2848,2854,2869,2845,3642,3643,3647,2103,2102] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [4406,4422,4423,4424,4425,4426,4427,4641,3778,3780,4414,4404,4405,4437,4138,4139] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [6549,6551,6552,6553,7199,7197,6911,6548,7211,6902,7414,6908,6547,6904,7443,6894,7210] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [9280,9282,10145,10189,10190,9352,9941,9928,9930,9625,9642,9640,9641,9643,9633,9634] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [3660,2128,2855,2857,2871,2848,2854,2869,2845,1917,1918,2103] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [570,571,1471,1473,549,1484,1480,1539,1538,3357,1461] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        