
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
        
        load "data/6Q2J.pdb", protein
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
 
        load "data/6Q2J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8255,8231,8872,8853,9050,9051,9052,9060,9069,9061,9071,8256,8855,8858,8181,8182,8095,8212,8213,8214,8215,8216,8873,8874,8183,8184,8230,8790,9038,8789,9044,9053,9057,8823,8845,8788,8070] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1296,2252,2253,2261,2262,2272,1456,1457,2056,1413,1414,1415,1416,1417,2071,2052,2054,2258,1990,1991,2259,1271,2024,1989,2239,2046,2254,1431,1432,2073,2074,2075,2072,1382,1383,1384,1385] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [3459,3460,3461,3462,3463,4105,3482,3466,3481,1882,1883,3447,4106,1866,2161,2162,2165,2166,1853,2195,2197,3965,3966,2187,2188,2158,2156,2159,4121,4137,4139,4120,3964] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [9150,10253,10373,9172,9174,10375,10376,10380,10377,9301,10359,9323,9325,10381,10255,10210,10234,9178,9181,9297,9294,9298,9199,9285,9291,10389,10400,10415,9302,10384,10219,10220,10221] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [8961,8964,8965,10265,8994,8652,8996,10260,10259,10261,10280,10281,10905,10904,10246,10262,8682,8676,8681,8672,8665,8671,8958,10936,10938,8955,8960,8930,8986,8987,8957,10763,10764,10765,10919,10920] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [2373,2375,2492,2495,2400,2486,2351,2382,3421,2379,3456,3435,3574,3576,3577,3581,3578,3582,3590,3585,3601,3422,3616,2499,2502,2503,2518,2524,2526,3560] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [2408,2427,2429,3283,3284,2407,2428,2409,2410,3417,3420,3421,2394,2402,2405,2406,2401,3629,3638,3630,3631,3314,3408,3613,3615,3616,3322,3354,3385,3386,3387,3388] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [188,215,6670,171,179,186,7224,7227,7258,6788,6791,6569,6780,218,6572,6798,6797,191] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [9201,9205,9206,10437,9204,9227,9228,10113,10430,10428,10429,10153,10186,10121,9207,10152,10184,10185,10414,10216,10219,9208,9209,10415,10412,9199,9200] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [1986,1985,1961,2295,2257,1281,1283,2284,2285,2293,2247,2231,1987,1687,1685] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [8784,8785,8486,8484,8760,9084,9083,9030,9046,9056,8786,9092,9094,8080,8082] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [13587,13590,13596,13597,6978,425,6987,459,6985,6970,13371,7014,7017,13469,428,13368,13579,6990] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [3083,2988,2961,2948,2958,2417,2919,2669,2788,2789,2670,2782,2799,2797] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [7163,7165,6811,6814,6816,6817,6059,6812,6813,6815,6057,6058,6712,6714,6716,6732,6715,7168,7172,7151,6739,6740,7175,6741,7176] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [9468,9787,9760,9216,9596,9598,9581,9587] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [366,12,364,12856,12857,12858,373,369,352,13,14,15,16,17,18,13509,13511,13513,13515,12842,13531,376,377,13538,13539,13540] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [3092,3094,1840,3076,3090,3242,1832,3223,3222,1787,1780,2694,2706,2710,2686,2688,1816,1817,1818,2714,1789,2692] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [560,564,550,555,563,310,7339,321,324,571,7353,7620,7245,7338,7344,7357,7358,559] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [9505,9891,9893,9493,9485,9889,10041,8588,8586,9487,9491,9492,8640,8579,9875,9513,8631,10021,10022,8614,8615,8617,8639,8616] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [8939,8653,8654,8970,8973,9158,9160,9971,9975,9979,10281,9157,9983,8628,8631,8634,9967,8630,10023,9156,10007,8943,8940,8947] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [2703,2701,1796,1797,1798,1799,2691,2693,3045,3046,3041,3043,3044,3017,1666,3026,3029] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [6883,6845,6850,6816,6817,6822,6806,6807,6844,6847,7167,6874,6869,6865,6878,6881,7176] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [7358,559,7359,7362,545,446,7109,539,540,7349,7354,7363,7123,7120] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [9502,9492,9500,8595,9490,8596,8598,9491,8465,9839,9840,9841,9842,9843,9844,9845,9816,9819] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [17,18,368,23,8,51,70,75,79,82,66,84,377] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [4519,4522,4521,4520,4829,4830,5042,4828,5039,5025,4189,4849] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [11824,11838,11320,11841,10988,11319,11318,11648,11628,11627,11629] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [6685,6796,6675,6235,6237,6240,6311,6312,6676,6677,6671,6233,6229,6236] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [3411,3413,4086,4096,4081,3455,3456] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        