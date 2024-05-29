
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
        
        load "data/4ANX.pdb", protein
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
 
        load "data/4ANX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1097,1123,1126,1128,1110,1111,1119,1120,3385,3390,4941,4973,4977,3391,3392,3393,3384,3367,3378,3382,1086,3359,3360,471,472,473,1084,1085,5006,5007,5008,5009,4974,554,1112,1114,501,502,968,3696,4456,4458,4468,4471,4472,4473,4474,1099,4919,4920,4887,3740,4944,4945,5114,4943,3663,986,3697,3698,4482,3379,3741,3742,3413,3383,3692,3693,3694,3695,3380,5112,5083,5065,5084,5077,4971,1151,5081,1158,4883,4908,5098,5101,5104,5097,4881,4884,4966,4968,4972,4967,5035,1149,1150,5057,543,5045,5046,5047,545] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5831,5833,5834,5726,5753,5224,5230,5235,5754,5197,5221,4584,4585,4651,5840,5841,5842,5866,5737,5867,5835,5836,5839,5738,4813,4595,4596,4628,4629,4612,4601,4604,4812,4570,4581,5815,5729,5730,5256,5257,5229,5090,5092,5175,5180,4793,5176,5194,5192,4879,4792,4811,5091,5200] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [975,976,977,978,3660,3682,3648,3649,3655,3656,3659,451,452,453,3984,4438,4477,4478,4479,4480,4482,450,1286,3654,434,435,996,998,1248,1249,3650,3652,3975,4008,4009,4010,3976,1275,1277,3973,4436,4437,4499,4500] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6274,3160,2608,2609,3200,3163,3187,3198,3199,3201,2878,2879,2843,3159,2851,6330,3193,6331,1615,6386,6387,6383,6384,6385,6388,6389,6299,2619,6418,6419,6421,2613,2614,2615] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3110,3114,3121,3107,3108,502,503,3112,3109,3119,4984,5015,5016,6226,6224,5014,4976,6247,3127,3366,3403,3125,3128,3367,3368,3388,4951,4954,4978,3404,6250,3390,3389,4977,3391,3393] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2319,2322,2323,188,2328,194,200,206,207,208,209,216,3853,3854,3855,199,2055,2061,2316,2317,2048,2062,2059,233,2143,217,2042,2314,2315,2318,3819,3827,3828,3856,3860,2310,3523,3524] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5673,5680,6412,5871,5874,5665,5671,6435,6436,6291,6315,6293,6321,6322,6323,6409,4903,6348,6361,6350] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [6343,6345,6346,2274,6340,6341,4871,6342,4843,3475,2285,2286,2287,3775,3800,3803,3804,3822,3824,3793,4860,6335] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5081,5184,5185,5182,5183,4774,5189,5201,4767,5206,4762,5208,968,4458,4463,4471,4472,4474,4492,4493,4772,1127,1128] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [2245,2246,2232,2250,6346,6352,2274,6354,2294,2287,3800,3804,3822,3824,3793,2293,2029,2030,2284,3825] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [967,4732,4735,953,965,966,1176,1196,1194,1098,1127,1134,1095,1193,1170,1171] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5342,5343,5248,5271,5281,5283,6736,6749,6750,5714,5311,5312,5318,5332,5308,5310,5249,5713,5730,5246] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [3345,3349,3350,3352,481,3633,454,457,459,460,415,3639,3645,3630,3632,419,420,445,414,413] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [5610,5609,5619,5620,5825,5624,5805,5921,5924] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1610,1591,1614,2303,1590,1592,2292,2295,2291,1939,1956,1574,2296] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [967,4493,4727,4492,953,957,4694,4771,4753,4754,4740] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [3507,3508,3528,3529,1906,3530,3532,255,259,261,262,293,2090,2091] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [1892,1898,1885,1886,1891,2934,3234,1902,3225,2960,2992,2993,2990,2930,2932,2959,2961] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        