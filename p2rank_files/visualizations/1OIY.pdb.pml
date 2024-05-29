
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
        
        load "data/1OIY.pdb", protein
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
 
        load "data/1OIY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3413,2971,2972,3381,4996,4998,3406,4487,5011,4459,4460,5013,3404,3405,4498,5094,4484,4497,4471,4684,4648,3369,551,3370,3371,3372,3373,3374,555,4457,4475,4477,4478,4479,3342,537,538,4986,4995,4987,4989,5093,2962] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [1062,646,1063,661,662,93,640,145,147,263,264,146,1039,677,1034,108,100,107,95,96,98,101,89,92,94,1134,1046,1135,1139,1140,1142,381,265,1141,1041,1036,248,626,643,621,622,618,620,484,485,617] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5144,5545,5145,5146,5147,5153,5160,5517,5546,4557,5619,5617,5618,5622,4721,4563,4564,5625,5529,4965,4601,4602,4603,4704,4548,4549,4556,4550,4551,4552,4553,4554,5109,5121,5123,5126,5129,4545,5100,5101,5103,5105] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [7878,7879,4,7880,7857,7848,7851,7852,28,31,7881,7882,515,516,518,7818,19,22,23,7816,7845,7846,7847,192,506,507,7447,7448,42,228,5019,5020,5018,5017,7850,5034,5035,41,2,533] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [2823,2829,2832,4345,4347,1212,1223,1227,3490,3560,3647,3528,3529,3493,3674,3675,3644,3623,4359,4333,3134,1231,2837,2838,2833,2825,1229,1190,1199,1188,1189,1198,1228,1249,1251,3133,1185,1186,3501,2841,3494,3503] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [1852,1853,1854,1813,2168,2169,1810,1819,2176,2177,2167,2161,1417,1420,1403,1416,1848,1826,1824,1825,1426] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [1079,7101,7102,7103,1092,627,630,7082,7084,229,628,7453,510,1121,457,459,1120,460,470,865,1104,2326,2327,492,660,1076,1077,1085,635,648] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [3842,3784,3768,3769,3719,3721,3820,3821,3798,2547,2548,2530,3474,3477,3479,3480,2863,3486,3723,3725,3729,3469,2860,2887,2888,2891,2894,2922] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [8005,5702,5710,8004,5698,5697,8034,8123,8124,8150,8120,8151,8130,8823,7305,7301,7308,7969,7970,5711,7299] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [6862,6891,6657,6849,6850,6854,6917,6878,5679,6889,5680,5924,5925,5932,5704,5705,6875,5696,6892,5699,5931] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [7028,7029,8245,7363,7364,7367,7370,7336,7157,7361,7398,8199,8260,8244,8254,8255,8201,7015,8205,7962,8197,8318,8296,7945,7955,7340,8297,8274] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [2603,2604,4972,4937,4940,5604,4939,5113,5603,5562,5577,5587,2620,2621,2622,5118,5110,2601,2599,2602] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [330,336,341,333,3111,368,348,1157,1159,1163,1165,313,3113,370,1259,1261,1256,1277,3138,3169,3170,3147] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [3533,3566,2406,3568,2380,2409,2379,3565,3989,3578,3579,4023,4024,3576,4027,2416] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [5886,6300,6305,6657,6658,5900,5899,6648,6649,6291,6334,6333,6307] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [2143,2134,1799,1801,1958,1957,2150,1748,1956,2138,2139,2140,2141,2142,1988,2104,2105,2127,2128,1986,2106] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [1213,1216,1222,2372,2176,1210,2368,2369,1196,1194,1221,1441,1442,2373,1201] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [4821,4847,4848,4828,5640,4850,5642,5646,5742,5652,5739,5744,7623,5643] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [1303,691,692,1550,1335,1336,1322,1324,1021,1019,1030,1035,693] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [6901,8495,8499,8054,8501,8503,6887,6861,6890,8053,8055,8042,8044,8041,6860] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [574,594,595,57,58,60,274,576,273,156,157,158,11,12] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3493,3669,3672,3673,2866] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        