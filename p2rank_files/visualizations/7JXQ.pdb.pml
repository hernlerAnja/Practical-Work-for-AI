
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
        
        load "data/7JXQ.pdb", protein
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
 
        load "data/7JXQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7899,7901,7824,7823,7818,7821,7902,7916,8453,8447,8452,8364,8444,8445,8446,7970,8335,8365,7917,7918,7922,7940,7678,7675,7709,8349,8475,8476,8496,8497,7677,7679,7673,7734,7736,7803,8463,7705,7706,7804,7817,8454,8457,7703,7700,7561,7565,7551,7898,7414,7415,7416,7552,7934,7995,7966,7971,7367,7939,7962,7963,7586,7585,7569,7568,7375,7379,7380,7383,7388,7371,7373,7369,7370,7372,7365] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [3553,3656,3657,3700,3701,2769,2772,2773,3105,2790,3539,3174,3175,2881,2789,3106,3103,2756,3121,3126,3568,3569,3140,3143,3170,3167,2575,2618,2619,2620,2567,2568,3199,2569,2571,3138,2583,2942,3025,3027,3648,3650,3651,3021,3122,3649,2879,2882,2938,2940,3007,3667,3668,3679,3680,2908,2877] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [360,206,207,208,731,344,729,159,157,155,1239,1240,1247,711,712,1159,179,187,1108,361,1248,180,172,173,175,191,171,194,1130,758,761,765,766,1160,790,156,734,1133,1134,1144,357,184] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [5165,4976,4971,4972,5161,5164,5012,5931,5157,5146,5149,5147,5148,5512,5010,5011,4963,5961,5559,5530,5532,5535,5536,4979,5591,5566,5567,5562,5550,5494,5513,6041,6040,5960,6049,6048,5537,5945,4969,4967,4968,4959,4961,4960] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [613,616,618,357,696,697,498,501,1291,1292,377,378,492,496,1271,497,533,465,467,469,470,1242,1270,361,1248,1241,1239,1240,1247,710,711,712,713,1258,598,599,359,360,207,208,344] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [6092,6093,6082,6087,6072,5419,5413,5414,5417,5302,5305,5300,5296,5336,5334,5330,5332,5301,5273,5269,5271,5274,6071,6053,6043,6050,6048,6042,6057,5513,5398,5399,6040,6059,5400,5514,6066,5181,5495,5497,5498,5493,5494,6094,5275,5163,5165,5161,5164,5157,5512] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [3517,3543,3553,2591,3657,2596,2599,2601,2771,2772,2773,3541,3542,2603,2606,2579,2580,2583,2584,2587,2575,2620,3654,3680,3714] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [3033,3035,3038,2455,2457,3032,2736,2741,2658,2664,2666,2659,2661,2663,2665,2750,3113,3124,2476,2477] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [626,624,338,704,64,629,247,249,251,252,254,324,246,45,329] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [5430,5423,5424,5425,5427,4847,5516,5142,5505,5056,5128,5051,5053,5055,5057,5058,4869,5510] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [7829,7831,7828,7251,7253,7546,7454,7455,7457,7460,7462,7532,7459,7461,7909,7272] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [3279,3597,3209,3210,3598,4653,3269,3273,4652,3247,3245,3307,3309,3306,3308,3310,3311,4651,4654,3608] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [5165,4976,5933,5934,4979,4984,4983,4988,4991,5935,6071,6046,6049,5909,5936,5945,5946] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [7379,7380,7569,7568,7392,7387,7383,7388,7416,8313,8349,8350,8338,8339,7395,8475,8450,8451,8453] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [7669,7670,7671,8485,8486,7677,7679,7668,7672,7673,7645,8498,8496,8497,7678,6246,8515,6222,6223,6224,6226,7610,6225,7602,7605,7601,7585,7885,6221] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [870,860,837,899,900,901,902,2251,897,898,866,861,800,801,1199,1188,1189,2335] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [5601,5671,5672,5698,5699,5700,5702,5703,7052,7049,7050,7047,7048,5661,5989,5990,5602,5637,5639] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [2881,2789,2822,2883,2849,3700,3701,3105,3702,2806,2809,2805,2872,2876,3690,2871,2875,3679,2908,2882,3689] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [8005,8006,8393,8394,8065,8078,9445,9446,9447,9448,9530,9450,8075,8071,8102,8103,8104,8105,8106,8107,8043,8041] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [5753,5754,5761,5762,5387,5388,5786,7203,7205,7142,7204,5764,5725,5726,5728,5995,5996] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [3394,4806,4807,4808,2995,2996,3369,4811,3372,3603,3336] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [8158,8190,9600,9602,8165,8399,8168,7791,7792,9605] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [960,586,587,2411,927,953,963,2095,985,2407] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [3916,3913,4059,4060,4338,4340,4144] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        