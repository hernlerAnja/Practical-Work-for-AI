
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
        
        load "data/5G55.pdb", protein
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
 
        load "data/5G55.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4966,4967,3426,4990,3427,3430,468,3709,3710,467,1087,1085,1115,1116,1072,1073,1074,1111,1112,1113,1098,3450,5024,5025,3414,4987,3439,3440,3407,974,3404,4955,4991,4992,5128,4988,4989,5130,5131,5123,5017,5018,5019,5015,5016,5112,1139,1137,1138,1147,1146,3789,3744,3745,4506,5161,3740,3741,3743,3742,4519,4520,4521,4505,956,5145,5231,4930,4928,5151,5014,5082,538,540,5092,5094,5013,5021,5095,5088,5093,5023,5055,496,5054,5056,1102,1100,1099,482,497,481,483] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5800,5801,5283,5268,4698,5887,5889,5878,5881,5888,5773,4631,4632,4642,4643,4676,4859,4860,5880,5269,5137,5138,5139,5142,5140,5222,5223,5244,5227,4840,5239,5241,4926,4839,4858,5776,5305,5775,5777] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3247,2925,2926,1633,3246,3248,3245,1643,3240,6341,3231,3232,3234,2889,3205,3258,3259,2924,2655,2666,6397,6488,6366,6456,6459,2275,2669,2670,2675,2676,2682,2654,2656,2890,2894,2898,2688,3209] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [1265,985,986,429,1236,1237,430,1273,3701,4023,1274,3697,3699,447,448,3731,4526,4485,4525,4483,4057,965,966,3695,3696,3729,4031,4022,4054,4056,4047,4020,4548,4549] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [6293,6315,3166,5023,5061,5063,496,3159,3415,497,495,3157,3168,3155,5031,6291,6316,3450,3451,5024,5025,3414,3382,3413,3174,3172] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [2329,2334,2338,2341,2342,3570,3866,3571,211,212,230,2112,203,204,183,3901,194,3903,235,236,3902,228,2335,2336,2074,2080,2099] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [5887,5889,5912,5914,5878,5888,5902,5903,5904,5905,5906,4652,4660,4881,5941,4651,4860,4882,4657,4658,4649,4886,4925,4897,4926,5142,5140,5222,5223,4879,4880] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2306,2047,2049,3871,2251,3859,3860,4907,3840,4890,6400,2293,6412,6418,6422,6423,6424,6401,6402,6409,3851,3869,3872,3850,2298,2305,3522] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [6441,5930,5727,5720,5718,6503,6504,4950,6382,5712,6358,6360,5929] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [5760,5761,5775,5777,6857,5296,5295,5330,5776,5327,5768,5355,5357,6822,6856,5360,5388,6820] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5231,5232,4508,4510,4824,5229,5236,5255,4809,4819,4821,4519,4520,4521,4505,956,4539,5256,1115] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [936,4780,4782,941,1181,1086,1114,1116,1083,1122,1164,1178,1160,1156,1157,1158] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [1974,1975,2018,1580,2311,2282,2314,2315,2313,2284,1611,1632,1634,1958,1650,1594,2310,1633,1629] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [956,4538,4539,4540,4774,947,4741,4521,4775,5255,4818,4783,4788,4785,4786,4800,4780,941,955,5256,4781] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [413,438,911,1000,1001,1003,1004,784,789,790,401,402,403,1230,785,883,897,411,786,1229,1015] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5087,5090,5108,5628,5630,5631,536,5094,534,533,549,1134,1136,581,5091,5092,5600,5591,5586,5588,5593] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [6501,6503,6505,6507,6537,6538,5699,6533,6536,5971,5974,5720,6642,6644,6679,6680,6681] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [5171,5176,4123,4130,3836,124,116,122,3803,3806,4099,4133,4157,4158,5183,5179] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1087,1085,468,3710,974,4520,956] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [1880,1905,1356,1886,1889,2097,2489,2488,2494,2130] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [4766,4773,4759,4764,4765,4767,4769,683,4776,943,665,667,663,672,1200,1201] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        