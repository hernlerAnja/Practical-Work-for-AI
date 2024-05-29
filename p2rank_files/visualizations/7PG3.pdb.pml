
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
        
        load "data/7PG3.pdb", protein
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
 
        load "data/7PG3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [518,276,278,502,517,619,261,616,617,618,399,159,158,418,419,628,499,653,673,675,626,443,623,620,374,375,547,127,277,300,302,372,401,130,495,769,761,767,185,97,96,121,862,863,864,594,1431,873,874,876,900,901,902,838,568,570,593,963,1059,1100,1079,770,904,1133,928,1125,1078,784,811,812,783,785,953,954,961,962,1134] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [9130,9399,9401,9506,9508,9398,9400,9397,9395,9396,9572,9762,9587,9763,9794,9146,9147,9642,9644,9646,9624,9304,9388,9467,9466,9495,9220,9494,9440,9199,9442,9464,9700,8787,8788,8937,8936,8938,9247,9277,9556,8954,9023,9200,9235,9237,9221,9232,9507,9554,9054,9024] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [8961,4002,4492,4494,4496,9180,9182,9173,9430,9183,8960,9181,9434,4137,9184,9186,4117,4119,4123,4107,4110,4116,4103,4105,3662,3666,3668,3669,3670,4592,4593,9451,9666,9667,9431,9664,3603,3604,9432,9433,3632,3633,3634,3635,3627,3631,3648,3651,3655,3656,9447,9448,3595,3601,3605,3619,3423,3428,3429,4536,4595,3421,9165,3981,3982,3983,4510,4511,4500,9162,4515,3959,4524,4518,4591,4590,4534,8959,8962,4199,4197,4141,4130,4135] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [6509,6668,6669,6715,6716,6471,6473,6664,6499,6960,6641,6887,6911,6640,6670,6892,6904,6909,6618,6643,6912,6959] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [3112,3113,3116,3117,3104,3224,3288,3018,3020,3211,3476,3477,3480,3303,3284,3210,2846,2843,2993] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [2654,2637,2953,2960,2962,2964,2965,2993,2786,2990,2992,2787,2789,2502,2504,2769,2767,2770,2638,2610,2568,2788] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [5887,5888,5942,6141,6107,5889,6142,5917,12715,12719,12729,12730,12731,12732,6111,5943,5867,12574,12575,6087,6106,12501,12772,12774,12521,12744,12737,12743,6096,6098,6100,12519,12520,12573,5869,12502] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [6759,6498,6500,6602,6784,6526,6967,6969,6439,6617,6619] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [6858,6859,6959,6843,6842,6934,7216,6931,6964,7217,6932,6994,6969,6971] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [10747,10748,10749,10870,10278,10279,10280,10871,11521,11523,11481,11522,10763,10788,10789,10753,10839,10840,10841,10764,10299,11484,9975,9950,10821] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [7076,7072,7073,7074,7096,7075,7077,7078,13387,7311,7313,7331,13357,13535,7134,7136,7137,7131,7132,7133,7135,13533,13394,13385] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [6364,6382,6556,6363,8134,8136,6392,6398,8305,8313,8297,8299,8123,6563,8125,8138,8144,8137,8348,8349,8350,8345,8346,8347] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [22,23,1790,1792,1793,5,1811,1803,41,1956,1963,1965,1966,1979,1972,1801,222,237,238,239,55,56,57,1981] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [11499,11525,2883,3164,11500,11530,11531,11520,11522,11556,11557,10783,10786,10788,10817,10818,10819,2882,3150,10793,11523,9940,10821,3167,3149] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [4357,4363,4376,4384,4358,13404,13403,13412,13416,13419,13503,13504,13506,4381,4382,13408,13405,13407,4375,13511,4374,4205,4207,4210,4216,4223,4206] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [237,238,239,1965,1966,1979,1980,1981,2011,2012,2014,2047,1925,1926,1923,1924,1921,1922] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [11617,11618,10211,10239,10240,10241,10208,13028,10209,13021,13022,13020,13029,13162,10201,10790,10791,10794,10851,10775,10231,11614,12991,11653] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [11652,11655,11658,11660,733,11662,11664,727,728,2517,2537,2518,2533,2530,2532,2560,11691,13001,11688,11698,2495,2493,2510,2512,2511] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [10215,10219,10221,10224,10227,10188,10554,10555,1214,11615,11643,11644,11645,10229,10532,10538,13189,13187,13188,998,999,1000,10226,10245] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [2507,2513,2712,2740,2710,2739,2503,2502,2769,2915,2653,2654,2953] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [13683,6877,13680,6897,13663,6648,6649,6898,6899,13569,6879] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [11461,10309,10310,10651,10489,13758,13853,10643,10629,10633,10634,10493,11463,10503,10607,11462] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [9447,9448,9682,9691,9692,9681,9928,3632,3635,9451,9665,9667,3379,3612,3613,3615,9446,9940,9936,9937,3643,9939] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [8699,8449,8390,8391,8592,8590,8591,8702,8569,8710,8469,8530,8542,8543,8546,8547,8541,8445,8446,8468] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [730,11596,742,745,11624,737,1190,1171,1172,2696,11594,11598,2664,2508,2670,2712,11623,2509,2658,2512,2671,2674,2687,2690,2676] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [12474,12475,12476,12477,12478,12883,12815,12816,12456,5136,5137,5125,12829,12858,12583,12580,12581,12582,12599,12598,5951] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [2846,3223,2954,2936,2937,2863] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [4342,4343,4313,4328,3832,13465,4312,13428,13616,13619,13466,13634,13636,13637,13638,13647,3816,3817,3737,3739] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [10114,13966,10036,13985,13815,10034,10129,10130,10131,13988,13986,13987,13996,13958,10055] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [538,557,558,13243,13245,13246,308,310,13240,306,13218,13215] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [6247,6249,6251,6245,6165,6246,6248,5934,5952] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [11672,791,792,793,794,795,796,11642] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        