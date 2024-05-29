
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
        
        load "data/5J87.pdb", protein
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
 
        load "data/5J87.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6059,6060,6061,6207,6067,6053,6058,6043,6062,6066,6080,2328,2329,2330,6081,6082,6083,8198,6022,6023,6024,6208,8188,8335,8129,8136,8137,8139,7264,7275,7311,7312,7313,7315,7314,8150,8151,8153,8336,8145,8130,8359,8361,8356,6142,6144,6173,6175,6177,5967,6048,6050,6139,6174,8367,8368,8369,7318,6115,6117,6069,2375,2327,2384,2537,6070,2542,8189,2347,2348,2349,2353,7285,7282] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1170,1171,1172,1088,1089,660,664,667,675,160,162,280,285,286,287,288,161,641,265,108,266,658,116,117,122,105,106,109,623,1063,1075,1060,1074,1061,693,694,689,685,686,1194,1167,1168,1176,527,1163,1165,1166,1169,1173,508,510,646,526,528,642,142,1190,1191,1192,1193,1196,1197,1200,1231,1273,1064,1275,1038,1035,138,140,125,129,132,134] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [4681,4682,5557,5560,5561,5563,5585,5555,4680,5036,5556,5559,5564,5567,5574,4902,4921,5482,5562,5468,5469,5481,5483,5061,5062,5058,5035,4665,5052,4520,4521,4524,4547,4559,4560,4561,4536,4551,5088,5458,5454,4504,4502,4505,4508,4507,5054,5056,5080,5087,5083,5583,5587,5588,5591,5429,5432,5666,4531,5664,4528,4529,4533,4539,4541,5622,4537,5459,5571,5573,4515,4516,4510,4511] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [2337,3315,3316,3389,3388,2884,2888,2891,2363,3395,3397,2351,2352,2354,3396,3394,2358,2361,3425,3496,3498,3291,3288,3292,3302,3297,3298,3303,3500,3263,3266,2918,3317,2910,2913,2909,2367,2369,2371,2510,2390,2391,2509,2512,3417,2495,2865,2334,2341,2338,2345,2346,2350,2343,2335] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [6011,6244,6245,5190,8303,8304,8305,6025,5990,6232,6233,6235,6243,6236,8310,8269,8270,8271,8272,8266,8290,8293,8288,8289,8197,8198,6002,6022,6023,6024,8188,8335,5159,5160,5183,5186,8211,8190,8201,8205,8208,8210,8267,6237,8186,8157,8181,8170,8171,8151,8336,8191,8194,8192] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [7208,6630,6632,6633,6634,6636,7189,7197,7216,6644,6650,6659,6649,6652,6656,6687,6688,6689,6635,6793,7182,6808,6810,6806,6661,6667,6669,7683,7689,7690,7691,7596,7688,7611,7610,7186,7582,7163] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [5459,5704,5709,5728,5734,5710,6098,5700,5702,5719,5104,5455,5457,5102,5458,5749,6076,6085,5741,6091,6095,6096,6097,6099,6103,6104,6027,6030,6040,5747,5748,6031,6032,6033,5764,5763,5977,6019,6020,5103,6016,2806,2810,2824,2802,2804,2805,2258,2259,2260,2301,6088,6090,2303,2842,2843,2282] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [3472,3545,3546,2348,2353,2552,2555,8189,2536,2537,6070,2355,2360,2361,2362,3544,3465,3466,3469,3470,3471,2554,8150,8151,8144,8146,8154,8185,8158] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [2181,2176,2185,2186,2187,326,1236,1238,1239,2197,2206,2207,371,2198,346,345,2179,2184,2796,2797,324] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [868,833,870,830,832,834,836,837,863,859,1123,1124,1125,1116,728,729,776,777,779,781,801] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [1268,1278,1280,1281,1283,1330,1441,1460,1461,1440,1459,1026,1027,1457,1203,1274,1275,1198,1199,1200,1201,1023] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [1354,1637,1638,1325,1353,1370,1065,1369,1064,1063,709,710,1061,1583,747,1636] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [3351,3352,2951,2952,2953,3098,3344,3353,3120,3060,3087,2908,3096,3027,3061,3062,3065,3058,3004,3029,3005] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [7689,7690,7691,7596,7597,7687,7688,7557,7560,7719,7792,7794,7585,7586,7711,7709,7710,6657,6659,6656,6667,6669,7750] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [2866,3401,2752,3419,3405,3407,2511,2850,2865,3389,3397,3390,3398] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [5122,5489,5519,5077,5123,5517,5228,5264,5179,5181,5231] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [7050,7148,7048,7049,7695,7713,6959,7714,7164,7030,7683,7684,7685,7692,7702,7700] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [5722,5724,5671,5853,5854,5855,5689,5835,5665,5666,5417,5421,5420,5592,5590,5591,5598,5659,5669,5674] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [7787,7797,7802,7793,7794,7718,7545,7860,7861,7850,7852,7854,7981,7983,7548,7982] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [3254,3255,3685,3686,3682,3684,3508,3424,3505,3499,3426,3251,3428,3430,3432] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [5495,5496,5498,5044,5505,5049,5499,5041,5043,5045,4933,5542,4874,4876,5541] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [8160,7231,7232,7583,8105,7891,7585,7587,7892,8155,8158,8159,8168,8148,8154] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [2879,2871,2873,2874,3329,3330,3332,3333,3338,3339,3340,3346,3376,2711] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [650,655,1101,1104,1111,1112,1118,1119,1121,1117,651,649,1148,1132] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [3044,3055,3045,4397,4398,4116,3078,3081,4363,3835,3836,3046,4396,4090,4094] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [5209,5210,5247,5211,5212,5222,6273,6255,6256,6509,6241] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        