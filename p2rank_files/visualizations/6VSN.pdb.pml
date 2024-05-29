
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
        
        load "data/6VSN.pdb", protein
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
 
        load "data/6VSN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3689,3691,3692,3693,3694,3695,3687,3685,2832,2837,2869,3827,3842,3830,3845,2830,2827,2743,2797,2835,2803,2801,2798,3839,3834,3849,2538,2539,2542,2529,2532,2561,2562,2563,2564,2527,2528,7214,3847,7216,2557,2559,2560,2550,2554,2552,3529,3567,3562,3553,3669,3670,3671,3672,3663,2577,2725,2726,3664,2575,3556,7218,3584,2526,2828,3711,3710,3699,2789,3826] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4335,4346,7483,4309,4334,4340,4342,4344,3939,3950,3937,3943,4371,4372,7282,7283,7284,7285,7481,7863,7553,3947,3945,3948,7269,4310,4311,4312,7499,7500,4339,7506,7507,7537,7541,7542,4406,4380,7477,7543,7545,7550,7551,7552,7536,7539,3856,3855,3829,7240,7241,7242,7243,7244,7247,3904,3906,3933,7223,7233,7234,7224,7227,3870,7260,7255,7259,3965,7266,7248] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1600,2216,2217,2218,2219,2220,2222,1588,2535,1072,1361,1362,1364,2536,2516,2512,2490,2487,2489,2494,1360,1370,1587,1569,1570,1522,1523,1555,1322,1373,1375,1571,2281,2748,2749,2750,2751,2752,2241,2735,2545,2734,1614,1593,1594,1590,1596,1597,1611,1048,1050,1595,1526,2280,2260,1025,2262,2269,2271,2256,2257,2251,2252,1621,1026,1052,1057] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1266,1267,1269,136,1282,1164,139,135,122,123,124,125,126,116,117,466,174,322,323,718,1261,1268,307,172,173,118,120,121,340,142,154,400,156,143,434,1159,1160,1150,771,1181,775,776,767,768,803,1259,1180,740,736,743,427,1284,1283,1290,1292,1423,1426,424,428,429,394,398,1434,1286,1308,1307] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [7059,7060,7597,7044,7055,7063,7065,7612,7613,7614,7072,6125,6163,6164,6165,6167,6397,6391,6403,6390,6396,6398,6399,7378,7376,7377,7448,7352,7397,7398,7399,5828,5829,5854,5851,5852,5853,5871,7083,7407,7084,7025,7026,7027,7020] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [8533,8534,8546,8547,8530,8532,8429,7404,7408,7412,7418,7420,7422,7394,7400,7401,8556,8557,7411,8711,8389,8390,8391,8555,8388,8430,8419,8549,7587,7588,7699,7731,7424,7423,7605,7439,7428] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5984,5546,4923,4924,5539,5983,6069,6063,6064,4921,4975,4976,4977,6070,6071,5521,5110,5543,5376,5525,4920,4926,4927,4939,4929,4931,4932,4938,5571,5572,5574,5578,5606,5967,5953] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [7437,7438,7388,7389,7439,7428,7383,7386,7381,7382,8445,8008,8009,8032,7385,7572,7987,8005,7983,8526,7838,7391,8415,8040,8041,8033,8034,8036,8446,7394,8068,7400,8533,8525,8531,8532,8429] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3669,3670,3671,3663,2577,3121,3664,2575,2576,2710,2523,3567,3562,3553,3584,3583,3125,2529,2527,2528,2519,2520,2521,2526,2524,3174,3178,3206,3146,3170,3171,3137,3139,3141,3153,3154] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6163,6164,6165,6176,6178,6373,6374,6391,6403,6390,7362,7370,7352,7374,7377,7028,7349,7351,7345,7356,6359,7024,7017,7021,7022,7023,6358,6372,6325,6326,7025] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [6226,6227,6228,6230,6237,4946,4945,4957,4959,5201,5203,6212,6095,5227,5228,5189,5230,6087,6111] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [7598,7601,7630,7629,7056,7092,7094,7064,7122,7593,7946,7595,7053,7059,7044,7935,7939,7936,7937,7958,7959,6971,7941,7124,7930] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [8549,8551,8572,8381,7692,8573,8674,8712,8696,8678,7663,7665,8557,7422] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [9527,9534,9522,9525,9526,9538,8858,8859,8630,9542,9517,8278,8284,8286,8288,8860,8313,8314,8315] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [4663,3424,3452,3996,3997,3999,4003,3768,3998,3725,3451,3453,4659,4660,4655,4665,4654,4644] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [7229,7230,7226,7228,7200,3881,4199,4233,4234,4232,4300,4328,4301] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [6436,6300,6275,6625,6626,6796,6986,6988] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4226,4433,4585,4587,4584,4586,4588,4036] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        