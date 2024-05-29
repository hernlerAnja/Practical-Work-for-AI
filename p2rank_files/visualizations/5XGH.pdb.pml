
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
        
        load "data/5XGH.pdb", protein
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
 
        load "data/5XGH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2655,2659,2660,2670,8577,2661,2662,2663,8578,2667,2672,2673,2680,3941,4208,4207,4505,4506,2652,2653,2654,3379,2635,2700,3380,4493,4494,4495,7804,4481,4492,4218,8594,8595,4223,4227,4231,4245,4251,8557,8559,8561,8564,2875,2674,4250,4252,2871,3973,4016,4017,4018,4204,4205,4212,8926,8927,8928,8925,8562,4014,4229,4228,8586,8572,8579,8583,8584,8585,8551,8570,3946,3948,3967,8321,8322,3956,3960,3963,3964,3965,3968,3971,8582,3949,3952,7802,7798,7799,7800,7806,3347,3348,8366,8360,3388,3349,3346,3361,7793,3386,8320,8319,8318,8343,8344,8349,8350,8356,8354,3940,4457,3942] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [4689,4688,4690,4974,5008,6277,6428,6421,6240,6242,6247,6241,1340,1341,6278,6279,4695,4700,4728,5006,5056,5057,5005,6220,6221,6218,6250,6251,6444,6441,6453,5007,5009,5010,5011,5753,5762,5763,5764,5765,6438,6437,6521] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [3321,3322,3323,3324,3341,10204,3338,10202,10200,7170,7172,7821,7201,7196,7197,7198,9235,9237,10262,10230,10226,10227,7167,7194,3328,7759,3319,3320,9309,9301,9298,9300,3307,3318,7760,7171,7173,9270,9310,10229,7205,7207] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [7110,7104,7105,7108,7109,7111,7100,7103,5905,5893,5894,6433,6435,6149,6150,6186,6512,6513,6129,6130,7102,6517,6524,6530,5959,6528,5958,6533,6561,6559,6578,7020,7021,6212,6214] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [7744,7745,7747,3305,3304,3293,3294,3295,3296,5115,5113,5114,5116,5129,5130,5131,3280,3286,3311,3373,3389,3390,3393,3398,3110,3113,7737,3387,7735,7736,3309,3308,7786,7788,3332,3372,7785,7729,7783,5105,5109,5120,5101,5107] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [1035,1051,3177,3179,4833,3140,3246,3164,3167,3170,3139,3218,4810,4822,4824,3171,3405,3409,3133,3258,3403,3404,3407,3134,3143,3408,3411,5161,5162,3397,3398,5153,1034,1036,4834,4835,5158,5149,5128,3414] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [3436,3439,3452,5120,5121,9436,9401,9402,10107,10108,10109,10110,10111,9400,9425,9427,9428,9463,9433,9434,9375,9367,9378,9373,5114,5116,5125,5131,3423,3280,3286,3288,3463,3424,3471,9369,3293,3294,3295,3296,3300,10148,9340] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [6311,6313,6314,6352,6274,6303,6307,6308,4667,1356,4668,4699,4697,4674,4676,6279,6304,6305,6306,6405,2004,1357,2002,6276,6277,2027,2028,2063,2060,2062,2029,2030,2036,2037,2040,2041,1999,6396,6397,6341,6342] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [6493,6464,5073,5074,5351,940,946,948,561,6470,6473,5098,5102,5069,5094,5383,5381,5382,5407,5408,5371,5347,5046] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [9370,3092,3278,3279,3290,3291,3294,3295,3296,3300,3101,2500,2492,3470,10148,3463,3471,3307,10176,9338,10206,10207,9301,10147,3091,3321,10110,10111] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [5308,2199,2200,2206,2219,2220,5735,5736,5796,5795,2202,2203,2204,2205,2201,1880,1883,1307,4967,1306,2213,5769,1316,1317,1318,5265,5267,5268,5271,5307,5309,4966] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [7873,7243,7244,7245,7874,8278,8300,8303,7189,7228,7200,7811,7812,7813,8331,8294,8299,7191,7190,7809,7872] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [7245,8330,10298,8337,8340,9035,8304,8305,8307,9001,10299,10301,10268,8327,10296,10297,10331,10332,10335,10307,10308,10310,9046,10336,10337,9034,10329,10366] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [631,634,656,657,658,659,690,691,694,5361,928,896,897,5325,908,929,930,931,5331,5359,5360,5692,5693,5696,5688,5320,5326,5322] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [2602,2603,3354,8366,8360,8361,3348,8551,8568,8570,8371,3379,2635,2700,3362,3364,3380,2697,2698,2670,2669,3358,3346,3361,8354] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [1875,5786,5787,6069,1891,1892,5765,6079,2009,2011,2013,6068,2000,1341,2040,1998,2005,2006] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [8720,8722,3873,3874,3875,8483,8484,8485,8638,8636,8637,8639,8713,8635,8701,8710,8721,4006,3996,8633,8634] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [8712,8726,8889,8890,8892,8891,8698,8705,8899,8835,8894,8897,8743,8754,8755] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [7170,7172,7820,7821,7190,3324,7813,7167,7196,7197,7200,7199,7759,7794] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [7741,6178,6193,6194,6195,7747,5086,5088,5115,6472,6177,6479,6481,5106,5107,5078,6176] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [4858,4524,4526,4527,4528,4814,4825,2941,2942,3196,4812,4537,4839,4811,4823,3174,4805,4845,4848,4807] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [6519,6520,6521,6522,5762,5784,5786,6104,6106,5742,6079,6078,6077,6545,6080,6526,5754,5756] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [857,861,862,863,572,573,575,885,888,1004,971,975] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [8433,8518,8519,8287,8603,8620,8454,3927] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [5054,6222,7725,5051,4761,6192,6193,5080] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [594,574,897,925,892,895,711,560,927,595,918,919,921] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [64,5584,5586,5616,5619,62,63,58,61,5424,52,5413,5447,5675,5481,5491] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        