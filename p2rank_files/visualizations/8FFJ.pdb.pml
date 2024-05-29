
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
        
        load "data/8FFJ.pdb", protein
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
 
        load "data/8FFJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4192,6626,60,64,65,66,4138,5,7,36,37,7032,7035,7078,7080,7006,7007,6,6209,6254,6256,6633,6634,417,51,54,7062,7060,7061,539,542,4033,4035,536,537,538,551,552,83,84,565,76,77,81,99,100,101,1326,4045,1339,1340,1341,1342,4190,4172,4175,6618,4168,4191,4137,4151,6627,6161,6163,4304,4317,4322,4323,4324,4296] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [9748,9749,10794,10125,10860,10019,10123,3739,3771,3772,3773,3774,9713,9723,9724,9728,10789,10790,9743,10791,4418,4239,4419,4250,4251,4259,4260,4263,3740,4366,4367,4379,3681,4265,10075,10046,10086,10087,3684,3706,3709,9712,9722,10044,10045,10047,10101,10102,10103,10107,10060,3719,3721,4262,4017,3694,3715,4264,4261,10109,10110,10792,10823,10828,10832,10833,10844,10830,10841,10842,10861,10862,13966,13925,3879,3842,3878,3828,3843,10845,13884,13921,10801,10802,10807,4398,4399,4617,4618,4619] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [8587,16227,8585,16228,17314,17316,17317,17304,17305,17306,17310,17329,17322,17323,8545,8542,8672,8673,8582,8601,8613,16551,16553,16195,16197,16198,16199,17298,8759,17303,16196,16126,17254,17299,17333,17334,17335,8896,17324,17337,8833,8836,8837,8838,8817,8832,8694,8818,8770,17256,8768,8771,8798,8799,8801,8803,8800,17336,17404,17338,17339,8719,8741,8756,8797,16124,8357,16620,16622,8155,8156,8157,8158,8159,8160,8387,16550,16552,16599,16548] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [10381,10380,10402,10403,10406,10407,10383,3516,3521,3523,3524,3648,3652,1956,1957,1958,1935,1937,2361,2363,3499,3502,3503,3274,1292,1934,2414,914,4045,4046,4047,4048,4052,3517,3518,3541,3542,3540,4053,1293,1295,1297,4056,1321,911,912,913,915,1325,1326,542,4026,9699,9700,9701,9702,10384,10385,10386,10074,10071,10356,3670,3672,3673,10084,10085,10094,10096,4014,4016,4286,4296,4013,4015,4025,2411,2395,2396,2397,2398,2400,10372,10353,10343] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [3559,25,866,863,507,508,40,862,4066,4067,4089,23,492,880,883,3489,3486,3477,3556,4056,3557,3427,3595,3597,3625,3552,4054,4055,3480,3450,1235,3459,3460] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [13765,13099,15024,15025,9901,9902,9892,9893,9894,9899,13764,13805,13766,13109,13095,13098,13108,13110,9856,9857,9859,9858,9879,9883,10732,10730,13060,13061,13062,13063,13118,13075,14062,14063,14056,14060,14061,14036,14037,14042,14021,14044,12640,10980,10690,10691,11021] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [4945,4946,6206,6239,6245,6228,6230,6231,5801,5803,5804,4811,4791,4808,4809,4886,4925,4944,6190,4792,5229,5230,5762,5763,5764,4793,4941,4795,5259,5290,5291,5292] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [113,292,6279,6280,212,6246,192,209,222,226,87,341,6676,277,232,236,235,7125,6242,6243,6264,111,168] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [1816,2028,1497,1781,2836,1469,1468,1723,994,2269] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [5205,5207,4739,4769,4738,4427,4352,4382,4770,4771,4837,4355,4377,4395,4415,4341,4337,4694,4704,4712,4713,4735,4741,4430,4431,4401,4696,4695] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [6277,6245,5802,6229,6230,6231,5803,5804,6361,6362,192,209,222,226,6279,6246,4945,4946,169,170,5290,5291,5292] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [17283,17284,17353,17356,17352,16457,16459,17387,16454,16455,8569,16456,16458,16462,16675,16697,16461,16460,16656,8375,16507,16652,16653,8413,16508,8399,8400] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [11797,11768,11769,15008,15009,15010,11799,11800,12076,12077,11778,11811,11792,15054,15057,15050,15053,15021,15040,14587,14588,15123,14599,14600,14601,14602,15107,15121,15108,15099,15100,15101] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [13165,13167,13209,13402,13385,13454,13401,13376,13386,13381,13078,13079,13119,13120,13149,13150,13161,13137,13140,13041,13045,13080,13710,9318,9335,10949,13141,9300,9338,10984,9305,9308] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [6856,6857,7142,7143,7144,7145,7146,7147,7169,7186,7183,7196,7179,7182,7235,7231,7218,7156,7157,6852,6837,6851,6855,7238,6789,6840,6839,6841] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [4553,4479,5706,5707,4551,4552,4480,4526,4554,5705,4156,6099,6588,6586,6587,6589,6100,6098,4155,4157,6565,6137,4527,4528,4150,4174,6134] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [10880,10846,13867,13869,10827,10831,10832,10833,10804,10807,10882,13247,4402,13249,4637,4645,4647,4398,4399,4617,4618,12948,13889,13266] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [7699,7749,7750,7751,7744,7745,7746,6509,7567,6532,7700,7639,7779,7553,7598,7595,6507,7566,7622,7627,7608,6506,6528,8090] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [4014,4016,4286,4287,4296,4013,4015,4025,4309,4304,4307,4339,9699,9700,9701,9714,9715,9716,10074,4045,4046,4048,4026] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [3306,3274,3275,3272,3103,2360,2362,3502,3314,3106,2400,3092,3091] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [14014,9924,9930,9931,13991,13993,13983,12522,9948,9951,13959,9952,9953,9955,10164,10165,9954,10195,13994,14012,12553,12554,12555,14013] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [15333,14327,14411,14413,14364,14367,14414,14341,14353,14354,14363,14369,14398,15287,15288,11264,15335,15336,14328,14329,15768,15769] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [17383,17400,17436,17438,17210,17211,17213,16422,16423,16347,17437,17439,17440,17441,17442,17434,17435,17457,17214,17216,17212,17215,15813] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [4401,4696,4403,4695,4694,4704,4681,4691,13359,13364,13365,4382,4395,4415] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [4383,9320,10932,10934,10935,9321,9731,9732,10771,4380,9647,9638,9643,9646,9667] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [9882,9883,10667,11886,11882,11859,11860,11021,11055,11056,11888,11974,11976,11577,10691] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [7567,7568,7569,6034,6033,6035,6032,5984,7585,7586,6442,6443,6445,6480,6478,5956,5954,5955] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [2198,2199,2200,2586,2209,2161,2163,2155,2650,2651,2659,2674,2675,2660] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [1278,958,1217,1216,957,1468,1816,1817,1157] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [14470,14472,15244,14471,11491,11216,11217,14495,11510,11511,11512,11185] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [12152,12153,12154,12118,11405,11419,11404,11275,11396,11343,11344,12116,12119,12120] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [2678,2783,2209,2211,2782,2659,2674,2675,2688,2660,2650,2161,2693,2819,2163] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        