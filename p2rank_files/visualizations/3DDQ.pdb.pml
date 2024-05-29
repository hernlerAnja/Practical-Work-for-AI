
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
        
        load "data/3DDQ.pdb", protein
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
 
        load "data/3DDQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4634,4635,4688,4689,4637,4638,4640,4642,4643,4649,4798,5208,5209,5218,5238,5246,4631,5210,5211,5213,5212,5214,4814,4815,5654,5727,5728,5626,5633,5655,5726,5266,5731,5732,5638,4650,5734,5064,5254,5255,5262,5295,5269,4955,4633] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [98,89,92,93,95,96,146,633,642,659,256,147,634,679,686,662,669,670,677,678,719,656,501,1078,1079,1150,1050,1051,1062,690,693,636,638,397,271,272,273,1151,1155,107,100,101,108,1158,635,637,500] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [2,4,7791,19,41,42,31,28,21,22,200,236,250,532,534,549,531,522,523,626,525,7789,7761,7785,7351,7352,7799,7752,7342,5117,5118,7754,5132,1,5,5137,5138] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [3491,3456,3457,3458,3459,3461,553,4544,4547,4548,4543,570,567,568,571,3492,5085,3500,3493,5094,5095,5097,3468,4573,3427,4572,3428,4545,4546,4561,4564,4565,5086,3058,3059,4778,4742,5112,5202,4582,4583,4584,3049] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [1244,1245,1247,2910,1215,1228,1231,1235,3577,3613,3615,3614,3644,3646,3760,3730,3733,3734,3709,4446,3221,1201,2925,2926,2927,2928,3586,2924,1204,1205,1214,2912,2916,2920,2919,4432,4434,4425,3580,3759,3761,3740,4420,3736] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [1107,1092,1093,1095,237,643,648,646,651,1101,655,675,676,241,242,7358,6984,6986,6987,7005,7006,7357,465,6989,473,476,486,1137,1120,2346,2347,508] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [5804,7914,7879,5823,5819,5820,5821,7203,7878,7212,8058,8060,8731,8733,8724,7885,5791,7912,7913,7943,7945,8032,8029,8039,8035,8719,5806,5781,5782,5790,5815,5841,5843,5811,7219,7220,7221,7888,7218,7217,5776,5777,7886,7887,7513,7514] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [1426,1388,1425,1438,1448,1387,1421,1873,1874,1868,1872,1881,2196,2427,2418,2426,1830,2181,2182,2195,2197,1839,1833,2187,2188,2189,1845,1846,1844] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [5685,5687,5039,6671,5223,5668,5036,5038,5712,5713,5671,5696,5683,2697,2713,5219,5222,5227,5216,5224,5231,2712,2714,5686,2695,2693,2691,5251,5252,5071,5073,5089,3065,4776,4783,4779,5049] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [2616,2633,2634,3928,2981,3570,3807,3572,2975,2978,2947,2974,3815,2951,3009,3870,3804,3805,3901,3906,3907,3554,3559,3565,3855,3867,3856,3854,2591,2624,3884] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [7274,7267,7268,7271,7240,6932,8169,7302,7265,7061,8110,6919,6923,6933,6890,6916,7244,8108,8114,8154,8227,7869,7871,8106,8153,8103,8155,8104,7853,8205,7858,7861,7864,6888,6891,8206,8183] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [3619,3662,3663,3664,3665,3654,3652,2435,2484,2499,2488,2490,2503,2431,2449,2452,2482,2486,4108,4109,4111,2432,3651,4077,4076,4104,4107] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [346,352,356,357,359,384,364,1173,1175,1176,1177,1185,1179,1180,1275,1277,1272,1301,3225,3234,386,1012,1310,3256,3257] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [4922,4942,4915,5749,5751,5756,7489,7549,7550,5848,5849,5869,4944,5851,5853,5752,7518,7527] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [6751,7951,7953,7918,7962,7950,6793,6795,8410,7963,7964,7920,6796] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [3588,2925,2926,2928,3586,3587,3589,3211,2924,1202,3220,3221,1201,974,975,1204,1205,1206,1214,1244,1245,1247,1215] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [2147,2148,2154,1816,1821,2170,1819,1768,1976,1977,1978,2159,2161,2125,2126,2127,2163,2006] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [967,2548,457,931,933,935,966,440,2546,955,956,2579,2578] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [464,6989,6991,472,458,459,461,508,509,510,7336,6987,457,455,456,462,463,6940,6941] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [2587,2618,3526,3529,3530,3531,3527,3533,3541,409,442,445,3543,3544,3018] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [4553,4554,4602,5168,5185,5186,5187,4824,4600,4698,4699,4700] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [3820,3821,3822,3801,4313,4311,4324] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [5285,5286,5916,5914,6140,5630,5927,5928,5911,5631] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [6445,6361,6204,6342,6355,6475,6350,6205] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        