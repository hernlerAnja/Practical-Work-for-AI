
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
        
        load "data/2PZY.pdb", protein
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
 
        load "data/2PZY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6241,6242,5834,6340,6238,6259,6260,6261,6348,6349,6297,6353,5842,6446,7095,7097,7096,6481,6350,6354,6356,6229,6231,6445,5860,5853,5851,5852,5862,5512,5514,5497,5510,7069,7070,7071,7072,7068,7033,7106,7008,7004,5859,5861,7103,7104,7105,5509,5549,5548,5550,7003] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [8327,8447,8448,8450,8451,8454,8457,8343,7561,7652,7918,7683,7948,7949,7951,7933,7932,7380,7381,7375,7379,7428,7429,7373,7430,7377,7378,7544,7383,7385,7386,7391,7392,7559,8315,7981,8344,7952,7958,7374] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [5449,5448,5285,5453,5060,5465,5471,5885,5886,5468,4944,4945,4946,4895,4896,4899,4889,4890,4891,4893,4894,5199,5201,5998,5993,5996,5997,5999,5869,4902,4908,4901,4907,5075,5990,5857,5989,5991] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [3536,3564,2568,2569,2574,2575,2576,2578,2625,2581,2586,2587,2754,2580,2756,2847,3548,3671,3672,3675,3668,3669,2570,2623,2624,2573,2739,2572,3143,3146,3147,3148,3144,2880,3127,3128,2964,3149,3150,3132] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [1310,1311,1312,1178,813,1206,1207,543,790,791,795,287,402,233,235,231,232,802,807,810,806,1320,1317,1190,241,244,250,1313,1314,288,417,418,419,238] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [2763,2764,3049,3051,3053,3105,4684,2632,3047,4672,4674,4685,3031,2483,3104,4722,2535,4670,4671,4679,4681,4682,4686,4687,4691] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [3246,3320,3321,3242,3245,3208,3576,3205,3316,3317,3318,3319,3347,3349,3574,3220,3210,3611,3612,3629,3614] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [2094,2101,2104,2106,2083,2084,9241,1084,2113,1541,2095,2107,1511,1513,1514,1081,1082,8968,8969,8982,8979,9210,1476,1494,9218,1488,1521,2061,2068,9242,9215,9240,1520,1517,2120] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [9026,9165,9166,9167,9168,2157,2123,2154,2155,2125,2158,2159,9143,2121,8987,9005,9007,9000,9190,9196,9204,2129,9161,9163,9164,9202,2105,2106,2126,2127,9209] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [5541,5895,5897,5528,5531,5935,5950,5526,5565,5567,5641,5953,5637,5663,5668,5670,5269,5692,5693,5604,5638,5658] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [1274,873,1271,1256,980,983,909,1013,1014,1285,1216,1218,1281,989,925,991,923,611,881,1217,868,871] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [1421,1422,1449,8287,8273,8274,1411,8276,8277,1448,1426,8688,8725,8689,1416,1419,1406] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [8411,8382,8393,8408,8409,8015,8126,8128,8353,8355,8422,8151,8114,8122,8116,8119,8418,8150,8025,8095,8097,8100,8051,8012,8013] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [6155,6156,6175,6173,6785,5763,6190,6195,6196,5765,6220,5761,6192,6194,6792,6799,6786,6774,6780,6783] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [7123,7422,6392,6394,6395,6396,7568,6391,6378,6439,7857,7877,7569,7855,7858,6436,7423,7121,7124,7122] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [5371,5373,8876,8878,8879,5367,5380,5379,8915,8944,8918,8919,5390,5391,5392,5393,8937,8939,8934,8936] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [9263,9266,9268,9269,9275,9282,8679,8669,8221,8223,8671,8672,8673,8678,8675,8219,8650,8651,8661,8682,8643,8639,8676,8703] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [3921,3908,3910,3938,3939,3976,4019,4020,4027,4028,3919,3940,4104,4068,4103,4035,4032,3521,3518,3532,3540,3513,3531,3946] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [1677,1801,1802,1675,1550,1552,1674,1563,1559,1562,1581,1582,1163,1174] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [8825,8779,8780,7994,9490,8806,7993,8824,8320,7980,8319,8309,8310,1401,1399,7996] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [3976,4020,4021,3975,4002,4629,4630,4625,4627,3189,3196,3228,3191,3193,3541] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [1066,1100,1091,8905,8906,8917,8945,1092,1093,5378,5381,51,5377,5380,588,8895,55,589,587,40] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [7569,7852,7854,7856,7296,7340,7339,7341,7568,7552,7288,7909,7836] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [1662,1663,1173,1618,1617,852,854,856,2328,1644,838] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [5182,5183,5184,4764,3025,3026,2462,2463,4746,4745,2825,3083] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [601,602,1031,1034,584,586,587,8895,8894,8898,1064,1066,1030,1062,1063,8901,8902,8904,588,590,591,595] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [746,2861,2863,2862,2428,689,126,2445,2424,2425] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [1495,1497,8655,8657,8659,1465,1472,9219,9225,1466] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [5085,5068,5425,64,4856] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        