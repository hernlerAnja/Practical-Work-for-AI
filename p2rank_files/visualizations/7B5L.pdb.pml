
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
        
        load "data/7B5L.pdb", protein
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
 
        load "data/7B5L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10554,10556,12070,12198,12176,12199,12066,12055,12061,12182,12203,12214,12211,10360,10552,10570,10573,10574,10575,10576,10577,10578,10579,10358,10553,10559,10182,10175,10176,10178,9993,9990,10007,12050,12213,10356,10171,10174,12064,11882,11883,11884,12332,12333,18338,18335,18337,12178,12351,12352,12353,10002,10006,10566,12170,12175,10769,10770,10791,10561,12073] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [11162,11164,11166,11597,11596,11592,10949,10955,11604,11606,11167,11577,11586,11589,11591,12088,12065,12087,11567,11590,10548,10752,10533,10547,10534,10356,10355,11562,11563,11180,11181,10957,10958,10967,10970,11195,11374,11373,11561,12079,12122,11161,11359,11360,11557] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.498,0.902]
select surf_pocket3, protein and id [14766,14769,14770,14771,14789,14768,4246,4247,4266,15325,15326,3976,14903,14907,14786,3960,3750,3776,3778,3779,4234,4235,3975,3965,3966,3971,3959,3961,14987,4214,4212,3688,14911,3689,3690,3726,3748,3747,3992] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.357,0.702]
select surf_pocket4, protein and id [8932,3600,3607,8966,8403,3601,3267,3317,3315,3316,3266,3293,3295,3296,8393,8431,8432,8392,8399,8400,8433,8994,9004,3324,3325,3313,3309,8435,3269,8372,8369,8394,8395] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.416,0.902]
select surf_pocket5, protein and id [5882,5880,5912,5881,5903,5940,6979,7009,7036,7140,7141,7157,6130,6131,5939,6105,6103,6104,7027,7156] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.294,0.702]
select surf_pocket6, protein and id [20233,19936,20228,20229,20232,20255,20155,20124,20145,20147,20148,20149,20151,20152,18996,20191,20192,20195,19130,19131,19373,19033,19132,20166,20197,20198,19315,19937,20182,20183,20181,20167,19311,19336,19343,19334,19337,19339,19345,19370,19371,19372,19003,19004,19309,19312,19313,19929,18988] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.380,0.361,0.902]
select surf_pocket7, protein and id [7712,7950,7709,7936,7949,7951,7937,7902,7938,7942,7928,7702,16265,16270,16272,16273,16294,16317,16340,16315,16318,7906,16344,16341,7905,7881] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.329,0.278,0.702]
select surf_pocket8, protein and id [21446,16719,16808,16807,16811,16813,16814,16795,17601,17602,17603,17616,16838,16841,16842,17064,17065,21435,21436,21438,21427,21431,21432,21437,16716,16718,21416,21419,21421,21417,21418,16701,16702,21384,21386] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.463,0.361,0.902]
select surf_pocket9, protein and id [13713,13711,13544,13725,6923,6926,6928,6930,5829,5825,7106,7107,7108,7058,7101,7103,7104,7105,7102,13558,13543,7057,6952,6954,6953] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.388,0.278,0.702]
select surf_pocket10, protein and id [16281,16282,16283,16284,15967,16257,7720,7722,16286,16044,16045,16261,16221,15969,16258,16259,16219,16191,16029,16040,16043,7704,14053,16030,7716,7736,16065,16066,14043] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.541,0.361,0.902]
select surf_pocket11, protein and id [13177,13277,9252,9315,9334,9483,9484,9250] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.451,0.278,0.702]
select surf_pocket12, protein and id [21299,16610,16680,16679,16692,21192,21298,21273,16681,16683,17072,17071,21153,21151] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.620,0.361,0.902]
select surf_pocket13, protein and id [4548,5027,5028,14656,14657,14685,14686,4570,4406,4407,4414,4416,4843,4418,4846,4391,4393,4417,4415] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.514,0.278,0.702]
select surf_pocket14, protein and id [17651,17660,17661,17662,17657,17658,18891,19989,18850,18851,18852,18846,18859,18862,18863,18864,18892,18861,17668,17880,17663,17887,18866,18867,18827,19986,20019,20440] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.698,0.361,0.902]
select surf_pocket15, protein and id [6381,15366,15346,15347,15345,6532,6533,6534,6538,6570,6571,6572,15839,15841,15816,6535,6536,6537,15341,15842,6543,15831,6352,6358,6361,6362] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.576,0.278,0.702]
select surf_pocket16, protein and id [20100,20076,20079,20101,20760,20762,20718,20758,20748,20746,20772,20132,20133,20705,20707,20075,20750,19227,19276,19262,19307,19274,19277,19280,19281,19283] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.780,0.361,0.902]
select surf_pocket17, protein and id [19583,19584,19585,17646,19951,19288,19289,19290,19291,19324,19908,19915,19954,17674,17676,17698,17650,17651,17659,17660,17661,17421,19574,17696,17645,19944] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.635,0.278,0.702]
select surf_pocket18, protein and id [12511,12531,12535,12503,12751,12558,12713,12716,12474,12509,13051,12397,12688,12720] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.859,0.361,0.902]
select surf_pocket19, protein and id [9325,9326,9327,9328,13098,13099,13124,13125,13075,13072,13076,13077,826,841,842,843,9307,9293,9294,9301,9306,13095,13096,13097,831,13059,9303,9333,9335,13005,13094,13006] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.698,0.278,0.702]
select surf_pocket20, protein and id [10073,10074,9979,9980,9767,9686] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.863]
select surf_pocket21, protein and id [17292,17295,17300,17301,17304,17306,17334,17271,17963,17966,17960,17962,17992,17994] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.639]
select surf_pocket22, protein and id [9527,9733,9570,9520,9521,9698,13421,9700,9412,13429,9400,9402,9489,9494,9433,9434,9710,13451] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.784]
select surf_pocket23, protein and id [12571,12576,12579,12578,12601,12599,750,752,12547,12550,12573,773,774,775,776,228,754,213,214,215,217,777,781,250,253,12600] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.576]
select surf_pocket24, protein and id [13997,13992,13995,14001,7528,7563,7565,14011,7562,13508,13509,7513,7531,7534,7323,7564,7655,7656,13996] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.702]
select surf_pocket25, protein and id [18042,18180,18188,18567,18445,18537,18054] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.518]
select surf_pocket26, protein and id [21013,19833,19421,19464,19465,19466,20987,19802,19805,19395,19434,19436,19427,19431] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.624]
select surf_pocket27, protein and id [21020,21026,21018,21054,21055,21064,21017,19795,19796,19791,19820,19821,19823,21078,21081,21091,17006,16998,17016,17018,17012,17019,21198,17011,19830] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.455]
select surf_pocket28, protein and id [16970,16646,16645,21153,21152,16610,16680,16609,16679,21276,21272,21274,16628] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.545]
select surf_pocket29, protein and id [6695,16083,16092,16111,16108,16089,6694,6690,6661,7791,16074,16075,16070,6678,16087,6740,6649,6583,6614,6615] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.392]
select surf_pocket30, protein and id [17002,16999,19886,19888,19854,21073,21076,21079,21080,21081,19825,16994,16978,16979,16983,21140,19852] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.467]
select surf_pocket31, protein and id [17800,17804,18605,18604,18249,18246,17840,17841,17854,18290,18289,18255,18262,18613] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.333]
select surf_pocket32, protein and id [7322,7328,8096,8529,8539,8541,7463,7461,7507,7422,7423,8131,8130,7331] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.388]
select surf_pocket33, protein and id [20612,20614,20615,20636,20637,20638,20639,20640,20641,20137,20581,20168,20171,20650,20141,20611,20578,20677,20160,20161,20162,19139] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.290,0.278]
select surf_pocket34, protein and id [16251,16364,16391,15672,15677,15697,15698,16252,16233,15687,16413,16421,16422,15937,16447,16362,16417,16414,15962,16333,15941] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.412,0.361]
select surf_pocket35, protein and id [20031,20035,19993,20023,20024,20283,20285,20032,20036,20040,20064,20065,20074,20315,20316,20388,20389,20003,20005] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.353,0.278]
select surf_pocket36, protein and id [17015,19783,19796,19811,16789,17003,19820,19822,19809,19816,19817,16780,16781,16737,16753,19786,19784,19794,16735,16748,16742,16752,19810,19846] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.494,0.361]
select surf_pocket37, protein and id [227,12633,13052,12618,13041,12550,12552,12556] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.412,0.278]
select surf_pocket38, protein and id [7775,7001,6079,6069,6071,6968,7000,7776,6681,6673,6674] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.573,0.361]
select surf_pocket39, protein and id [7407,7408,7410,9153,9155,7413,9222,9223,9224,7384,7386] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.475,0.278]
select surf_pocket40, protein and id [10501,10525,10307,10334,10526,10450,10425,10448,10449,10458] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.651,0.361]
select surf_pocket41, protein and id [19191,19527,19213,19214,19183,19666,19668,19511] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.537,0.278]
select surf_pocket42, protein and id [17540,16920,17581,17582,16918,16921,16655,17092,16673,17537,17556,17554,17110] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.729,0.361]
select surf_pocket43, protein and id [8853,8859,8861,8864,8305,8409,8416,8922,8920] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.600,0.278]
select surf_pocket44, protein and id [1206,1219,1853,1167,1176,1204,1850,1878,1889,1842,1810,1838,1845,1846,1849,1812,1813,1814] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.808,0.361]
select surf_pocket45, protein and id [2653,2655,3279,2876,2652,2623,3243,3251] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.659,0.278]
select surf_pocket46, protein and id [21217,16728,17035,17036,17037,21214,16727,16711,16710] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.890,0.361]
select surf_pocket47, protein and id [4774,4744,4745,4763,4493,4492,4520,4508,4510,4519,4330,4799,5157,5149] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.678,0.702,0.278]
select surf_pocket48, protein and id [16144,16145,16146,15772,15503,15611,15613,15446,16148,16176,16178,16151,15501] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.831,0.902,0.361]
select surf_pocket49, protein and id [148,12600,165,217,219,124,164,170,174,175,755,726] 
set surface_color,  pcol49, surf_pocket49 
   
        
        deselect
        
        orient
        