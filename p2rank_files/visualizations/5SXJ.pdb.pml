
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
        
        load "data/5SXJ.pdb", protein
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
 
        load "data/5SXJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5407,5408,5409,5410,5411,5412,5413,6155,6683,6684,6685,2377,2378,5375,5376,6165,6166,5091,5092,5095,5097,5093,5458,5459,6626,5130,6624,6656,6657,6652,6653,6850,6857,6859,6847,6844,6834,6648] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [5517,5516,5532,5533,8180,8188,8231,9396,3648,9385,9395,3658,9356,9358,3659,3662,10129,3649,3650,9387,9388,9420,9393,9419,10127,9391,5522,5524,5526,9455,3793,9428,3467,3663,3727,3738,3744,3747,3726,8172,3741,8226,3664,3640,3642,3751,3647,3777,3778,3818,5196,8178] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [6293,6294,6295,6338,6339,6555,6556,6919,6302,7559,7563,7564,7567,7560,7562,7008,7568,7569,6303,6307,6308,6535,6840,6918,6923,6930,6838,6836,6837,6841,7561,7543,6536,6933,6361,6936,7479,6965,6967,7480,6939,6618,6620] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [4328,4329,8786,8788,8787,8749,8753,8754,8785,8760,4359,8598,8599,8875,4364,8739,8745,8746,8748,8818,8732,8733,8819,4298,4326,4409,4410,4408,4383,4384,4411,8892,8889,8890,8782,4277,8906,8908,8905,8347,8349,8352,4338,8341] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [3612,3488,3489,3494,3760,3761,3490,3606,3607,3610,1257,1258,3497,5212,3603,3604,3597,3599,3601,1243,1242,3573,3600,3493,3525,3518,3521,5235,5236,5237,5554,5564,3765,3768,3769,3770,3757,3762] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [1131,5476,5782,5783,5784,5785,1136,916,917,918,5448,6870,6874,6876,6899,5810,193,194,196,197,6879,6882,6883,203,5841,5809,5840,1153,1155,5473,5474,5496,5500,5504,5471,766,767,768] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [7655,7656,7657,9254,9255,9287,9288,3674,9316,9328,10248,10223,3668,10225,10246,9318,3694,7659,10280,7658,10220,10243,10249,10250,10244,8228,3675,3676,3677,3678,3669,3672,8203,8202,7631,7632,3692,3693,10254] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [5368,5369,5709,5711,1517,1518,1515,1525,1527,1529,5710,2257,5665,2593,5669,5670,2594,2574,2575,2578,2587,5673,5681,5683,6138,6171,6136,6137] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [3052,3062,3063,3064,4639,3067,8849,4606,4420,4419,8864,8865,8866,3050,3078,4641,4637,4633,4631,4632,8867,4654,4647,3074,3077,4609,4610,4368,3049,3060,3061,4893] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [8883,9096,9024,9039,4400,4401,8882,8921,8919,8920,9027,8991,4389,4399,8827,9001,8881,9061,9070,9071,9073,9052,9030,9053,9029,9058] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [10128,10129,3649,3650,9387,9388,10166,10165,2908,10126,3645,3648,3806,10136,3625,3818,3825,3824,3446,3644] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [2415,6188,6189,6485,1552,6167,6473,6474,2383,2385,2249,6475,2266,2380] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [5514,5515,5517,5509,8187,8188,6601,8190,5484,5487,5488,5489,5480,5508,5482,5490,6599,6600,6885,6892,6582,6584,6878] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [1567,1568,2376,2378,2411,6748,6749,6750,2402,2435,2434,6683,6712,6718,6719,6710,6811,6709,6711,6802,6803,6758,6720,2410,2404,2405,2401] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [3657,10202,10222,10224,10191,10194,3645,3648,3654,9387,9388,10166,10165,3446,3439] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [8350,8359,8361,8607,8610,8314,8353,7688,7687,7695,7696,7697,7708,8315,8310,8312,8313,8362,8427] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [915,749,801,1134,916,1126,1127,1164,1165,1169,764,767,1168,781,1129,1132,1125,1097,1099,1104,1128,866,1101] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [1103,1104,865,864,1135,5724,5725,5727,1137,1138,5760,5761,5762,5763,863,1112,1114,841,838,1134,1136,897] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [538,990,359,653,651,536,533,534,535,572,539,723,506,366,703,989,700,676,545,540,658,702,508] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [8724,8900,8808,8810,8968,8899,8969,8544,8546,8976,8999,8811,8575,8573,8722,8723,8805,8806,8572,8574,8570,8571,8540,8569] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [4926,4929,3350,3351,5227,3348,4930,4928,4939,3528,3550,5241,5250,5218,5225,5205,5247,5259,5260] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [5102,5079,6726,6717,6759,6694,8100,6728,4828,8076] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [4732,4733,4734,4039,4032,4704,4497,4743,4066,4067] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [3702,3703,8666,8667,8256,8662,3700,3701,3742,8236,8237,8255,3734,3733] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [9996,9997,948,235,232,244,9528,9995,237,240,10037] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [7649,7650,8315,8317,7680,7681,7648,7645,8278,8606,8615,8619,8640,8641,8642,8277,8252] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [2208,2561,2563,2297,1466,1468] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        