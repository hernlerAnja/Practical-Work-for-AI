
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
        
        load "data/3HV4.pdb", protein
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
 
        load "data/3HV4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4207,4208,4209,4210,4620,4584,4585,4586,4193,4185,4158,4157,4161,4691,4186,4188,4189,4482,4483,4480,4454,4457,4484,4689,4559,4560,4516,4713,4515,4714,320,4183,4456,4458,4607,4204,4206,4608,4610,4649,4652,4631,4632,202,203,204,4676,4677,4678,4680,164,4682,159,192,193,194,195,196,322,321,165,166,160,4935,4165,4933,4946,4939,4154,4155,4936,4244,4951,4958,4944,4959,4226,4229] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [278,279,373,229,230,231,232,280,385,387,234,580,835,545,579,1355,1354,543,854,865,852,834,839,829,372,817,1319,1321,1323,657,658,581,1325,1334,1328,1329,859,1339,1343,1341,1336,858,867] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [2997,4071,2995,2996,2946,2949,3104,3262,3098,3102,3534,3537,3297,3535,4051,4053,4056,4058,4040,4045,4038,4042,3298,4060,3556,3571,3574,3575,3576,3374,3551,3552,3090,3569,3089,2948,3375] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [1325,1328,1329,1330,1331,1174,1171,1173,1332,571,573,1155,1319,658,581,650,1119,606,607,1347,532,533,1166,1168,1169,1160,1170,1172,1182,545,579,389,543,544] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [1437,1440,2223,1472,2221,1441,1445,1446,1447,1444,1486,1488,1491,1493,2239,2232,1487,1489,1490,1492,2246,1509,1511,2224,1770,1771,1470,1471,1969,1970,1468,1907,1940,2234,1530,2238,1532,1846,1979,1908,1847,1978,1803,1977,1872,1873,1874,1898,2225,2001,1514,1506] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [2990,2826,2827,2959,3125,3128,3129,3130,3147,3114,3499,2832,2833,3115,3509,3510,3511,2368,2369,2370,2371,2819,3500,2962,2965,2960,2963,1013,1014,1012,2379,2381,2382,3137,3138,3135,976,3167,960,974,975,977,1272] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [4045,4046,4048,4042,3890,4036,4047,4049,4035,3298,3290,3871,3323,3324,3835,3836,3872,3834,3883,3888,4032,3260,3261,3256,3259,3297,3106,3262,3375,4029,3367,3885,3898,3250,3252,3877,3899,3255] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [2375,2398,2422,2423,2421,1040,1041,1074,1075,1076,2420,1014,1050,1012,1048,2379,2381,1287,1290,1288,635,631,632,1292,1295,644] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [843,842,845,663,678,2713,661,662,667,2712,844,1308,618,621,604,610,614,1307] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [3377,3380,3378,3379,3381,3395,3560,3561,3562,3384,5424,5425,3331,4024,4025,3365,3321,3327,3330,3335] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [3302,3314,5188,3332,3334,5392,5396,5406,5172,5373,3303,3306,3307,5372,3317,5189,5394,3316,5187,5190,3280] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [3767,3729,3755,3757,3765,3766,3758,5091,5093,5087,3731,5135,3791,3792,3793,3349,3350,4005,4007,3361] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [154,687,691,22,23,41,686,696,699,709,2667,706,171,2665,2687,2690,2706,2707] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [4250,4252,4994,3843,3841,4249,4260,4992,4993,4995,5000,5004,3811,3813,4242,4243] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [4193,4185,4199,4205,4207,4208,4209,4210,4186,4216,4212,4621,4204,4206,4652,4626,4627,4631,4632] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [342,305,307,4449,335,4450,4169,4196,4172,4096,4142,4097,4140,4098] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [1126,2287,1124,1540,1094,1096,2288,2277,2280,2283,2292,2281,2282] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [1286,860,1307,1305,1306,1256,1257,1259,1287,1289,1291,844,840,841,842,845,849] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1337,1336,1348,1356,1358,1209,1210,1223,1345,1192,1335,1344,1230] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [908,910,1254,1250,1255,1260,1261,3172,987,1282] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [2282,1548,1532,2277,2280,2283,1126,1537,1540] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [4083,3933,3611,4084,3642,3643,4132,4389,4394,4350,4118,4120] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [563,523,525,2554,2624,2625,2661,2486,2507,2502,2509,2536,2537,2483,2485,2487] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        