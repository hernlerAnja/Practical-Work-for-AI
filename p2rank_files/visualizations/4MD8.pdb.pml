
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
        
        load "data/4MD8.pdb", protein
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
 
        load "data/4MD8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3832,3833,3834,3835,3456,3467,3483,3836,3465,3871,3873,3460,3462,3470,3415,3417,3523,3498,3524,4425,3827,3800,3825,3826,3828,3829,4159,4399,3865,3831,4157,4156,3804,6252,6257,6259,6261,15384,15694,15249,15675,15676,15677,15398,15409,15408,15399,15400,15402,15208,15218,15220,6251,4435,4436,4433,4158,4160] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [3060,3062,6996,6997,7006,7291,7272,7274,961,1234,958,959,960,1226,957,7273,7254,1236,1237,3058,666,3052,3053,6995,7005,6846,626,627,629,630,633,628,1200,601,634,307,605,632,635,636,637,282,308] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [9759,9761,9656,9760,10173,10174,10175,10560,10559,10133,10127,10128,10130,10132,10657,10659,10661,10662,10665,10669,10531,10544,10658,10660,10675,9594,9590,9591,9592,10159,9997,10156,9657,9641,9597,9600,9603,9775,10667] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [6956,6958,7356,6853,6957,7858,7854,7856,7857,7741,7859,7862,7863,6789,6791,7365,7369,7371,7756,7757,7728,7353,6972,7329,7330,7325,7327,7192,7194,6838,7864,6799,6800,6808,6809,6793,6794,6795,6854,6973,6787,6788] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [5422,5425,5426,5427,5428,5429,5424,12611,12612,6032,5459,5420,6009,6018,5419,5458,5456,5751,5749,5750,5752,5992,4664,4666,4668,12598,12601,12602,12878,12879,12880,12897,12452,12603,4658,4659,5753,6026,4656,6028,6029] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [6918,6934,6935,7336,7337,7338,7339,6909,15561,15562,15572,15573,7214,7213,7219,7220,7221,7222,6895,6950,6728,6739,15535,16055,14993,14995,15564,16020,16022,16024,16054,14957,16045,16047,15551,15563] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [15359,15361,15730,15256,15257,15360,15733,15375,15732,16257,16259,16260,16261,16266,16267,16131,16134,16144,16132,15774,16159,16160,15775,15194,15190,15191,15192,15595,15597,15756,15759,15241,15202,15203,15196,15197] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [13362,13363,13460,13462,13334,13463,13337,13347,13335,12933,12935,12936,12576,12578,13464,13465,13468,13469,13470,12459,12460,12563,12564,12978,12977,12393,12800,12962,12415,12444,12401,12403,12405,12406,12399,12400] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [1465,1467,1469,10094,10077,2225,10075,10076,2553,2827,1459,1460,2819,2552,1457,2259,2220,2551,2221,2793,1900,2194,2195,2227,2228,2229,2223,2226,1925,1926,2198,2550,9808,9809,9799,9800] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [15215,16119,16120,15224,15228,15230,15232,15451,16104,16292,16293,16419,16426,15241,15202,15203,15212,15377,16266,16267,16268,16284,15257,16144,16132] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [6838,7864,7865,6800,6809,6812,6816,6821,7701,7889,7890,8016,7881,6826,6827,7048,6829,6825,7716,7717,7729,7741,7863,6974] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [9793,9888,9776,9777,10666,10667,10668,10684,10685,10687,10692,10693,10504,10520,10519,10532,10535,9641,9603,9619,9621,9630,9632,10819,9851,9615,9628,9612,10544] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [12427,12431,12433,12415,12418,12422,12435,13495,13496,13307,13323,13622,13322,12444,12406,13347,13348,13335,13334,12580,12579,13469,13470,13471] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [1501,1541,1543,2949,1569,1438,1439,2857,2628,2630,2847,2859,2852,2855,2884,2663,2664,2665,2666,1498,1542] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [5424,5014,5016,5018,5466,5461,5464,5465,5425,5426,5427,12611,12612,5061,5063,12426,5071,5068,5057,5066,5044,5456,12603,12605,12417,12411,12452,12453,12601,12602,12419,12421] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [2771,2776,2763,2765,2764,1711,1706,1730,1704,1729,1759,2772,2778,1761,2804,2805,1687,1689,2154,2158,2802] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [4928,4886,4929,5353,5357,4905,4910,5975,4888,4958,4960,5977,6001,5963,5971,6003] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [9799,9800,1864,9614,9616,9618,9608,9809,1815,1867,1872,1869,9620,9623,1862,1845,9649,9801,9802,2225,2265,2267,2266,2268,2257,2259,1817,1819,2227,2228,2226] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [1183,111,71,112,565,88,561,566,541,69,1172,93,102,103,1170,1171,1179,1185,1211,1212,570,567,1209] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [197,199,201,254,249,252,255,227,240,251,635,632,672,673,674,630,633,634,3060,3062,6996,6997,7006,666,6815,6995,246,7005,6846,6999,6805,6811,6813] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [3760,3764,3765,3285,3287,3326,3327,3328,3304,4382,4378,4370,4388,4410,4411,4384] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [12427,12431,12433,12415,12418,13487,13488,12435,13495,12596,12691,12655,12444,12580,12579,13469,13470,13471] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [11057,10234,10236,11083,11084,10524,10198,10549,10550,10551,10331,10568,10375,10334,10260] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [7431,7433,7457,8280,8254,7528,7531,7765] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [4740,4768,6148,5829,6054,6056,6046,6051,6083,6094,6053,4700] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [912,1025,1113,1116,798,799,807,808,811,130,132,791,1156,1125,1129,1154,1121,1122,1120] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [13063,13137,13354,13371,13178,13134,13039,13886,13887] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [4353,4355,4320,4328,4321,3990,3333,3346,3997,3998,4006,4007,3348,4224,4312,4315] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [15835,15836,16683,16150,16151,16657,16684,15931,15934,15860,16168,15975] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [15830,15831,15833,15835,15836,16682,15829,16126,16674,16676,16673,16729,16730,16731,16732] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [16752,16757,16850,16743,16748,16749,16750,16885,16849,17205,16722,16852] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [8802,8446,8482,8340,8318,8319,8346,8347] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [5600,5606,5590,5591,5599,5914,5817,5908,4949,5946,5948,5921,5913,5917,5916] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [6599,6626,6628,7903,7905,7935,7937,7958,6618,6611,6616,6608,7039,7904,7040,6638,7957] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [15019,15041,15011,15002,16338,16340,16360,16361,15029,15031,16307,16308] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [12635,12636,12662,12663,12903,12904,12295,12851,12884,12274] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        