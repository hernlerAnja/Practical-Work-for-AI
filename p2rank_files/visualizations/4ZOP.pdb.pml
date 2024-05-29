
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
        
        load "data/4ZOP.pdb", protein
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
 
        load "data/4ZOP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4932,4979,6363,4929,4930,4980,4934,4894,4896,4897,4898,4931,4933,4651,4618,6166,6169,6170,4622,6196,6197,6198,4611,4612,4613,4614,4615,4616,5676,5685,5687,5680,6360,6161,6165,6347,6356,6357,6340,6440,6364,6137] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [6067,6069,6048,7046,6049,6963,6964,6447,6452,6478,7047,6353,7043,7045,7027,6132,7053,6133,7048,7051,7052,7054,5829,6497,6521,6522,5817,5878,5856,5855,6436,6449,6443,6430,6431,6432,6352,6349,6351,6354,6105,6131,6365] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [18,29,34,36,15,605,19,21,753,754,755,6392,5015,5022,5025,12,5016,5017,990,992,13,5024,5027,5304,5305,5306,5331,44,975,5302,5303,4969,6383,6387,4992,6389,4996,4997,968,5330,5361,6076,5362,6395,6396,6399,6411] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [7668,7660,7666,3470,3456,3185,3465,3445,3462,3457,3459,3455,3461,3444,5054,5038,5037,5053,7719,7676,7677,3386,3377,3380,3381,3382,3383,7716,7714,7678,3387,3365] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [5043,5044,3358,3360,3368,3496,5054,3508,3511,3536,3524,3543,9108,9105,9135,3525,9071,9072,9073,9074,9080,9759,9100,9760,9761,9756,9758,3366,9041,9798,3367,9099,9733,9736] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [7744,2658,8281,8269,8270,8265,8275,8462,8428,3418,3421,3419,3420,7714,7721,7724,7726,3430,3422,8447,2690,2710,2725,2726,8454,2756,2691,3433,3434,3451,3458] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [3391,3392,3393,8972,8973,8970,8981,3394,7699,9854,9852,9853,7143,7139,7141,3410,3413,9888,9910,7148,7149,7150,7151,7152,8982,8980,8941,8942,8938,8940,9880,7145,7144,8909,9909,7689,7690,7719,7691,3395,3397,3400] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [8459,8470,8471,8472,8436,8438,8439,8441,3941,3939,4146,4151,4152,4153,4154,4127,4141,4173,4174,4175,2931,2717,2719,2723,8455,2718,8443,2736,2730] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [3474,3475,3477,3479,3480,3483,3201,3215,4733,5085,4751,1092,4740,4747,1091,1093,3236,3239,3249,3469,3208,3211,3212,3486,1074,1075,1077,1076,4758,5051,4756,4757,5075] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [952,702,703,940,941,700,701,675,678,970,971,973,974,5248,949,736,738,5314,734,735,712,975,5279,5280,5245,5284,5583,5611,5619,713,5581,5283,5282] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [2089,2092,2093,2114,2054,2056,1397,1396,1398,2082,2083,2122,6195,6198,6193,6226,6227,6230,6232,6260,6261,6271,1440,1468,6264,6223,6224,6324,6225,2115,2121,2123,6315] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [84,77,80,81,82,83,9673,9700,38,99,101,100,86,92,98,9116,9114,9123,9126,9125,37,30,72,74,5395] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [2566,3363,9797,9798,3367,2549,2559,3369,3164,9760,9761,9758,3536,3343,2550,3524,3542,3543,3368,3362,3350,3173] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [5658,5659,5229,5231,5232,2268,1358,1359,2261,2252,5719,1935,4889,4890,1347,1348,1355,1357,5693,5692,5188,5190,5194] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [3363,9040,9041,9042,9797,3369,3164,3372,9857,3157,9823,9833,9856,9008,9010,9825] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [1941,1944,1382,2058,2061,2060,2063,2065,2092,5987,5984,5986,5988,5996,5998,1927,5688,5709,5710] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [2054,2056,1397,1399,4590,4591,1398,4623,6195,6196,6193,6230,6232,6233,4600] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [1588,1589,1679,1590,1878,1811,2184,2185,1817,1877,1809,1812,1813,1677,1810,1834] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [4416,4417,4418,4128,4130,4131,2715,2716,2719,8454,8479,3894,3897,3940,3941,8456,8459,8452,3864,3869,3879] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [4447,4450,4451,4449,4737,4748,3268,2997,2998,4472,4474,4728,4734,4771,4762,4768,4775,4739,4746,3246,4730] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [5344,5310,5346,5595,5597,5537,5542,5340,5341,5339,5370,107,108,109,57,5313,5315,5587] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [8386,8151,8152,8154,8156,8383,8385,8387,8388,8595,8144,8594,8596,8603,8097,8098,8105,8102,8095,8096,8094,8153,8155] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3458,7735,3451,4417,7733,2708,2710,7714,7721,7724,7726,3421] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [8419,8488,8530,8649,8647,8670,8531,8418,8666,8404] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [5361,6076,5360,5362,5396,9117,29,5387] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [6634,6674,6675,6554,6489,6490,6552,6549] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        