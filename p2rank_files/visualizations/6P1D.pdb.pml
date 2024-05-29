
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
        
        load "data/6P1D.pdb", protein
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
 
        load "data/6P1D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8065,8069,8464,8463,8543,8544,8549,8550,8552,8545,8551,8546,8553,8572,7669,7671,7673,8574,8575,8000,7782,8597,7779,8015,7655,8014,7996,7997,7998,8035,8016,7656,7907,7908,7916,7917,7920,7922,7923,8001,8434,8437,8412,8448,7491,7499,8569,8070,8561,8563,7902,8562,7838,7839,8556,7837,7805,7479,7480,7468,7474,7475,7476,7483,7484,7487,8094,1995,7471,7518,7520,7469,7519,7472,8038,8062,8033,8046,8053,8061,8091] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [3503,3517,3518,3613,3618,3619,3621,2548,2549,2552,2553,2543,2544,3138,3139,3163,3134,2742,2568,3620,3107,3131,3115,3532,3533,2540,2537,2538,2738,2740,3612,3085,2587,2588,2589,2725,3108,3104,3084,3113,3940,3155,3718,3504,3506,3507,3508,3687,6906,6907,3191,3670,2570,3481,2556,2560,3719,3698,3702,3684,3674,3989,3990,3991,3992,3993,4000,3982,3704,3703] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [198,200,351,199,695,696,345,349,677,582,587,1223,1241,596,600,602,1243,588,680,517,518,603,459,462,335,1143,1144,715,720,336,713,151,147,149,152,1224,1225,1114,1128,1232,148,154,155,156,157,160,159,164,163,353,1231,1226,1227,1236,1252,1254,1248,1274,1277,1275,742,745,749,774,718,719,750] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [6017,6047,6127,5642,5666,5637,5641,5039,5040,6135,5051,5052,5055,5244,5245,5047,5048,5049,6031,6133,6134,5090,5091,5092,5243,5043,5241,5041,6046,6126,5588,5611,5634,5610,5593,5587,5228,5607,6018,6020,5995,6032,5056,5059,5063,5071,6021,6198] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [6146,6126,6144,5474,5588,5243,5237,5241,5410,5382,5409,5570,5571,5572,5261,5573,5351,6128,6129,6134,6139,6156,6157,5245,6158,6177,6180,5488,5489,5492,5494,5495,5569,5385,5480,5586,5587,5227,5479] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [9060,9080,9081,9082,8931,9075,8932,8933,8937,8939,8960,8859,4246,4268,4244,4267,4309,4310,9053,9056,9016,4115,4117,8943,8946,4271,4272,8962,4132,4134,4135] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [608,610,330,688,238,239,240,244,245,246,241,242,243,96,607,56,57,35,37,38,321,316] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [1760,1761,1762,6787,1619,1755,1642,1611,1612,1617,1640,1623,1626,1627,1739,1740,1749,1697,1598,1539,1785,6781,6782,6783,6655,6786,6657,6820,6824,6825,1732,1735,6762] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [2705,2627,2628,2630,2633,2635,2446,2629,2632,2425,2426,2427,2634,2710,2719,2997,3077,2999,2424,2445,2485] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [7141,7144,6075,6076,6086,5677,5714,5715,5712,5736,5774,5773,5775,5776,5777,5778,7118,7119,7125,5676,7209,7210] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [554,994,7457,561,964,990,989,991,1026,966,967,968,2380,560,2022,2021,7456,7461] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [8103,8104,8105,8201,8203,8205,8492,8493,8502,9530,9531,9532,9534,8202,8204,8206,8164,8170,8141,8143] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [5502,5499,5500,5580,4927,5222,5137,5138,5131,5133,5135,5136,4929,5208] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [2546,2543,2551,2581,5881,6935,5857,5858,5856,6934,5861,5860,2530,2537,2542,2532,2533,2582,6932,6905] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [7932,7930,7926,7927,7928,7933,7357,7355,7377,7560,7561,7562,7563,7564,7565,7566,7650,8008,7636] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [885,2212,2215,2217,881,882,883,886,1172,1173,1183,784,785,819,821,823,2296,2297,844] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [1877,1878,1912,1913,1845,1870,4058,4085,4087,1846,1849,1881,1882,1884,4016,4032,4007,4030,4124,4125,4122,4123,4151,4152,4086] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [1129,1128,1232,160,159,164,179,181,163,353,1230,1117,1118,167,171,1092,200] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [5881,6935,5857,5858,5856,2551,2581,5886,5883,2533,5460,5462,7301,2532,5446,5888,2582] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [911,2376,571,944,969,937,947,2377,938,2055,2056,2078] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [1733,1736,1718,6759,6760,6731,1719,1723,6729,6798,6951,6949,6950,6952,6768] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [2960,3358,4783,4784,3326,3298,3299,3333,2959,3334,3336,3567,4787] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [3172,3174,4640,3125,3127,3212,3211,4711,4712,4676,3562,4642,4643,4646] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [3040,3045,5421,4913,3038,2508,2509,5435,5438,2464,2459,5935,2751,3046] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [4010,4011,3872,4094,4138,4133,4295,4297,3903,3701,3724,3869,4144,4299] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [2969,2978,3000,2980,2981,2929,2939,2924,2934,3549,3093,3095,3111,3094,3598,4771,4770,4767,4768,4769,2972,2973,3091,2999] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [6528,6527,6656,6617,6618,6386,6389,6812,6815,6661,6420] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        