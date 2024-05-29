
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
        
        load "data/3ZNI.pdb", protein
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
 
        load "data/3ZNI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14259,14724,13153,13142,13143,13144,14260,14261,13141,13108,13140,14723,14725,13821,14722,14284,14285,14279,14280,13112,13079,13109,13110,13111,12497,13843,13810,13844,13819,13820,13156,13157,13178,13120,13811,13812,14539,14272,13796,13797,13798,13085,13083,13081,14552,13159,13163,13168,13164,14557,12498,12500,12501] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [3268,3270,3944,3945,3290,3291,3294,3930,4412,4427,3929,3931,2639,4404,4405,4410,2637,3263,3257,3259,3260,3261,3233,3231,3262,2635,2636,3976,4867,4386,4869,3952,3953,3954,3306,3303,3977] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.486,0.902]
select surf_pocket3, protein and id [14471,14473,12680,12682,14459,14460,12674,12677,12683,12672,12478,12614,12686,12687,12688,12689,14266,14269,14283,14267,14282,12824,12825,12826,12827,14273,14451,14461,14294,12472,14295,14296,12431,12434,12525,12527,12529] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.345,0.702]
select surf_pocket4, protein and id [19249,19250,19255,19248,17456,19257,18045,18071,18072,18038,18039,18041,18074,18049,18751,18752,18042,18043,18046,18047,18007,18774,18775,19227,18011,18010,17509,17511,17512,17514,19253,18115,18118,18121,19709,19711,18102,18106,18765,18766,18797,19229,19231,18069,18070,18080,18075,18082] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.400,0.902]
select surf_pocket5, protein and id [4598,4601,4421,2818,2820,2962,2964,2965,4597,4588,2961,2967,2809,2810,2821,4613,4611,2618,2620,2696,2751,2752,2968,2580,2665,2825,2826,2827,2667,2824,4398,4878,4391,4394,4407,4402,4408] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.282,0.278,0.702]
select surf_pocket6, protein and id [9353,9354,9383,9555,7567,9382,7618,7776,7777,7778,7913,7914,7915,7917,9370,7775,7916,7918,7919,7766,7772,9356,9360,9364,9369,7616,7702,7703,9542,9551,9552,7761,7771,7769,7912,9565,9567,7527] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.408,0.361,0.902]
select surf_pocket7, protein and id [19266,17394,17484,17397,17483,17776,17777,17778,19243,17780,17782,19253,17437,17629,17632,17638,17641,17779,19433,19442,19443,19446,19447,17635,19458,19456,17775,17637,17435,17627,17643,17644,19239] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.353,0.278,0.702]
select surf_pocket8, protein and id [16684,16686,16688,16720,16997,16721,16722,8540,15023,15039,16696,16697,8538,8635,8636,15029,15038,17924,17930,17931,8566,17925,8330,8328,8329,8343,8344,8345,8346,8545,8536,8537,8554,8553,8535] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.498,0.361,0.902]
select surf_pocket9, protein and id [16381,16895,17832,15886,16377,16379,16415,16444,15884,15887,16409,17834,16892,16896,15789,15758,15779,15786,15788,15813,15814,15878,15888,17816,17817] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.420,0.278,0.702]
select surf_pocket10, protein and id [3002,3003,3018,1642,2073,2077,2076,1613,1607,3019,3020,1086,2058,956,955,983,984,987,1577,1579,1082,1084,977,986,1076] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.584,0.361,0.902]
select surf_pocket11, protein and id [5045,5048,5049,5050,5071,18545,18546,19119,18606,18610,18615,18617,5245,5248,5249,18913,19120,18938,5273,5275,5286,5274,5276,5019,5270,5271,5272,5239,5038,5013,14102,14100,14101,5044,5012] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.490,0.278,0.702]
select surf_pocket12, protein and id [3796,3797,4092,4282,9979,9998,9999,9974,9977,9978,9980,3726,3727,3728,3795,10174,10175,10033,4117,3725,10197,10198,10199,10200,10201,10202,9942,9948,10196,9940,9941,9189,9187,9950,10212,10171] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.675,0.361,0.902]
select surf_pocket13, protein and id [5797,5801,5802,6824,5765,5763,5188,5204,5825,5198,5154,5210,5793,5795,6793,6794,6795,5175,5177,6812,6815,5158,6821,6817,5725,5160,5161,5159,5155,5766,5722,5723,5190,5824] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.557,0.278,0.702]
select surf_pocket14, protein and id [11727,11730,11725,11731,10083,10088,10089,10642,10124,10076,10082,10639,10682,10683,10637,10079,10081,10130,10114,10116,10117,10719,11710,10718,10742,11709,11736,11739] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.761,0.361,0.902]
select surf_pocket15, protein and id [6999,7014,7018,6538,7017,7953,6567,7954,7969,5889,5917,5888,5920,7020,6504,6502,6015,6017,7971,7970,6532] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.627,0.278,0.702]
select surf_pocket16, protein and id [15736,15737,16857,16658,16660,16661,16662,16653,16657,16858,16861,16860,16308,16281,16847,16854,15702,16663,16666,16648,16651,16652,16659,16642,16637] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.851,0.361,0.902]
select surf_pocket17, protein and id [9821,8899,9348,9823,9347,8261,8266,8269,8262,8251,8254,8257,9824,8929,8930,8931,9634,9822,8907,9652,9647] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.698,0.278,0.702]
select surf_pocket18, protein and id [10834,10837,10836,10932,10934,11423,11459,10935,11453,12882,12880,12881,11488,10862,10939,10940,10941,10926,10936,10920,10827,10805,11425,11931,11928,11929,12864,12865] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.859]
select surf_pocket19, protein and id [15136,15138,4234,4233,4235,15173,14877,14879,15109,15148,15135,15137,15174,14910,14871,14887,14888,15100,15101,15107,15110,14936,15132,15175,8751,8680,14935,8681,8682,14912,14911,14913,8750,8749,15111] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.635]
select surf_pocket20, protein and id [2039,2042,1830,2041,1844,1841,1845,1856,1859,2038,934,935,1851,1853,1506,1479,1850,1852,1854,1855,900,1846] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.773]
select surf_pocket21, protein and id [18324,18836,18842,18845,18846,19553,19555,18297,18971,19037,18973,18844,19005,19046,19047,18303,18313,18314] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.565]
select surf_pocket22, protein and id [5867,5868,6775,6776,6778,6780,6983,6777,6779,6431,6407,5833,6771,6781,6784,6770,6769,6755,6979,6976,6980,6982] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.682]
select surf_pocket23, protein and id [15017,15020,15021,15022,15023,15039,16693,16694,16697,15664,15016,15589,15591,15592,15594,15634,15635,15631,15037,15050,15670,15671,15053,16675,16677,16676,15662,15693,15694,15629,15638,16703,16706] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.498]
select surf_pocket24, protein and id [9147,9148,10261,10296,9213,9949,10262,10264,9146,9185,9188,9189,9186,9187,9950,9212,9901,10338,10337,10284] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.596]
select surf_pocket25, protein and id [9104,8969,8975,8976,8977,8978,9106,8439,8450,9170,9140,9138,9179,9180,9662,8433,9664] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.427]
select surf_pocket26, protein and id [18818,19544,18270,18280,19538,19539,19540,19541,19543,18267,18133,18124,18125,18130,18131,18132,18134,19691,19710,19712,18798,18140] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.506]
select surf_pocket27, protein and id [8884,9371,8899,9348,8885,9366,9367,8206,8207,8177,8208,8210,8238,8218,9347,9372,9374,7590,8239,8232,8907,9359,8930] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.361]
select surf_pocket28, protein and id [4015,4021,4022,4023,4024,4025,4708,4709,4151,4152,4040,4186,3506,4216,3488,3495,3496,3479,4710,4183,4184,4225,4226] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.420]
select surf_pocket29, protein and id [868,1896,224,1869,864,867,869,1899,787,792,245,247,1890,228,892,258,1887,1885,1886,1891,1892,860,862,831,891,1870,260,231,789,211,225,229,230,833] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.290]
select surf_pocket30, protein and id [1879,1881,1889,1911,2175,3108,3114,3109,3115,246,232,233,13445,13473] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.388,0.361]
select surf_pocket31, protein and id [3639,2861,3649,3650,3170,3624,2711,2712,2726,2735,2855,2881,3171,3196] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.337,0.278]
select surf_pocket32, protein and id [14051,14093,5370,14091,14092,14017,14019,13890,14083,13356,13357,13888,13891,13340,14567,14569] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.478,0.361]
select surf_pocket33, protein and id [17528,17543,17529,17986,17987,18442,18457,18467,18468,17678,17670,17672,17552] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.408,0.278]
select surf_pocket34, protein and id [12743,12715,12717,13510,13511,13485,13500,13024,12571,12574,12723,12573,12597,12588] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.565,0.361]
select surf_pocket35, protein and id [10784,10785,11893,11894,11352,11890,11891,11686,11694,11685,11670,11681,11887,11699,10750,11325,11319,11323] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.475,0.278]
select surf_pocket36, protein and id [11618,11617,11619,12311,12120,11605,12314,12329,12330,11572,11578,11608,11513,11525] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.655,0.361]
select surf_pocket37, protein and id [13539,13541,232,233,13443,13444,13445,13442,13452,13245,13461,1879,1889,246,13543,237] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.545,0.278]
select surf_pocket38, protein and id [5258,5884,5885,5886,5889,5233,5858,6993,6995,5856,7002,6997,6999,5182,5183,5192,5224,5227,5196,5195] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.741,0.361]
select surf_pocket39, protein and id [341,343,345,356,90,92,342,344,346,83,84,381,382,19057,19059,19061,124,122,123,121] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.612,0.278]
select surf_pocket40, protein and id [6838,6839,6840,18430,5161,5162,5176,5177,6804,6814,8056,8057,8062,8063,6806,7119] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.831,0.361]
select surf_pocket41, protein and id [14824,4259,4257,15251,3517,3485,3486,3487,3490,3491,3495,3496,15230,15237,15238,4224,4226,4223,15231,15232] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.682,0.278]
select surf_pocket42, protein and id [9069,9063,9071,9236,8751,9237,8739,8746,9046,9047] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.878,0.902,0.361]
select surf_pocket43, protein and id [11469,11471,11538,11160,11194] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.651,0.702,0.278]
select surf_pocket44, protein and id [1348,1623,1625,1347,1306] 
set surface_color,  pcol44, surf_pocket44 
   
        
        deselect
        
        orient
        