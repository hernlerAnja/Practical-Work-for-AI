
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
        
        load "data/7KD6.pdb", protein
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
 
        load "data/7KD6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10939,10940,10941,10960,10961,11112,11250,11251,11252,11253,11261,10923,11247,10945,10946,10947,11270,5857,6458,5858,6451,6452,6454,6460,5855,5860,5849,5041,11254,6462,6463,10922,10976,10979,10980,10981,10982,10983,10984,11068,11071,10971,10444,11094,11095,11081,11080,11124,6323,6324,6343,6344,6321,6322,6305,6306,6495,6636,6644,6637,6633,6634,6635,6359,6362,6363,6364,6370,6348,6367,6477,6478,6365,6366,5843,11075,6630,6328,10458,10450,10456] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1190,1157,1213,1142,3862,3863,624,625,626,3854,3855,3856,1189,3777,3770,3771,3847,3848,3844,1187,1766,1767,1179,1180,582,3783,3786,3997,1181,1222,1224,414,1819] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [17846,16088,16093,16094,17747,17748,17741,17761,17763,17764,17765,17769,17774,17779,17770,17775,17778,16515,16507,16277,16279,16272,16098,17819,17820,17821,17823,17824,17825,17844,17783,17784,17863,17782,17986,17988,16114,17799,17979] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [8579,8581,8744,8746,7042,6877,8582,8583,7034,7035,7269,8499,8602,8603,8604,8505,8506,8522,6858,6861,8540,8542,8621,8537,8523,8521,8527,8528,8532,8533,8519,7278,7270] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [5824,5847,5856,6454,6460,5822,5823,8486,8483,8422,8425,8409,8410,8415,8416,8501,5814,5815,8502,8489,8492,5048,5216,5258,5260,5211,8493,8494,8495,5776,5259,5791,5792,8612,5813,5821,6400,6401,8636,5811] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [15087,15111,15055,15056,17650,15040,14522,14523,14524,15078,15079,17652,17744,17651,17664,17743,15088,17667,17658,15636,15637,17878,14480,15696,15120,14312,15690,17727,17728,17725,17729,14475,17736,17735] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [13217,13218,13219,13220,13221,13222,13223,13242,13243,13244,13394,11488,13384,13386,13139,13177,13180,13181,13182,13261,11890,13161,13162,13167,13168,11469,11653,11645,11646,11471,11472,13159,13172,13173] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [11077,10425,13126,13127,13065,13049,13050,13056,13062,10448,9649,10377,10457,10459,10392,9860,9861,13141,13142,9817,13133,13134,13135,13123,11017,11018,13276,10422,10415,10416,10423,10424,11071] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [3888,3889,3894,3902,3942,3938,3940,3941,4107,2648,3898,2411,2403,2404,3943,3944,2239,3901,3880,3903,3860,3867,3883,3964,3965,3963,3884,3982] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [13662,13664,13743,13573,13580,13574,13575,13641,13642,13648,13663,13647,13653,13742,13651,3521,3522,13581,13583,3340,3341,3366,3369,3380,3385,3283,3285,3243,3244,3249,3250,3387,3383,3384,3386,3345,3346,3281,3264,3275,3277,3561,3252,3344,3291,3295,3342] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [1709,1710,2002,1672,1689,1690,1998,2000,2001,15872,15560,15541,15558,15559,15578,15579,15580,15699,15700,1999,15714,15600,15601,15602,15598,15713,1731,1732,1830,1843,1844,1873,15866,15869,1730,1671,2010] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [13653,13742,13748,13758,3460,13762,13759,13650,13651,13775,13749,3435,13647,3243,3244,3245,3249,3250,3253,3479,3465,3383,3384,3386,3247,3410,3424,3434,3433,3426,3427,3425] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [12525,12608,12611,12629,4385,12626,12533,12537,12517,12519,12523,4401,4402,12790,12622,12625,12783,12781,12782,12494,12506,12492,12485,12486,12491,12628,12669,12582,12583,12586,12584,12607] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [1095,1096,15149,1094,1698,1699,1705,14325,14317,14322,14334,14335,14336,1681,1092,14321,686,682,696] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [6335,10461,6328,6329,6330,6331,9642,6333,10458,10450,10456,10459,10464,11075,6653,6344,10976,10980,10984,11071,10971,10465,10444,10443,10445] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [15568,423,14594,14600,419,15569,427,433,436,437,438,15167,14597,14598,1251,14986,14990,14992,14993,14584,14580,14983,14593,15551] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [9662,9671,9672,9673,9654,5903,6332,6333,9656,9658,5728,5729,5730,10486,5726,5902,10484,5320,6315,6339,5319,5325,5330,5316,5318] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [12665,12671,12677,4486,4500,12675,12628,12669,12495,12492,12485,12486,12491,12629,4385,12626,4391,4389,12625,12635] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [9931,10949,10950,10956,5885,10330,10936,5053,5055,5056,5057,5061,5070,5071,5072,9921,10930,10932,10327,9917] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [15694,15696,15122,15127,15113,15118,1694,15119,15121,15120,15108,15106,15107,15124,15690,1710,14305] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [17516,17529,17533,17534,17589,16969,17566,17573,17588,17575,17171,17532,16965,17168,17169] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [1215,15564,1221,1223,1224,15565,15889,407,1729,1820,1209,1226,1229,15571,1230,15580] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [4084,4086,4287,4261,4264,4285,4258,4199,4228,4077,4168,2427] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [17813,17814,17974,17945,18133,18116,15449,18113,18131,15447,15454,17884,17885,17946,17947,15448,15445,17874] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [13343,13344,13345,13210,13212,10827,10831,10829,10830,13582,13599,13579,13282,13283,13272,10832,10835,13277,13200,10828] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [17132,17149,17151,17251,17252,17254,17255,17112,17111,17117,17118,17291,17113,17209,17234,17237] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [18277,18278,14154,14183,14184,13974,13975,18269,13972] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [4093,3932,3933,4066,4337,3921,3993,3995,3998,4003,4004,1576,1577,1578,1580,1581,1584,1579] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [17967,18081,18083,18068,18078,18079,18047,18049,18042,17958,17956,16295] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        