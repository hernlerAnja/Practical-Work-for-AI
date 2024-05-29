
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
        
        load "data/7B5R.pdb", protein
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
 
        load "data/7B5R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5385,5503,5504,5370,5523,5524,5054,5055,3746,3748,3750,5374,5369,5365,3529,3722,3723,3531,3747,3749,3744,3745,3543,8425,8426,3178,3173,3177,3161,3164,3346,3169,3347,3349,3352,3353,3358,3362,5043,5226,5232,5235,3527,3345,3342,5341,5346,5347,3741,5353,5349,5237,5241,3725,3727,5244,3724,3730,3732,3721,3737,3950,3948,3940,3941,3962] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [2423,2421,2505,2654,6348,2486,2515,2598,2655,2536,6447,6448,6318] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [11241,11360,11362,11364,6697,6716,6698,6734,6751,7160,11239,11240,11280,6780,11387,11386,11232,7159,7058,6771,6769,6766,6768,6778,6676,7056,6745,6767,6747,6749] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [10343,10321,9083,9084,10269,10271,9461,10233,10237,10239,10240,10254,9433,9076,9425,9423,10025,10024,10212,10235,10017,9460,9459,9091,9092,9220,10280,10283,10285,10286,10260,10279,9074,10258,9197,9121] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [5250,3923,3937,4141,4732,4738,4747,5258,4544,5293,4155,4352,4545,4756,4757,4760,4762,3705,4791,5236,5259,3526,3527,3719,3704,3718] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [7764,9377,9378,9379,10035,7747,7748,9411,10034,10039,10018,10040,10041,10042,10003,9376,7784,7786,7733,7734,9673,9671,7762,7738,7739,9412,7735,9662,9664,9672,7507,7509,7758] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [6929,6930,11506,11515,6806,11504,6789,6790,7704,6882,6883,6895,6896,6807,6902,11526,6804,11520,11523,6899,11531,7689,7690,11534,11507,11472,11474] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [2583,2741,2604,2692,2605,2691,2698,2904,2871,6588,6589,6590,2870,6600,6601,6564,2665,2667,2880,2881,6622] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [8952,7750,8979,8980,10077,10074,8938,8941,7746,7745,7967,7756,8954,8955,7751,7975,8915] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [4546,4548,4733,4734,4545,4342,4352,4120,4121,4129,4332,4333,4531,4337,4529,4530,4335,4138,4141,4748,4767,4768,4769,4125,4122,4124,4757,4761,4763,4775,4777] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [9962,9965,9938,9940,9967,9942,11170,7071,7082,7066,7067,9913,7086,7087,11161,11164,11167,11168,11193,11143,9974,9976,7072] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [990,658,624,625,507,512,1016,632,1059,989] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [5674,5645,5884,5922,5887,5891,5569,5859,5706,5729,5682,5680,5702] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [2253,2254,2135,2359,2360,2361,2133,2261,2263,2257,2258,2231,2232,2227,2229,2161,2170,2395,2396] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [9522,9524,9483,9515,9588,9890,9891,9894,9921,11100,11101,11136] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [8655,8510,8625,8130,8653,8142,8533,8276] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [6295,6270,6275,6266,6268,2465,843,2477,6176,6267,2478,2498,2529,6296,2496] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [11105,11111,11113,11114,11142,11143,11179,11150,11152,11108,9882,9884,9883,9908,9879,9909,9910,9911,9912,7101,7104,7107] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [6877,6825,7091,6822,6823,6838,9874,9884,9871,9908,7092,9910,7103,6869,6871,6830] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [10163,10164,10167,10846,10848,10188,10189,9363,10839,9350,9361,9364,9368,9362,9370,9371,9379,10068,10158,10159,10097,10850,10838,10135,10834,10858,10860] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [9585,9587,9588,9453,9477,9928,9437,9483,9524,9605,9609,9890,9891,9926] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [5718,5744,5746,5747,5742,253,5721,775,774,754,5775,212,781,216,250,228,213] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [7844,7845,7846,7847,7848,7849,7850,7588,7860,7862,8123,8071,8072,8074,7578,8119,7243,7241,7242] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [8691,8350,8684,8685,8686,8693,8343,8701,7929,8377,7942,8334,8337,8692,7892] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [2465,843,6246,6268,6230,6266,2466,842,2478,6202,831,2477] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [290,292,326,5817,300,324,325,2453,2452,6203,6152,6182,6184,6185,5816,5818,2436,2438] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [9591,9593,9599,9615,9590,9266,9303,9269,9274,9279,9268,9302,9301] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [4492,4490,4491,4319,4471] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [5915,5947,5949,5914,5701,5943,6282,6249,6250,6238,5699,5700,5974,5971,6022,6023,6276] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [164,165,170,218,219,148,124,121,755,726,727,754,5771] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [7628,7653,7625,7644,7208,7009,7008,7669,7670,6761,7180,7198,6760,6743] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [1897,1898,1153,1154,1492,1886,1525,1527,1851] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [309,368,71,365,367,44,32,33,4,359] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        