
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
        
        load "data/4YLJ.pdb", protein
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
 
        load "data/4YLJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3132,3133,3186,3749,3756,3299,8976,8977,8979,8978,3796,4300,4301,4302,4204,4205,3781,3776,3770,3774,3775,4177,4176,3803,3769,3773,3831,4165,4188,4307,4310,3166,3316,3314,3751,3752,3140,3141,3135,3136,3138,3187,3185,3167,3312,3129,3134] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5478,5677,5679,5477,5510,5512,5514,5516,5607,5639,5665,5640,5641,5642,5643,5644,5668,5663,5670,5671,2638,2640,2641,2381,2379,2380,2609,5685,5664,5680,5684,5715,5716,2394,2378,2395,2396,2397,5645,5646,2354,2012,2347,2352,2005,5608,5613,5614,5615,5545] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [8856,8850,8851,8853,8852,8855,8848,8900,8901,8902,9014,9885,9908,10022,10023,10025,9031,10018,9029,9462,9464,9466,8881,8882,9924,9496,9925,9488,9491,9485,9471,9518,9896,9897,9511,10017,10015,10016,9546,9484,8844,8847] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [746,887,897,890,892,893,1444,1445,1446,321,1325,1353,944,448,450,300,301,275,917,915,1354,921,922,937,972,911,914,320,267,266,433,910,319,269,270,272,745,1337,1461,573,1447,1451,1452,1454,607] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [5240,5241,5242,2653,5255,5257,5470,5501,2651,2783,2780,2781,2779,2744,2746,2816,2818,2616,2617,2649,2778,2804,2802,2803,2809,2810,2819,2855,2823,2824,2655,5213,5215,4874,4879,4880,4881,4885,5239,5243,5247,5502,5499,5251] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6038,6626,6628,7061,7062,7153,6456,7152,7154,6039,6655,7033,7034,7045,6151,6598,6599,6608,6601,5984,5981,5987,5988,5993,5985,6037,6603,6604,6291,7155,6019,6166,6168,7159,6018,7162,6622,6625,6633,6637,6648,6683,6621] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2637,2643,2684,2726,2672,2678,2681,2682,2683,2685,2655,2725,5512,5516,2651,2041,2042,2689,2692,2701,2704,5553,5543,5546,5550,4910,5544,5545,5562,5565,5587,4926,2727,5586,5588,5498,5539,5542] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [9000,3820,3821,3822,4181,4180,8989,8995,8997,8974,8981,4482,4484,4485,4487,4486,4497,4464,4465,4474,4745,4498,4746,4701] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [538,539,1468,1469,1470,1474,1475,543,544,510,1452,1454,1453,1297,1596,1314,282,295,298,300,291,292,285,290,513] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [8866,8870,8871,8879,8872,8873,8876,9128,9885,9868,10023,10024,10025,9153,8863,10180,9094,9096,10040,9119,9120,9124,9125,9089,9091,10045,10046,10038,10039] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [7161,6016,7005,7160,7162,7022,7183,6008,7317,6013,7177,7182,7176] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [8918,3890,9000,3820,3822,8995,8997,8998,8825,3889,3891,3892,4486,4736,4730,4746,3888,4701,3886,3887,4745] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [7350,7553,6670,6672,7349,7334,7336,7338,7339,7036,7037,7038,7020,7316,7317,7329,7318] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5151,5176,9956,9957,9553,9578,9581,9588,9576,9577,9951,9664,9629,9632,9633,9663,9702,9967,9554,9932] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4326,4331,4323,4324,4325,4308,4310,4309,3379,3331,3413,3376,3402,3404,3405,3374,3409,3156,3157,3158,3161,3164,3332] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [9533,9535,9537,10416,10466,10467,9900,10212,10199,10213,10201,9901,9883] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5116,4802,4803,4804,5129,5140,5122,5175,9959,9961,4788,5184,5186,4836,4837,5187,5132,5133,5114,5009,5113] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1395,1396,1393,1361,1362,1093,979,980,1022,1380,1386,1387,1092,1131] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6528,5830,6532,6560,6562,6175,6559] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        