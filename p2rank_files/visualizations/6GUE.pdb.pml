
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
        
        load "data/6GUE.pdb", protein
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
 
        load "data/6GUE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1115,1114,1042,1043,1021,1026,1119,1014,654,643,265,264,599,601,602,1116,1122,147,128,657,95,98,127,1015,248,90,91,92,93,145,146,89,626,641,634,642,1002,1003,465,466,623,600,596,597,598] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4623,4567,4568,4569,4570,5141,5147,5155,4622,4566,4572,4575,4584,5144,5117,5118,5119,5121,5122,5123,4741,4742,4725,4624,5127,5636,5637,5563,5635,5564,5640,5641,5547,5535,5643,4585,5163,5164,5171,5175,5178] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [7829,7832,7861,7862,7863,7833,7838,31,7826,7827,7828,487,7870,7428,192,228,7429,5039,7831,7830,5047,5048,1,4,499,41,42,496,497,488] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [5016,2993,2994,4705,5111,4518,4519,4669,5034,3427,3428,3435,5017,5019,5007,5008,2984,3425,3426,518,519,3394,3396,4478,4479,3403,4501,4505,4508,4480,4481,4492,4496,538] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2859,2862,3515,2855,2847,2851,2852,1178,1179,1192,1199,2863,3155,3156,2860,2861,1165,1166,1169,1170,1209,1211,1207,1208,2845,3511,3512,3549,3522,3665,3550,3668,1195,1194,3694,3695,3696,3670,2854,4367,4369,3675,4357,4355,3644,4381] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2305,7434,7435,7064,7063,7083,474,441,440,1101,1100,607,610,612,615,1071,1056,1059,1084,1072,639,233,451] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [2999,3000,4993,5010,5011,5128,4706,5131,2628,2626,2629,4710,5133,5136,5160,5596,2647,2648,2649,4958,4960,4961,5622,2633,5593,6759,5605,5580,4994] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2154,1400,2383,2385,1383,1802,1831,1804,1826,1830,1803,1382,1384,1839,1788,1797,2139,2153,2155,2369,1406,2384,2376,1396,1345,1346,2145,2146,2147] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [8130,8131,8802,8804,5728,5729,5713,7983,7984,7985,8014,8016,8103,8098,8100,8105,8079,8106,8110,8790,5715,5716,7294,7280,7282,7286,7287,7289,7290,7950,5732,5730] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [2882,2910,2913,2909,2944,3841,3489,3492,2916,3494,3500,2886,3505,3507,3742,3750,2575,3800,3802,3806,2574,2530,2532,3842,3819,3863,3789,3790,2558,2557,2561] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [7351,7009,7344,7345,7348,7317,8241,7342,7138,7379,8224,8234,8181,7000,7010,8237,8225,8298,7321,8177,8185,7940,7942,8226,8174,8175,7924,7929,8276,8277,7932,7935,8254] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3554,3598,3599,3600,3587,4042,4011,3589,2393,2436,2437,2438,2434,2435,4046,4043] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6868,6869,6870,6871,6872,6873,8481,8477,8478,8035,8446,8034,6825,6828,8024,6824,8022,7989,8033] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [6578,6587,6588,6591,6293,6291,6581,6583,6579,6223,6268,6269,5862,5863,5857,5859,6313,6314,6287,6288,6601,5866] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5686,5687,5690,5691,5699,5700,7958,5732,7590,7591,5730,5750,7959,7957,7296,7297,7298,7952,7956,7295,7294,5685,5752,5713,7984,7985,5728,5729] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [6312,6313,6314,6609,6601,6593,5917,6820,5866,6600,5903,5904,6599] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [2584,2978,2982,2581,2629,4993,4945,4946,4943,4944,4994,4995,2632,2631,2633] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4760,4765,4766,4767,4750,4751,4616,4746,4608,4609,4610,4611] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        