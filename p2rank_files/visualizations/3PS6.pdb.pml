
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
        
        load "data/3PS6.pdb", protein
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
 
        load "data/3PS6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4896,4897,4898,467,3384,3385,3386,3665,468,1074,1076,1100,1101,1102,1103,1104,1105,3381,3382,3383,3394,4872,4894,3666,3698,3700,3701,4411,3696,3697,3699,4425,4426,3424,3744,3745,5057,5034,5036,5037,5018,4837,5051,5054,4839,5067,4919,4893,4926,4927,4930,4921,4920,4961,1126,1127,548,1128,1097,1088,4923,4924,4925,4998,3396,3395,4931,1062,1063,4960,4962,1058,1096,1087,1089,1091,1061,3362,3363,482,496,540,538,519,520,4988] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5819,5691,5793,5794,5795,5787,4537,4746,5129,4766,5144,5145,4604,4831,4785,4832,5788,5789,4536,4582,4535,4548,4549,5784,5786,5151,5153,5175,5706,5707,5147,5150,5174,5128,5127,4803,4830,5043,5044,5046,5133,5188,5209,5210,5690,5679,5683,5820,4555,5211] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3986,4010,4011,4012,4013,3985,3979,1252,1254,1262,3657,4389,4390,4391,955,448,447,954,973,975,429,1225,446,3651,3652,3653,3655,3656,964,4430,4431,953,3659,3685,4432,4433,963,3664] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3196,6308,3190,3202,3203,3204,6251,1581,1582,1583,6307,2622,6276,6371,6372,6373,6396,6398,2225,6358,6362,2632,2617,2618,2611,2612,6366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [189,194,2285,2289,3857,183,2294,204,200,203,202,210,212,195,2295,236,2282,2283,3527,228,211,2281,2027,2025,2033,2031,2115] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [3229,2996,2963,2992,2994,1331,2940,2965,2966,1332,2962,2964,3230,3246,1867,1857,1860,1863,1866,2446,2448,2452,1869,3234,2089,3238,1838,1850,1851,1328,2447,1856] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5199,5201,5202,6714,6712,6713,6757,5668,5662,5676,5680,5681,5683,5682,6767,5672,6766,5234,5266,5269,6724,6725,6730,6732,5224,5256,5295,5229,5233,5270,5277,5222,5293] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3405,3407,3338,3124,3128,3130,3111,3369,3370,3371,3393,4931,497,498,496,3113,3115,3131,3117,3121,3122,4902,4905,4907,4937,6226,4933,4928,4929,4930,4932,6225,6203,6201,4969,4906,3392] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2626,2857,2638,2642,2611,2612,2846,2644,2878,2881,2882,2854,2683,3165,3190,3213,3201,3202,3203,3204,3215,3200,2622] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [5618,5626,5855,6270,6412,6413,5853,6350,6351,6387,6389,6384,6386,5633,5836,5830,5823,5824,5829,5852,6268,6299,6300] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [6312,6332,3478,6333,6334,2251,2252,2253,2240,4795,4796,4812,4813,6319,3800,3796,3806,3825,3807,2245] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [812,886,895,898,875,411,413,438,990,992,403,980,986,1219,789,790,1004,993,994,995] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [462,3352,3353,3355,3646,3648,3356,440,452,454,455,470,3348,409,410,3635,3636,3642,3633,3343,472,471,474,476,473] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5137,5135,5142,5159,5138,4427,4445,4418,4725,4727,4730,4720,4724,4715] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1560,1561,1600,1582,1583,2270,1903,1920,1921,2258,2261,2262,2257,1904] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5506,1130,1131,1135,1123,4997,4998,5000,1125,572,5505,5504,5014,5533,5535,5493,5494,5498,5475,5476] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5488,5461,5471,5487,5968,5980,5345,5957,5981,6046] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [6188,6196,6201,2824,6219,3123,2821,3139,3122,3166,3142,3140,6224,6216,6220,6205,6197,6212] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [2276,2284,3822,2283,3526,3866,3867,3863,3859,2288,3493] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        