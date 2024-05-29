
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
        
        load "data/4IZ5.pdb", protein
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
 
        load "data/4IZ5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7099,7100,7101,7102,7088,7095,12502,12503,12504,7058,7064,7065,12505,12506,12542,7089,7142,12533,12534,12254,12255,12256,12257,8523,12264,12265,6066,12253,8512,8659,7097,7126,7123,7125,8534,8535,12232,12244,12240,12245,12249,8641,8644,8650,8653,8655,12467,8654,8658,8519,12412,12474,12476,12478,12465,12501,12497,12498,12490,12491,8516,6082,7067,7059,6075] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [5797,5807,11718,5680,5682,5813,5816,5817,5818,5821,11570,11571,5679,11559,11561,11562,11808,11809,11810,11811,11780,11804,11807,11782,11771,11796,11803,11773,10309,11798,11541,11546,11555,11797,5697,5695,5692,5686,5675,5683,9902,9934,9935,9936,9903,9904,9939,9937,9938,9925,9960,9962,9963,8919,11563,9901,11812,11848,9926,11839,11840,9979,9895,11538,11550,11551,5698,8902,8903] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [13653,13893,13894,13652,13637,13641,4269,4270,4235,4236,4237,4238,4260,4259,13800,4294,4296,4297,151,13855,32,3236,4271,4272,4273,3237,3253,13,16,19,20,26,29,13644,4268,142,141,147,150,31,152,155,138,13862,13853,13930,13885,13886,13889,13890,13891,13892,4313,13921,13922,13866,13864,13620,13632,4229] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [2987,2988,1457,1460,1459,13159,13163,13196,13197,13199,13200,13195,13198,13226,13227,13228,13236,13184,13185,13191,13192,1806,13161,1429,1431,1433,1422,1399,1423,1392,12926,2992,400,12950,2857,1434,1435,1436,416,12943,12947,12958,12934,12938,2850,2853,12959,13106,2978,13168,13170,12929,12930,2863,2866,2979,2868,2984,2989,1476,1801,1810,1804] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [9591,9593,9590,11107,11108,13456,13478,10906,10903,10897,13701,13703,13474,13476,13480,13487,13510,13475,13454,13453,9582,9583,10116,10117,10118,9607,9840,10887,9584,9586,10892,9608,9839,13422,9594,13488,13734,13738,13763,13766,13765,13739,13450,13767,13448,10889,10891] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [5889,5841,5852,5888,5890,5855,6005,6006,6488,6843,6844,6852,6869,6944,6468,5836,6517,5837,6455,6460,5859,5860,6952,5868,6945,6946,6949,6950,5989,6444,6439,6868,6457,5842,5844,5845,5839,5840] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [8703,9689,9781,9786,8842,8843,9276,9705,9706,8696,9787,9789,8727,9680,9681,9325,9353,9354,9313,9314,9298,9311,9312,8705,9688,9668,9690,8673,8674,8725,8726,9294,8826,9297,9305,8682,8689,8692,9281] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [222,224,1177,173,174,176,179,822,850,851,186,1178,340,773,796,1202,223,1203,339,1278,200,1186,1283,1284,1286,189,193,171,789,323,170,794,791,795,778,175,194,209] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [3176,3177,4115,4039,3026,3037,3039,3023,3016,3059,3061,3030,4120,4121,4123,4024,4023,3060,3160,3615,4015,3659,4014,3688,3687,4040,3648,3647,3007,3008,3631,3628,3632] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [52,53,54,55,3199,3200,3034,3033,347,349,362,363,3184,3185,369,3186,2891,184,214,217,210,183,197,207,3044,3047,3019,3020,3021,3025,2890,2892,3051] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [8700,5719,5720,5721,8872,8873,8865,8866,5848,5849,5850,8687,8710,8686,8713,8849,8850,8556,8557,8851,8852,8558,8555,8720,6012,5876,5880,5873,6010,6013,5862,5863,6035,6028,6036,6029] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [1321,1323,1138,1139,1394,1417,1385,1411,1367,1365,1364,1369,1389,1119,1591,1592,1595,1597,1341] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [4204,4206,4178,4201,4202,3956,4166,4175,4222,4226,4217,4220,4429,4432,4434,4381,3976,4156,4158,3975,4253,4254,4160,4252] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [3815,4076,3747,3777,3778,3779,4061,4060,4063,3694,3695,3696,3729,4048,3816,4046,3651,4045,4051,4057,4052,4058] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [10095,10098,10100,9883,9867,9868,9870,9872,9832,9841,9844,9622,9641,9642,9919,9918,9822,9824,9910,9826,9888,9892,9897,9914] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [5858,5859,6952,6118,6949,6950,6831,6851,6853,6815,6832,7121,6842,6843,6844,6845,6852,7106,7116,7120] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [11544,11676,11717,11567,11667,11668,11572,11566,11568,11633,11635,11523,11524,11603,11575,11584,11665,11715] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [12262,12261,12218,12217,12238,12271,12269,12220,12283,12358,12360,12327,12329,12359,12361,12370,12273,12298,12297,12409,12411] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [12955,12963,12911,12932,12912,12977,13055,13053,13023,13064,13021,12956,13056] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [9689,9786,8696,9787,9789,9680,9681,9688,9652,9668,9669,9682,9690,9958,8693,8689,8690,8691,8692,9943] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [7046,7051,7060,6989,7033,7035,7261,7258,7030,7081,6805,7070,7077,6987,7007] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [193,1165,1166,1440,1455,452,1149,1186,1286,1185,1187,1178,1179] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [10088,10498,10842,10843,10480,10853,10071,10090,10036,10854,10108] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [13649,13654,13606,13609,13685,13657,13608,13626,13605,13715,13750,13747,13749] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [4277,3030,4120,4121,4123,3986,4003,4292,4024,4023,3026,3027,4002,4016,4015] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [14030,14006,14010,14011,13849,13445,13449,13447,13875,13467,13468,13442,13444,14000,13479,13503] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [3798,3799,3801,3802,3803,3804,4075,4067,5330,5332,4076,3777,5334,3765] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [841,839,1491,837,1164,1173,1179,1502,1503,1467] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [6505,6507,6503,7378,6506,7425,7157,7133,7168,7169,6845,6839,6830] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [12079,12080,12059,12061,12642,12461,12487,12618,12620,12115] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [997,998,1031,1032,2539,967,1005,965,2493,578,579,1033,589,590,1007] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [6244,6255,6697,6698,6699,8205,6663,6664,8156,6673,8159,6671,6256,12722,6631,6633] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [11025,11064,11065,9559,11046,13702,13698,13508,13511,13531,13695,10907,13690,13693,13543,13544,13547] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [4832,5187,5188,4814,4424,4442,4443,4405,4370,4369,5177,4422] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [487,1279,1280,1283,340,339,774,488,489] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        