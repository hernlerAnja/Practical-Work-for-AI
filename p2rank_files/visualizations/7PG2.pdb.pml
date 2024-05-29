
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
        
        load "data/7PG2.pdb", protein
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
 
        load "data/7PG2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3115,3117,2936,2937,3183,3116,3211,3223,3224,2862,3134,3158,3104,3112,3114,2830,2843,2816,2846,3288,2993,2826,3019,3020,2815,3362,3340,3339,3210,3477,3478,3303] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [962,963,1100,1098,1125,864,900,593,862,873,875,1431,901,1033,783,785,982,863,594,517,770,502,904,590,627,1078,1059] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [7245,7440,7204,7323,7400,7216,7764,7396,7420,7321,7540,6934,7016,7110,7111,7126] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [4510,4511,4515,3670,4500,4592,9430,9666,9450,9451,9163,9431,9432,9434,9433,3429,4533,4534,4535,4536,3603,3604,9161,8963,8961,8962,9162,4136,3981,3983,3959,3627,3629,3631,4119,3625,3660,3632,3633,3634,3619,4134,4135,4495,4496] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [9388,9396,9397,9587,9624,9303,9304,9277,9130,9507,9508,9572,9646,9763,9761,9398,9794,9399,9400] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [10793,10787,10788,10789,10783,10784,10786,3150,11557,2883,11530,10858,10855,9937,9938,9939,10799,10821,10807,9941,3165,3166,3149,3164,9975,9947,9951,9952,11521,11522,11523,9692,11499,10299,10297,10745,10747,10861,10868,10749,11481,11483,11548,11485,10764,11525,10280,10763,10279,10750,10752,10753,10757,10758,10277,10278] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [12456,12457,12478,12830,12598,11391,5966,5949,5948,5824,5839,5843,5957,5962,5963,5956,5950,11389,11390,5846,12594,12582,5947,12580,12581,5125,5136,5967,5825,12861,12816] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [9211,9023,9199,9234,9236,9146,8952,8950,9174,9175,9197,8937,8999,9002] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [11697,11660,11662,11664,2530,2532,2533,2534,2558,2559,2561,11655,11688,11691,722,724,711,493,705,11696,11698,11622,733,11658,2517,270,2494,2487,2493,2537,2538,2510,2511,2512,11620,11623] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [11873,11796,11257,11258,11259,11260,11261,11262,11263,11282,11084,11966,11940,11891,11892,11238,11872,11081,11083,11859] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [6363,6382,6392,8119,8123,8125,8126,8129,8136,6364,6366,6368,6358,6398,6396,6397,8299,8348,8350,8305,8289,8288,8297,8295,6561,6563] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [2679,11586,11625,11614,11617,11618,11653,2662,2678,11556,10776,10777,2496,10794,2872,10782,10791,10829,2882] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [8589,8590,8592,8585,8588,8602,8449,8450,8547,8548,8540,8541,8542,8628,8546,8691,8704,8708,8709,8710,8888,8886,8887,8569,8579,8583,8707,8901,8605,8606] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [8427,8430,8429,8416,8431,8381,8406,6591,6593,6412,6413,6415,8459,8461,8377,8375,6581,6582,6822,6823,6815,8265,8266,8259,7045,7046,6574,6575,6577,6580,6409,8409,8410] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [10851,10852,10777,10208,10211,10240,10241,13022,13164,11614,11617,11618,11653,12991,13028] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [12592,5942,12499,12500,12501,12502,6106,5869,6140,6141,6142,12712,6111,6112,12730,5917,12719,5888,5889,12709,5887] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [11474,10424,10425,10298,10299,10462,10296,10297,10473,10474,10475,10389,10391,10392,10393,10749,9207,10388,10400,9206,9473,10402] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [7313,7135,7137,7073,7078,7075,7077,13356,13357,13387,13534,13532,13533,13536,13537,7332,7330,7331] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [5965,6007,6009,12558,5969,6005,6006,6064,12585,12562,5136,5137,5138,5979,5121,12555,12556,5960,5961] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [4206,3991,4375,4354,4357,4372,4369,13510,13509,4387,4388,4376,4012,4013,4205] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [51,55,57,1792,1964,1966,1793,23,22,41,1790] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [4132,9184,9186,9459,10436,10437,10439,10440,9189,10443,9207,9188] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [8001,8002,6348,8074,7235,7236,7237,7000,7991,6790,6792,6350,6986,6985] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [10811,3372,3350,3351,3371,3380,3382,9900,9932,3615,3367,3370,9912,3591,10810,10812] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [6734,6951,6952,6943,6944,6735,6920,6713,6919,7187,6904,7188] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [8971,8970,4192,4151,4206,8967,8958,4196,4146] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [277,375,278,618,619,158,159] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [13307,13236,13237,294,13213,13240,11716] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        