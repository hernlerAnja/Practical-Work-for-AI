
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
        
        load "data/1H25.pdb", protein
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
 
        load "data/1H25.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [555,7708,7709,7711,7712,1,5,6,7687,41,31,539,542,7277,228,192,7278,634,40,42,242,530,531,5010,5009,556,7719] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [147,95,96,98,101,146,92,698,701,93,89,91,641,642,650,644,248,667,1086,670,662,264,108,1065,1070,1163,1166,645,509,265,646,1158,1159,1160,1087,1058] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5534,5535,5606,5611,5614,4549,4594,4548,4595,4546,5115,4696,5149,5506,5118,4541,5110,5112,4537,4540,4543,4712,4713,5607,4956,5091,5093,5088,5089,5090,5518] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3373,3394,3396,4476,4479,4472,4449,4450,4452,2963,2964,3405,3397,3398,4987,4988,4990,5003,4489,5005,4676,4490,4640,563,562,3364,3366,570,575,576,4469,4470,4471,3332,4978,4979,4982,5082,2954] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [5684,5686,7834,7829,7830,7833,7980,7981,7955,7960,8651,8644,8639,7866,7864,7950,7953,7952,7954,7796,7800,7135,7799,7131,7138,5701,7129] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [3776,3771,3773,2502,3812,3813,2528,2531,2545,2544,3790,3761,3711,3713,3834,2883,2886,2852,2877,2879,2880,2914,3461,3466,2856,3469,3472,3478,3710,3721,2853] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [2349,1115,1116,1144,1128,1103,6931,516,1145,6912,654,651,229,6932,483,484,659,1100] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [5657,7440,5700,5701,5703,7129,5430,5431,7807,7808,5670,5671,7145,7806,7809,7147,7146,7143,7144,7800,7763,7764,7765,7767,7430,5658,7439,7770,7180,5684,7834,7835] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [8087,8104,8074,8075,8076,8085,7191,8035,6841,7200,7775,8126,8127,7166,7197,7785,8148,7170,7792,8027,7786,6859,7193,7194,8090,7228] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [2598,2617,2618,2619,2970,5593,5100,5101,5102,5122,5592,5099,5107,5566,5551,5548,4964,4677,2599,2601,4931,4929,4932,6663,5576] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [1427,1440,1876,1441,1450,1875,2190,2191,1835,1832,2183,2189,2192,1846,1847,1848,1841,1874] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [2815,2817,2822,4339,1253,1243,1252,4351,4337,3521,3550,3639,3519,1236,1238,3485,2821,2824,3666,3667,3614,3636,3640,3641,3646,3486] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [1240,1245,1246,1465,1441,1439,2193,2197,2198,2187,2188,2189,2192,1478,1466,1461,2408,2407,2365,2369,1234,1237,1232,1218,1220,2370,1225] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [6511,6512,6513,6289,5884,5881,5874,5875,6323,6324,5897,5898,5889,5887,5888,6503,5840,6504,6505,6283,6280] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [6705,6703,6713,6719,5668,6679,6682,6683,6684,5914,5693,5694,5899,5909,5682,5685,5688,5679,5680,6721,6747] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [518,517,467,469,6867,6868,6917,7262,6914,6915,6916,6913] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [2406,2403,2376,2377,3557,3558,3560,3569,3570,3571,4019,2415,2416,2417,4018] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2156,2160,2161,2162,2163,2164,2150,2165,2172,1823,1980,1978,1820,2127] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [271,273,274,600,270,58,59,156,618,11,12,617,619,60] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [4840,4842,5731,5733,7453,5631,5632,5633,5728,7444,7476,5635,5637,5749,4813,4820,5629] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [6239,6154,6195,6196,6240,6334,5864,5865,6335,6299,6300,6305,6302,6233] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [2709,4231,4235,2710,4249,4239,2708,2687,4234,2748,2749,8777,8778,2716,8819,8802,8800,8801] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        