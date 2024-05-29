
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
        
        load "data/2WTV.pdb", protein
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
 
        load "data/2WTV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4461,4462,4463,4465,4467,4468,4469,4522,4471,4521,5108,5149,4649,5575,5619,5620,4474,4481,4648,5476,5621,5625,5109,5110,5112,5592,5583,4632,5054,4473,4480,4913,5504,5571,5572,5503,5505,5080,5101,5104,5072,5074,5085] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [3448,2309,2310,2311,2361,2362,2363,2489,2490,3449,3450,2304,2306,2303,2945,2948,3334,2956,2984,3305,2312,2314,2315,2321,2757,2898,3333,3400,2921,2916,2473,2924,2307,2918,3421,3412,3317,3404] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [7649,7662,7744,7291,7293,7311,7292,7294,7677,7678,7095,7241,7254,7259,7262,6652,7256,7815,7816,7650,6832,7792,7794,6706,7793,6705,7236,6816,6648,6654,6655,6657,6660,6704,6649,6651,7798,7748,7765,7283] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [310,311,1276,1277,1275,1248,309,1231,130,185,186,187,294,719,127,132,133,134,136,1281,131,128,766,767,774,775,776,777,1132,1160,1161,1144,578,1227,794,1308,737,739,745,742,731,724] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [5593,5594,5595,5596,5448,5464,5465,5716,5717,5718,5636,5681,5719,5722,5727,5709,5599,5601,5488,5618,5625,5478,5632,5633,4492,5686,5445,5428,5429] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [3277,3293,3294,3307,3461,3462,3465,3556,3510,3515,2333,3427,3447,3422,3423,3424,3425,3428,3545,3546,3548] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [605,601,272,289,228,267,268,270,256,603,604,607,711,602,38,39,41,229,271,273,269] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [4339,3109,3144,4348,4349,6510,4340,5532,3107,3356,6511,3085,3361,5241,5243,3078,3081,5527,5531,4338,5272,5281,5283,5273,5274,5246,5245,6509,6520,6519] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [6789,6775,6562,6747,6748,7121,7228,6811,6790,6792,6794,7119,7117,7118,7122,6559,6560] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [55,4457,675,196,317,56,99,100,98,101,4442,4445,198,4458,4441,4439,4440] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [5446,5448,5462,5465,5717,5722,5764,5747,5725,5794,5427,5429,5877,5748,5770,5771,5442,5449,5426,5428,5914,5749] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [1236,1237,465,468,501,430,466,467,469,1257,492,493,1248,1247,1101,1087,1079,1066,1071,1145,1226,1092,1093,1094] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [3706,3256,3257,3258,3577,3743,3576,3586,3587,3554,3546,3551,3593,3275,3276,3277,3293,3578,3271,3278,3623] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [1248,1249,1250,1251,1252,1255,1247,1356,1360,1119,1121,1393,1394,1358,1101,1102,1103,1084,1085,1134,1144] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [684,682,683,367,435,436,438,440,447,406,439,404,408,443,343,344,345,374,411,476,474,475,641,642,644,621,623] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [2780,2781,2782,2200,2217,2218,2468,2784,2786,2449,2451,2783,2432,2405] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [4608,4610,4627,4938,4939,4940,4942,4591,4563,4605,4937,4376,4377,4564] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [6867,7201,7158,7161,6928,6930,6889,6991,6993,7200,7220,6992,7138,7140,6958,6960,6961,6962,6965] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [5436,5437,5438,5423,4839,4863,5410,5441,4830,4831,5580,5591,5601,4807,5587,5589,4803,4804,4805,4806] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [7863,7872,7651,7653,7806,7809,7662,7865,7866,7767,7791,7798,7766,7792,7637,7620,7768,7765,7901] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [3265,3266,3267,3270,2680,2643,2644,2645,2646,2647,2648,3409,2669,2671,3420,3239,3252] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [4776,4814,5018,5038,4956,4964,5019,4774,4777,4778,4781,4782,4783,4744,4785,4812,4958,4963,4979,4976,4977,4748] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [2618,2619,2623,2653,2654,2655,2800,2802,2624,2823,2585,2615,2617,2524,2626,2863,2821,2808,2862] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [8404,8405,8416,3661,3662,3642,3643,8412,8407,8411,3609,3611,3612] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        