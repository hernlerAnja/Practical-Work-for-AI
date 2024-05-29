
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
        
        load "data/4UX9.pdb", protein
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
 
        load "data/4UX9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4760,4761,4770,4532,1768,4768,4769,10114,10135,10134,4748,1983,1996,2004,2005,1960,1994,1766,1767,1955,1982,1984,1709,4749,4725,4727,4493,1728,1958,4565,4575,4566,4530,4533,4540,4789,4790,4573,7109,7111,4501,4541,4542,7211,7212,7213,4462,4464,7457,4529,4531,4474,4499,4395,4397,4429,4416,4421,4450,4451,4394,4413,4415,4574,4851,4852,4855,7062,7063,7064,4432,1697,9930,9931,9932,10155,10156,1735,1736,1776,1777,1651,1652,9939,9940,9941,10176,9938,1685,10221,10220,1650,1648,10261,10262,1765,2025,1774,1800,1808,1810,1809,1656,1664,1666,1686,9782,9783,1667,1631,1632,1677,2090,2086,2099,2089,1699,1734,1684,1662,10127,9859,9898,9899,7372,7374,9839,9840,10091,2003,7395,7396,7140,7146,7148,7180,7178,7408,7179,7406,7120,7121,10115,7415,7416,7147,7189,7187,7188,7177,7436,7437,7097,7098,7068,7076,7074,7078,7089,7220,7221,7222,7502,7043,7044,7059,4417,7079,7045,7060,7542,9896,9897,9895,9866,9867,9865,9868,9908,2023,9830,9828,9901,9903,9906,9907,1801,9816,9817,9779,9780,9781,9787,9757,9760,9761,9795,9797,9798,10232] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4119,4698,4227,4231,4226,4233,1719,1720,1717,1355,1357,1457,1464,1470,1356,1344,1727,1729,1961,1725,1723,4484,4485,4492,4494,4482,4488,1959,1933,1469,4724,4726,4219,4232,4117,4118,4106,4107,4478,4516,1751,1460,1713,1343] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [7141,9850,9851,9858,9860,9854,9848,7371,9849,7132,10063,10064,9859,10090,10092,7139,6869,6872,7125,6881,7163,7373,7129,7131,7130,7140,9844,9512,9513,9514,9585,9597,9583,9588,9578,9592,9856,9884,9882,9883,9454,9458,9461,9516,9448,7336,7338,9469,9472,9460,7320,7345,7323,7344,6883,6875,6877,6885] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [8551,8554,8555,9388,8458,8528,8530,8532,8459,9386,8437,8593,9364,9365,9378,8436,8309,9482,8531,9387,9465,9467,9493,9244,9245,9228,9265,9266,9475,9456,9462,9468,9474,8451,8454,8455,8527,8524,8526,8558,8559] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [209,211,244,245,246,789,790,205,206,208,343,794,806,808,231,358,359,360,834,835,210,1269,203,204,825,826,829,1192,812,818,819,824,811,216,1177,1168,213,506,1264,1265,1271,1268,537,610,1276,1270,1267,813,1274] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [6594,6695,6618,6238,6239,6619,6693,6694,6234,6237,5659,5623,5660,5758,5634,5635,5642,6702,5646,6603,5661,5775,6700,5773,6220,6216,6036,5625,5619,6245,6255,6260,6262,6261,6251,6252,6250,5628,5630,5631] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2975,2981,3604,2979,3580,4038,3581,3595,3598,3961,3004,3558,3559,4036,4037,3101,3563,3577,3575,3003,3570,3937,3946,2984,2986,4043,3116,3117,3118] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [8303,8305,8308,8322,8894,8899,8323,8304,8321,9356,9357,8420,8896,8922,8923,8924,9256,9280,8914,8915,8912,8898] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [8555,8545,9402,9400,9401,8583,8581,9398,9410,9432,9433,8546,8522,9449,9450,9624,9218,9436,9437,9445,9446,9431,8544,10731,10719,10733,10735] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4408,3666,3669,7543,4406,4896,4885,4890,4892,7532,7537,7539,6325,7547] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1895,2334,2345,1504,1505,2341,1442,1485,1498,1503,2340,1478,1482,1891,1480,1481,1893] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [9609,9613,10024,10026,10442,10451,9570,9573,10447,10446,9610,9611,9612,9631,9632] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2131,1641,1643,2125,2127,2120,900,10258,10262,9772,9774,8988] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [2090,2086,2099,2101,2089,2100,1677,1809,1664,1666,1667,1679,2311] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [6857,7279,7680,7693,7697,7698,7691,7307,7702,6854,6893,7303,7305,6890,6894,6897,6910,6917] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1340,1343,1495,1496,1342,1365,1452,1453,1128,1130,1372,1341,1336] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [6496,6713,6714,6709,6710,6711,6712,5951,5985,5983] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        