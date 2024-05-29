
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
        
        load "data/7LTX.pdb", protein
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
 
        load "data/7LTX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5074,5078,5406,4928,4929,5843,5873,5478,5479,5474,4927,4886,4883,9064,4876,4877,5503,5960,5425,5872,5952,5953,5470,5471,5447,5444,5448,5064,5065,5442,4878,4880,5424,4892,4893,4896,4901,5082,4888,4889,5844,5857,5959,5961] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [782,155,156,157,159,721,162,165,168,4343,1152,726,750,753,1151,1122,1136,1232,758,1123,757,360,208,361,1240,206,207,344,709,703,704,1239,1231,357,171,163,167] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [3492,3596,3478,3113,3507,3508,3105,3106,3109,3065,3082,3077,2511,2513,2515,2522,2519,2520,2521,2512,3114,3135,3138,3588,2713,3595,2716,2717,2699,3041,2700,3060,3042,2966,2564,2709,2563] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [8308,7781,7421,8228,8229,8309,7827,7830,7834,7419,7420,7835,7283,7284,7430,7236,7234,7859,7232,7233,7803,7826,7798,7804,7786,8213,8199,7438,8315,8316,8317,7285,7242,7244,7245,7248,7249] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [3042,3044,2966,2826,3045,2715,3594,3595,2717,3060,3061,2540,2541,2542,2543,2544,2545,2546,2734,2733,2793,2766,2821,2825,2827,2749,2750,2823,2849,2853,2854,2857,3592,2881,2882,3600,3604,3605,3606,3607,3589,3590,3591,3597,2967,2951,2960,2946,2952,2961,2964,3628,2819,2851,3627,2850,2852,3609,3612,3615,3587,2947] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [5215,5216,5217,5980,5213,5214,5218,5247,4907,5955,5957,5959,5975,5976,5956,5965,5974,4904,4905,5080,5099,4906,4908,5082,5114,5098,5246,5245,5325,5329,5331,5960,5425,5952,5954,5311,5970,5972,5078,5407,5409,5410,5406,5424,5988,5190,5191,5188,5186,5192,5131] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [7765,7454,7455,7262,7438,8316,7261,7434,7436,7570,7571,7573,7603,7572,8310,8312,8313,8321,8330,8311,7542,7544,7574,7546,7547,7548,7682,7685,7687,7688,7763,7780,7673,8308,7781,7430,7681,8328,7667,7602,8336,7267,7540,8348,8349,7265,7266,7263,7264,7487] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [492,493,498,501,525,526,604,605,608,610,357,377,378,688,686,470,465,467,1238,1239,1231,1234,1235,1244,1233,704,596,359,1236,184,185,187,189,469,471,496,494,495] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [5059,4967,4968,4970,4972,4973,4975,5045,5050,5335,5336,5337,5339,5340,5417,4766,4974,4786] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [7693,7695,7691,7692,7415,7773,7406,7326,7328,7329,7331,7401,7324,7327,7122] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [4354,774,1125,1127,1311,1533,1123,4323,4286,4287,1299,1298,1291,1296,1297,1312,1272,1277,1283,1590,1593,1585,1582,1571,1575,1578,1579,1574,773,810,1583,1287,1637] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [5495,5844,5531,9075,6300,6303,6304,6306,6314,5846,5848,6032,6254,9044,6019,6020,6018,6033] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [246,338,247,249,251,252,253,254,696,615,616,618,64,45,43,65,324,329] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [3704,3705,3706,3708,3707,4282,4265,3738,3740,5158,5137,4268,5154,5149,3701,3696,3700,3699,3729,3759,3739] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [2694,2974,2680,2685,2972,3052,2399,2420,2421,2603,2605,2608,2610,2401,2607] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [7966,7967,7968,7939,7929,7935,7970,7971,7869,7870,8257,8258,7906,7908,7940,9285,9287] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [6917,5902,7000,5901,5614,5615,5912,6932,6916,5610,5611,5612,5613,5579,5573,5513,5550,5514,5583,5574] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [6019,6020,6018,6335,6342,6333,9007,6307,6358,9008,9010,9044,6016,6017,6311,6012,6033,9041,9075,6303,6306,6314] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [919,945,955,1186,578,579,952,977,2350,2352,2355] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [792,829,831,793,1180,1181,889,890,892,894,862,852,2196,2198,2200,2195,863,891,893] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [3390,4370,3352,149,144,145,3354,3355,3328,3358,2918,2924,2925,3331,3330,3332,3333] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [7438,8315,8317,7252,7257,7261,7437,8177,8213,8203,7250,7285,7242,7244,7245,7248,7249,8214,8314,7256,7263] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3148,3149,3185,3187,3208,3209,3537,4645,3245,3246,3247,3248,3249,3250,3536,4565,4560,4563] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [4848,4940,5090,4939,4920,4873,4922,7616,8119,8120,8118,4921,8115,8113,8114] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [3301,3308,3275,2934,2935,3333,4716,3311,4720] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [8054,7994,7996,7995,9441,8032,8022,9121,9124,9125] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        