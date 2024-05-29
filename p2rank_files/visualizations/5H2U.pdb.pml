
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
        
        load "data/5H2U.pdb", protein
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
 
        load "data/5H2U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1069,1074,1075,1304,156,158,1088,1098,1099,1111,1112,1097,734,735,738,742,743,191,192,132,134,135,168,170,1200,1198,1199,1209,1215,1214,1216,1225,1227,309,311,1204,1205,688,308,303,672,669,566,482,582,712,715,716,1126,1127,1128,570,687,292,295,294,711,293,1101,143,767,768,137,131,147,1328,1336,1335,1100,1102,1329,1365,1362,1364,1361,1363,1402,1399,1403,1404,1396] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [6752,7720,7721,7731,7732,7982,7694,7695,6800,6801,7819,7820,6920,7823,7824,7825,6903,6901,6902,7301,7302,7196,7826,7829,7983,7981,6756,6779,6781,6912,6917,6918,7283,7286,7948,7949,6765,6767,7847,7955,7956,6740,6746,6749,6739,6741,6744,6743,7719,7717,7718,7708,7747,7746,7748,7815,7184,7816,7818,7180,8280,7373,7722,8023,8224,8024,8016,8017,8019,8022,7357,7407,7356,7329,7349] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4607,5171,5511,5514,5515,5516,5526,5205,5154,5179,5155,5146,5147,5150,4565,4558,4562,4585,4587,4571,4573,5617,5489,5778,5779,5740,5741,5747,5749,5751,5753,4606,4709,5122,5127,5540,5541,5124,4982,5542,4707,4708,5099,5100,5135,4723,4724,4725,4726,5616,5084,4994,6083,5780,4555,4552,4545,4546,4547,4549,4550,5814,5816,5819,5820,5821,6027,5502,5610,4978,5488,5782,5813] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3409,2515,2520,2521,2523,2382,2384,2403,2404,2355,2349,2891,2892,2786,2873,2876,3400,2774,3331,3333,3302,3332,2939,2942,2946,2770,3403,3316,3317,3303,3305,3306,3404,3280,2691,3432,2346,2342,2343,2344,2347,2506,2915,2919] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3653,3662,3974,3976,3977,4011,5867,3945,3652,3658,6176,5796,5798,5859,5860,5863,5865,5858,5869,5797,5724,3660,6145,6149,5868,6211,3589,3590,3591,3565,3517] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3531,3533,3534,3572,3540,3542,3544,2362,3279,3280,2368,2370,3304,3305,3306,3307,3316,3317,3293,2382,2355,2359,3609,3612,3613,3575,3614,3571] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [8272,8463,8248,8466,8469,2902,2904,2906,2795,2797,2798,2485,8452,8454,8455,8459,8305,8306,8273,8215,8214] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2013,2028,2029,4369,4370,2010,2011,2019,2020,1429,1430,1459,1991,2007,2018,4329,4341,1472,1495,1494,1473,1474,1476] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [5687,5724,5902,5904,5905,5479,5651,5690,5475,5477,5715,5903,5683,5685,5644,5713] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3268,3270,3440,3267,3702,3703,3705,3437,3704,3506,3516,3479,3480,3483,3476,3517,6147,3446,3266,3438,3461,6151,3677] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2748,3122,4400,4402,4404,3095,2757,3132,2747,2758] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1063,1232,1065,1233,1274,1312,1301,1311,1313,1303,1485,1487,1488,1486,1278] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        