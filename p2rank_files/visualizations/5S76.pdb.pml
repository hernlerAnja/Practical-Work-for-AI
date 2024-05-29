
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
        
        load "data/5S76.pdb", protein
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
 
        load "data/5S76.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2465,2467,2469,2466,2468,2491,2470,2489,2490,2434,2436,2431,2432,3561,3709,3710,2594,2720,2721,3555,3558,3559,3560,2592,2586,2590,2987,2991,3443,3724,3725,3729,3426,3465,3454,3456,3064,3482,3065,3093,3057,3060,3553,3453,2849,3006,2578,3005,3010,3481,3032,3029,3023,3025,3027,3554,3040,3042,2634,2461,2464,3707,3708,2649,2651,3716] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1088,746,1101,130,131,255,1209,1210,1267,1268,1269,125,126,297,299,128,1087,1098,1099,710,711,1204,1207,1071,1208,1110,150,151,152,1129,1131,99,706,100,101,102,678,703,104,239,675,669,671,253,633,637,652,1203,504,651,656,251,247,367,1202,1281,1283,1284,1288,1275] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3822,3823,988,2272,2300,4276,4277,4278,4275,886,887,888,918,934,935,936,461,463,943,446,889,890,916,479,1176,470,471,472,1175,1177,856,858,860,971,945,987,989,3808,3802,4301,4302,4303,4340,4341,4310,4266,4268,4264,3809,3810,2326] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3820,3793,3770,3795,3797,4267,3714,3718,3720,3837,3849,3705,3690,3415,3416,3411,3412,3721,3724,3798,3764,3768,3930,3838,3901,3593,3671,3903,3672,3821,3822] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3759,3730,3746,3747,3748,4168,4169,3082,3084,3441,3443,3455,3456,3457,3458,3080,3450,3449,4042,4239,4252,4251] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1061,1264,1277,1279,1335,1273,1276,1280,1283,1333,1060,1464,1402,1403,1466,1363,1502,1056,1362,1329,1418,1385,1360,1839,1057,1065,1070] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1824,1311,1312,1313,1740,1741,1742,1803,1809,1810,1811,1289,1749,1326,1324,1088,1101,1102,1103,1086,726,728,1100,730,1094,1606] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2271,2270,2258,2260,2265,2254,2257,2259,959,1482,1484,1476,2264,961,972,969,973,1493,1447,1449,2248,2237,1491,1486,1445,1472,1517] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4645,4648,4649,4650,4651,4656,4660,4663,3329,3331,3909,3911,3883,3884,3885,3886,3912,3913,3919,3921,3922,4628,3316,3317,3945,4639,3320] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [684,1146,1147,1189,683,681,457,487,505,506,659,661,1144,1149,666,467,465,1148] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3014,3016,3011,3012,3013,3015,2851,2810,2837,2818,2820,3498,2850,3497,3035,3037,3038,3495,3020,2824] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [526,527,233,644,645,34,57,193,195,197,198,199,200,194,532] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4691,3297,3302,3304,2814,2816,3300,4662,3295,3331,3277] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2888,2889,2891,2981,2389,2385,2386,2977,2979,2980,2999,2982,2402,2978] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3196,3198,3517,3159,3166,3232,3165,3154,3103,3149,3104,3488] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        