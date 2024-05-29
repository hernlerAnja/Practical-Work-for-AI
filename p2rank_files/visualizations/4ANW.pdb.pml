
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
        
        load "data/4ANW.pdb", protein
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
 
        load "data/4ANW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4945,5081,4919,4944,4940,4941,4942,4943,4968,4970,4971,5084,1150,1151,1126,1127,1128,1099,1119,1120,1123,1124,1125,1149,5097,5101,5104,4456,4458,4459,5098,4468,4471,4472,4474,4881,4883,4884,3421,4887,5009,544,553,554,1110,1111,1147,1148,5047,545,4966,4967,4973,5005,5006,5007,5008,5035,3663,3662,471,472,473,3697,3698,3379,3693,3694,3696,3740,3742,3383,3380,3382,968,4473,984,985,986,1097,4482,1086,1082,1084,1085,1080,1081,1087,1088,1112,3385,3356,3390,3392,3393,3359,1114,4972,5065,5048,5045,5046,5041] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5833,5831,5839,5834,5842,5753,5754,5197,4813,4585,4793,4651,4612,4629,4792,5176,5090,5092,5094,5175,5180,5194,4879,5257,4595,4589,5258,4586,4588,5866,5867,4596,5726,5234,5235,5221,5737] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1254,1275,1286,1248,1277,3976,3652,3982,3975,3978,3654,3974,3977,996,434,435,3650,998,4482,4483,4436,4437,4477,4478,4438,975,976,977,978,4008,4009,4010,986,450,452,453,974,3684,4479,3648,3649,3655,3656,3984,4046] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3200,3201,6386,2608,2613,2614,2680,6299,6421,3187,2609,2619,6274,3193,6330,1615,6387,2623,2853,2641,3211,3212,2878,2879,2679,2875,3158,3159,3163,2843,2851,3198,3199,3197,1606,6385] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5665,5680,5673,6411,6412,5846,5868,5870,5871,5874,6291,6293,6323,6322,6409,6410,6348,6349,6350,6361,4901,4903,4867,4870,6315,6436,6437,6435,5671] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2287,3793,3800,3822,3803,2029,2030,3824,2232,2239,2245,3797,5138,3475,6335,2273,2274,2285,2286,2284,4856,4858,4859,4860,6342,3775,6340,6341,6327,6346,6366,2246,2249,4843,6354] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3108,3109,3110,3121,502,3125,3127,3335,3403,3404,3367,503,3366,3368,3112,3119,6250,4984,6224,4976,4978,6227,6226,5016] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5319,5320,5311,5312,5325,5326,5327,5318,6736,6708,5339,5340,5341,5342,5343,5329,5328,6743,5713,5714,6745,5246,5248,5281,5282,5283,5730,5249] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2314,2315,2318,2319,2322,3854,2323,199,216,235,217,206,207,208,209,2143,240,241,3853,3855,188,2328,194,200,2317,2062,233,2055,2059,2310,3524,3523] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [5184,4461,4463,4492,5185,4471,4472,4474,4493,4458,4465,4772,4777,4762,4767,4771,1128,968,5189,4757,5206,5208] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4732,1171,1176,1197,1127,1172,1098,1099,1170,4728,4730,4740,948,967,953,1193,1194,1095] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [459,480,481,1033,416,418,3349,3352,3639,3645,3630,3632,3633,445,419,414,415,457] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1003,791,792,1009,1012,1013,1015,789,790,794,795,1027,417,1016,892,924,1242,922,909,410,409] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1615,2256,1610,2296,1938,1956,2292,2295,1592,1937,1939,2291,2303,1591] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        