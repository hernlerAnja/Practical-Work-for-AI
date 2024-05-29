
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
        
        load "data/4CFW.pdb", protein
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
 
        load "data/4CFW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [267,269,422,661,1181,105,132,151,658,659,660,662,663,657,525,526,1109,1110,1081,718,99,150,93,94,95,97,252,667,681,687,702,683,703,695,684,1182,1093,1186,1088,1187,1189] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4731,4749,4750,4751,4695,4700,4702,4705,5257,5267,5284,4697,4852,5287,5295,4693,4694,4699,4696,5126,5709,5710,5781,5782,5786,5681,5789,4732,5693,5311,5318,5261,4869,5022,5783,5787,5260,5258,5259,5262,5263,4865,4867] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1269,1470,2241,2242,1468,1469,2232,2233,2240,2231,2238,2460,2501,2502,2503,2463,2464,2465,2466,1263,1250,1257,1260,1498,1499,1501,1502,1503,1504,1507,2486,2478,2482,2489,1528,2274,2280,2263,2481,1268,1479,1495,1490,1494,1255,1243,2528,1241,1248] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [3474,3505,3475,3480,4632,4635,4796,3466,3468,4606,4608,4609,596,598,599,4604,4623,3512,5157,5159,3055,3064,3065,5156,5251,4645,4646,5147,5148,4832,3503,3504,581,3470,578] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [498,1168,500,501,1151,671,1126,2400,533,534,7286,7284,7285,676,700,1123,1138,1141,233,7637,230,668,7268,7265] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [556,46,547,548,651,7630,7631,232,2,4,557,558,559,1,8046,196,8078,8065,8066,8067,8072,8073] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [3955,3585,2953,2956,2954,2622,2645,2646,2987,2980,2981,2984,2637,2632,3911,3881,3882,3834,3832,3836,3838,3883,3831,3842,3891,2774,3015,3898,3933,3934,3568,3579,3573,2597,2623] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [3627,3657,3659,3752,3592,2916,1275,1276,3628,1259,2930,1278,3593,1246,3779,3780,3759,2925,4489,4491,2922,2918] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [5843,5869,5868,6094,6095,6833,7048,7094,7052,7055,7044,7045,6101,6102,7047,6824,6823,5857,5860,5863,7066,7068,7069,5855] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [8325,5861,5862,8191,8223,8318,8319,8225,8317,5859,8159,8158,8193,8345,8346,9031,9040,5875,5876,5878,7482,8194,8189,8192] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [8139,8485,8507,8508,8460,8529,8145,8151,8457,8447,8449,8134,8398,8402,8404,8408,8400,7519,8144,7523,7163,7553,7547,7550,7211,7212,7544,7546,7581,8458,8463,7340,7198] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [1236,1237,1245,1246,1232,1235,1298,2931,2932,2934,3593,2930,3232,3233,1278,3627,1275,1276,3628,1259,1233] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [1470,2241,2242,1466,1469,1412,1449,1450,1885,1917,1919,2233,2240,2226,1867,1869,2234,1878,1479] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [5845,5896,5898,5859,5870,8159,8193,5875,5876,5878,5836,5837,5846,8165,8194,8161,8192,7799,7497,7498,7499,7496,8166] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [6992,5101,5100,5726,5751,5768,5291,5767,5741,5723,5268,5271,5273,5276,2700,2697,2699,2718,2719,2720,3071,4833,5132,5098,2702] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [2498,4157,3677,2472,3632,3664,3678,3665,3667,2500,2473,4153,4154] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [6069,6070,6057,6833,6834,6825,6470,6461,6511,6049,6050,6824] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [2199,1857,1858,1860,2208,2022,2023,1859,2215,2217,1807,2203,2204,2206,2207,2170,2193] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [369,409,411,1306,1212,3237,3246,1303,1304,1308,364,368,358,361,381,1204,382] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [7037,7038,5854,7064,7067,8233,8231,8198,8199,8241,8243,8244,7070,8714] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [2654,2655,2701,2702,2703,2704,5086,5134,5135,5085,2653,3049,3053,3056,2700] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [3855,3856,3858,3857,4364,4365,4366,4301,4331,4333,4330,3867,4335,4305,3878] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [2959,2958,3777,3780,3592,3620] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        