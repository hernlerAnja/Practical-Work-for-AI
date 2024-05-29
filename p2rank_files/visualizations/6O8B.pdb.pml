
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
        
        load "data/6O8B.pdb", protein
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
 
        load "data/6O8B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6272,6275,6279,6665,6666,5648,5653,5654,5657,5647,5649,5651,6257,6252,6255,6280,5700,5701,5825,6080,6664,6774,6775,6230,6235,5809,6780,6781,6782,6783,6642,5659,5660,5666,5667,5826,5681,6261,6306] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1489,1497,1494,1495,1496,538,539,557,615,680,1500,692,652,655,1501,1509,1511,1634,1636,393,394,1327,398,395,380,383,387,373,944,927,1504,1506,718,1487,683,690] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [362,361,367,412,414,992,993,1378,1355,1357,1493,1494,1495,1496,538,539,537,373,1379,1488,793,948,965,522,413,365,962,364,985,968,1487,943] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [8089,8095,8088,8099,8086,8087,8090,7667,7673,7661,8943,7655,8541,8542,8106,6406,8107,8679,7642,8097,8081,8083,8683,8971,8674,9006,8676,8953,8685,8920,8922,8966,8970,8995,8941,7672,7676,7678,7685,8270,7682,7683] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [2389,3387,2391,2374,2380,2386,2368,2355,3392,3254,3255,2819,2820,3656,3633,3635,2797,2801,2800,2794,2796,2395,3393,3394,3389,3683,3684,3388,3664,3666,3708,3717,3380,3718,3719,3382] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [3063,2930,2932,3139,3136,2896,3125,3131,3150,3215,3216,3214,3127,3287,2918,3223,3171,3169] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [8499,8502,8418,8350,8423,8426,8501,8503,8494,8500,8510,8456,8457,8458,8414] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [818,816,814,827,287,815,935,516,517,296,297,459,461] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [5659,5660,5666,5667,5670,5674,5675,6781,6782,6783,6631,6614,5681,6796,6797,6798,6799,6921,5679,5826,6929,6930,6919,6927] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [3772,3774,3809,8379,3259,3261,3260,3270,3271,3272,3269,9060,9096,8557,8558,8546,9061,8552,8556,8545,8547,3090,3093,8559] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [1710,1719,1720,1750,1751,1613,1614,1721,1749,1824,1611,1595,1596,1604,1605,1843,1844,1845,1615,1599,1597,1316,1317,1873,1832,1833,1713] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [5979,6196,6198,6197,5884,5938,5939,5940,5942,5937,5840,5839,5841,6195,5885,6192] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [8514,8515,8559,8532,8533,3795,3735,3737,4539,3770,3771,3773,3774,8379,3259,3260,3733,3766,3734,8556] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [9046,9048,9827,9828,9829,9080,9082,9045,9078,3228,3229,3230,3231,9886,9024,9793,9821,9826,9795,9797,9043] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [3093,9024,3228,9886,9875,9876,9020,9021,9053,9057,9046,9022,9054,9058,9082,9060,9061,9059,9033,8547,8994,8548,3246,3272,3227,3269,3245] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [1881,1297,1287,1224,1878,1221,1248,2583,2585,1856,1858,1859,1257,1256] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [656,693,694,649,651,653,654,587,628,630,905,552,554,662,909,910,911,912,661] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [1043,1008,1010,1967,1968,1342,1352,1353,1678,1679,1650,2001,2002,1668,1666,1667] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [2225,2226,2236,2237,2349,2364,2351,1955,1957,1984,2350,1999,2029,2030,1995,1994,2346,2332,2345,2323,2324] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [506,505,449,10245,10015,10012,10010,10011,10017,10053,10054,10022,10243,10244,10024,10270,10313] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [3866,3867,3868,3869,3105,3106,8391,8392,9154,9155,9156,9153] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [3759,3761,3737,3738,4530,4549,3795,8515,8516,4489,4490,4491,4492,4493] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [7804,6999,7000,7107,7027,7028,7029,7092,7104,7105,7106,7463,7431,7462,7464,7429] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [7899,7901,7871,7873,7867,7868,7869,7907,6545,6509,6513,6514,6495,6520] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [2676,1180,2653,1208,1211,1232,2624,2626,2685,2686,2687] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        