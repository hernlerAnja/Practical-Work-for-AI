
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
        
        load "data/6ZGC.pdb", protein
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
 
        load "data/6ZGC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5169,5547,4616,4794,4749,4750,4775,4596,4598,4599,4600,4612,4621,4613,4614,4618,4615,4734,4735,4740,4741,5137,4635,4636,4717,4719,4727,4731,5134,5130,4595,4590,4591,4592,4593,4623,4624,5546,5558,5559,5644,5647,5648,5649,5650,5640,5641,5642,4837,4838,4966,5110,5111,5096,5115,5141,5574,5575,5519,5791,5793,5162] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [6642,6634,6635,1216,2196,2200,2203,2191,2195,1449,1436,1439,5923,1476,1477,1473,898,6641,5866,5908,5915,6645,6646,6650,6653,6643,6647,6640,2185,2188,2190,1448,1450,5999,6648,1447,1430,1483,2179,1507,5965,5968,5969,913,916,975,1199,893,894,895,869,1201,1213,1211,902,905,906,908,909,5905,5903] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [219,1073,73,128,220,627,72,659,127,129,70,71,106,108,75,631,1072,634,469,607,608,589,103,236,228,232,234,593,1045,695,662,666,1044,1056,1149,1151,105,107,1141,1143,1148,1144,1145] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [2407,2408,2409,2927,2931,2932,3302,2495,2504,2508,2858,2496,2510,2511,2512,2622,3400,3403,3404,3406,3314,2862,2368,2389,2365,2366,2364,2924,2960,2896,2898,2363,2876,2881,2907,2744,3330,3331,3398,2877,2900,2903] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [6838,6839,6841,6833,6864,6865,6834,6836,7809,7810,7366,7368,7371,6967,6968,6969,6866,6965,6961,7330,6951,6952,6953,7344,7781,7881,7793,7886,7088,7879,7880,7206,7889,6835,7396,7399,7403,7404,7432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3360,3372,3373,3064,3062,3037,3066,3060,4498,2261,2262,2720,3094,3097,3116,3117,4449,3092,3089,3090,3093,3091,2719,798,802,828,830,831,1116,1117,1118,4497,801,855,2230,2231,438,439,440,854,452,445,4477,800,832,835,829] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [2158,1486,2159,2151,2152,2153,1390,1406,5989,5962,5963,5990,1410,5952,1407,5699,5697,6679,2145,2146,5416,5712,5715,5402,5405,5406,5409,5413,5477,5395,5393,5394,5401,1456] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [5876,5802,5843,5847,5877,5914,5928,5913,5929,5504,6007,5506,5978,5980,5508,5509,5761,5760,5803,5804] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3635,3697,3699,3701,3595,3634,3425,3260,3261,3262,3264,3265,3728,3561,3504,3505,3650,3594,3592,3518,3510,3516,3517,3565] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [682,684,686,1046,1047,1048,1049,1040,1032,1034,1323,1784,1785,1293,1790,1309,1310,1311,1714,1715,1303,1307,1798] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [3292,3527,3541,3543,3544,3545,4016,4017,4022,4030,3306,3307,3950,3288,3290,3556,3558,3949,2948,2950,3298,3304] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [1056,1057,1150,1033,1034,1292,1017,1151,105,1171,1169,300,1014,1282,1283,1284,1170,99,102,103,236,254,277,252,278,279,280,1287,1285] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [7786,7777,7785,8521,8524,8534,8520,8450,8451,7419,7421,7423,8513,8516,8048,8049,8517,8518,8060,8459,8031,7771,8526] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [5823,5534,5536,5813,5838,5550,5551,5840,5548,5549,5825,5826,6229,5187,5189,5542,5827,6292,6299,6310,6300] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [2158,1486,2159,5986,5989,5963,5990,6674,6679,5996,6677,6678,6680,6689,5402,5395,5397,5371,5393,5394,5401,5999,5998] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [2266,2280,3043,3024,3044,3362,3364,3342,2969,2970,2971,3001,3005,3337,3016] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [3292,3526,3521,3513,3519,3515,2385,2386,2389,2551,2552,2553,2577,3314,3291,3275,3405,3415,3406,3424,3425,3416,3419] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [614,615,617,618,616,639,1085,1087,1089,434,457,613,640,622,470,471] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [8914,8210,8211,8912,8924,8919,7608,7632,7634,7630,7638,7639,7642,8206,8207,8217,7631,8909,8913,8915,8920,8243] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [4937,5590,5628,5589,5591,4927,4954,4968,5117,5118,5120,5121,4967,5143,5142,4935] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [171,172,173,174,176,5,497] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        