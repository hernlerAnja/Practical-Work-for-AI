
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
        
        load "data/4EOI.pdb", protein
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
 
        load "data/4EOI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5599,5601,5602,5673,5580,5573,5678,4600,4607,4608,5681,4601,5575,5576,5577,5009,5175,5179,5185,5193,5194,5233,5197,5202,5206,5209,5150,5157,5186,5162,4646,4748,4592,4593,5164,5166,4645,4647,4595,4596,4597,4598,5167,5140,4764,4765,5141,5142,5143,5144,5145,5146,5674,5675,5679] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [478,1054,1055,619,636,1026,1028,670,92,89,638,640,646,654,655,656,663,667,264,108,95,96,98,101,146,147,609,610,611,612,613,614,615,248,263,477,93,631,633,635,647,1126,1038,1033,265,1131,1127,1132,1134] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [511,7903,4,31,41,7908,42,7498,7499,603,192,228,242,508,509,510,499,500,502,1,7929,7931,7933,7899,7940,7902] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3009,3418,4531,3450,3443,3442,4504,4541,4542,5057,5030,5039,5040,5042,5031,5134,5055,2999,3008,4728,4742,4692,4540] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [3604,3688,3537,3718,3719,2860,3665,3698,4403,3170,2870,2875,2876,3538,1190,1204,1211,1220,1221,1223,1241,1243,3540,1191,3544,3571,3572,3573,3602,3691,1181,1177,3171,3546,3545,1182,2866,2867,2869,2862,4377,4391,4382] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [5768,7350,8865,7359,8201,8202,8872,8874,8862,8860,8023,8055,8056,8054,8085,8020,8021,5753,8173,8174,8175,5770,7364,7366,7367,8027,8028,7365,5737,5738,5751,5788,5790,5766,5728,5729,7661] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [2176,2179,2172,2173,2175,2400,2404,2405,1418,1433,1434,1440,1429,1442,1446,2171,2426,2403,2424,2434,2436,2215,2418,1208,1213,1214,1409,1407,1408,1188,1193,1200,2478,1199,1202,1205,1189,1441] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [1112,1113,623,1071,7133,637,641,1068,2332,1096,485,7505,7153,628,453,452,463,857,450,7135,7134,7131] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [2959,3828,3886,2718,3763,3767,3769,2589,2590,3765,2897,2898,2924,2925,2928,3773,2922,2900,3825,3813,3842,3530,3864,3865,2576,2547,3513,3518,3524,2931] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [4983,5154,5643,5659,5660,5618,5177,6871,5634,5615,2643,2662,5151,5159,5169,4984,5016,2645,2664,3015,2663] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [7080,8311,8296,8306,8295,7387,7414,7415,7208,7412,8250,8252,8347,8348,8369,7391,8007,8013,8245,8248,8256,8297,8246,7421,7418,7996,8001,8004,7066,8308,8325,7079,7449] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [5735,5736,5988,5987,5994,5995,6912,6916,6919,6921,6000,6710,6734,6754,5746,5747,6968,5749,5752,5755,5760,5761,6914,6924] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [2172,2173,2181,1395,1844,1803,2174,1800,2166,1418,1407,1408,1409,1809,1816,1842,1814,1815] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [687,1020,1022,1327,1328,1311,1313,1314,1315,1316,1021,1540,1295,1027,1013,684,1309,1310] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [4067,3620,3622,3623,4068,4071,2396,2398,2446,2450,3612,3610,3609] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [6720,5962,6721,6363,5948,6370,6398,6713,6354,5949,6712] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [336,341,1149,1156,361,1161,363,1253,1251,333,329,334,3206,323,3175,3184,3207] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [4864,4892,4894,4871,4865,5796,5798,5800,4872,5703,7636,7665,7697,7674] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [6343,6344,6683,6685,6649,6650,6687,6691,6693,6501,6502,6292,6500,6684,6686] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [58,59,60,273,274,157,568,569] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [5015,5017,5018,2648,4970,4973,2612,2615,2646,2993,2596,2598,2599,4966,4967] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [7087,7088,7089,7138,7483,7487,7491,486,487,7489,437,435,436,438] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        