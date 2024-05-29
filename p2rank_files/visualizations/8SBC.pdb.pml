
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
        
        load "data/8SBC.pdb", protein
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
 
        load "data/8SBC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4356,4687,4347,4350,4318,4319,4320,5796,4358,5824,5825,5828,5819,5989,5990,4325,5829,4327,4322,4323,5853,4329,5365,5374,5375,4640,5376,4603,4604,6005,6006,5996,4639,5369,6009,4686,6012,4641,4635,4637,4636,4638] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [5727,5728,5707,5708,6078,6080,6081,6563,6562,6100,6102,6099,6128,6085,6092,6096,6098,6097,6105,5512,6147,5822,5789,5790,5792,6657,6659,6642,6643,6646,6647,6002,6638,6003,6622,6640,6111,6537,6649,6641,6103,5497,5498,5537,5499,6014] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.463,0.902]
select surf_pocket3, protein and id [18,29,34,44,19,22,5001,6036,5011,5013,5037,5038,6061,5010,5012,12,15,986,988,20,749,599,601,13,4676,964,4703,4704,969,6041,6044,4735,6045,6048,4722,4723,4728,4732,4724,6034,6038,4699,6032,5094,5735,5068,5069] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.314,0.702]
select surf_pocket4, protein and id [7981,7948,3891,3868,3869,3870,8295,3892,3671,3844,3852,3645,3673,3858,3842,3845,3848,2448,2451,3871,3875,3877,3879,2455,7952,7964,2468,2473,2462,2471,2659,2660,7968,3646,7980,7963,7961,7962,7950,7945,3626,3629,8296,2432,2436,4127,4128,4125,4126] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.373,0.361,0.902]
select surf_pocket5, protein and id [5773,7231,7232,4415,4745,7226,7229,7230,4744,4760,3094,3106,3109,4761,2920,4413,3199,4759,7256,3188,7214,7220,7222,3185,3186,3110,3173,3174,3191,3194,7264,3112,3116,3115,7269,7265,7266] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.333,0.278,0.702]
select surf_pocket6, protein and id [8723,3253,3240,3265,8720,4750,4751,4753,3237,3095,3096,3097,3081,3225,3094,4761,3087,3089,4744,8721,8748,8757,8754,8784,8722,8688,8690,8691,8729,8694,8696,8698,8699,8663,8665,9390,9391,9386,9388,3101,8749,9363,9366] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.486,0.361,0.902]
select surf_pocket7, protein and id [4463,4464,1090,1092,1073,1074,1075,1076,1091,4465,4458,2984,3198,3215,3204,3208,3209,4784,4788,4791,4792,3216,3051,3059,3212,2936,2943,2941,2946,3046,3047,3023,2971,2974,3201,3205,3206,4431,4440,2947,2950,4448,1099,4782,4779] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.424,0.278,0.702]
select surf_pocket8, protein and id [3147,3150,3151,3159,3162,3163,3164,2488,7777,3181,3165,3180,2445,2446,2426,2427,7937,7956,2457,2458,7954,3148,3149,7765,7766,7772,7771] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.600,0.361,0.902]
select surf_pocket9, protein and id [3119,8627,8629,8630,9484,9486,8595,8598,8599,9508,9510,9480,9482,9483,8639,3120,3121,8637,8638,6726,3139,3142,9518,9543,8566,3108,3113,3122,3123,3124,3125,3129,9487,7244,7245] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.514,0.278,0.702]
select surf_pocket10, protein and id [8765,30,8763,8772,37,38,72,74,75,77,80,81,9299,591,101,100,99,9326,5069,5102,5103,8774,8775] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.718,0.361,0.902]
select surf_pocket11, protein and id [2268,3253,3265,3095,3096,3097,3098,2899,3079,3091,3092,3072,2908,3271,3272,2284,9390,9391,9388,9427,9428,8691,9463,9464,3101,2900,2277] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.600,0.278,0.702]
select surf_pocket12, protein and id [9487,9463,3101,3108,3112,3113,3122,3129,8690,8691,8663,9427,9428,3119,8630,9486,9456,3098,2899,3092] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.831,0.361,0.902]
select surf_pocket13, protein and id [5876,5878,5913,5914,5915,5916,5953,1874,1877,1379,1380,1381,1907,1447,1875,5877,5885,5992,1887,1888,1850,1883,1884,5924,5968,5973] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.690,0.278,0.702]
select surf_pocket14, protein and id [3147,3150,3162,3181,7274,7276,3187,3180,2446,2426,7275,7294,3148,3149,7765,7766] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.855]
select surf_pocket15, protein and id [1533,1951,1953,1534,1655,1657,1658,1694,1761,1636,1654,1814,1637,1969,1957,1958] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.620]
select surf_pocket16, protein and id [2955,2958,3319,3017,3021,2710,2687,2198,2688,2203,3327,3330,3381,3355] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.741]
select surf_pocket17, protein and id [4171,2726,3003,4158,4159,4160,4161,2724,4162,4444,4482,4469,4475,4478,4435,4453,4455,2981,4446,4437,4441,4487,4488] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.533]
select surf_pocket18, protein and id [4987,969,730,731,698,699,4952,970,971,937,948,674,696,697,4955,945,4989,4991,4990] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.627]
select surf_pocket19, protein and id [5377,1726,1740,1743,5650,1858,1856,1365,5399,5398,5651] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.443]
select surf_pocket20, protein and id [5348,5347,1734,5408,4939,2016,4597,1330,1341,1342,5381,1340,4936,4938,4937] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.514]
select surf_pocket21, protein and id [6087,6088,6089,6090,5374,5396,5398,5661,5662,5682,5671,5399,5656,5657,5658,5659,5660,5366] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.353]
select surf_pocket22, protein and id [7389,7391,7388,7861,7864,7314,7339,7340,7713,7712,7694,3622,7865,7863,7352,7353,7689,7692,7683,7400,7344,7342] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.400]
select surf_pocket23, protein and id [1749,1751,1753,1998,2001,1984,2002,2003,2006,1985,1329,1339,2015,2022,2000,1773,1774,1301,1304,1689] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.294,0.278]
select surf_pocket24, protein and id [5017,5018,54,5046,5019,5022,57,109,5276,42,5232,5284,5286,5020,5053,5051] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.435,0.361]
select surf_pocket25, protein and id [4357,4391,7210,4710,4684,4719,5800,5770,5771] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.384,0.278]
select surf_pocket26, protein and id [8213,8265,8266,8268,8269,8093,8096,8110,8274,8126,8127,8128,8137,8139,8215,8203,8204,8079,8082,8086,8089,8272] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.549,0.361]
select surf_pocket27, protein and id [6723,6726,6697,6701,6721,6722,3140,3141,6700,7302,7275,7290,7291,7294,7301,7244,7251,7268,3125] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.475,0.278]
select surf_pocket28, protein and id [892,928,893,1043,1042,1044,897,900,901,902,903,2083,1011,1012,1015,923,924,925,1004,929,615,899] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.667,0.361]
select surf_pocket29, protein and id [7702,3629,3847,3848,7280,4129,3596,3601,3602,3603,3611,3606,3605,4091] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.561,0.278]
select surf_pocket30, protein and id [2707,2713,2692,3900,3902,3903,3926,3925,3927,2152,2155,3443,3400,3401,3402] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.780,0.361]
select surf_pocket31, protein and id [5562,5004,5699,5700,5583,5415,5584] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.651,0.278]
select surf_pocket32, protein and id [7828,7751,7664,7665,7666,8397,7721,7687,9618,7717,7718,9587,7748,9588] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.894,0.361]
select surf_pocket33, protein and id [4136,3836,3842,3848,3877,3879,3882,3880,4125,4131,4148] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.659,0.702,0.278]
select surf_pocket34, protein and id [5773,7232,4718,4745,7226,7230,4736,6047,5771] 
set surface_color,  pcol34, surf_pocket34 
   
        
        deselect
        
        orient
        