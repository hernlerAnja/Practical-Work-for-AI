
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
        
        load "data/4NCT.pdb", protein
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
 
        load "data/4NCT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1459,1442,1329,1445,1446,1462,1467,307,1289,1306,1588,1321,2813,457,297,3305,3306,3307,545,546,1461,517,3321,520,302,305,2903,2905,2907,2828,2830,473,551,554,579,1553,3308,3316,1557,1559,3294,3298,1563,1565,3312,3313,1466,1574,1577,1279,1286,1287,1288,1584,1587,1597,1589,1593,3300,2872,3317] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5629,5630,9886,9888,9912,9920,5607,5553,5551,5540,8615,8628,8630,6031,6030,9876,6017,6020,9880,9882,8843,8845,8621,8625,6029,8620,5627,9609,9899,9900,9610,9611,9612,9628,9629,9907,9911,8780,9765,9768,9769,9783,9784,9785,9789,9790,6038,9897,8869,8873,8874,8877,8902,9782,8796,6040,6044] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [506,499,4219,4223,4224,4046,3113,3115,4201,4202,4203,3097,505,507,508,4331,4044,4045,4062,4063,4086,500,497,3356,3357,492,498,3105,3100,3110,4321,4333,4334,4346,4350,4344,4345,4310,4313,4315,95,97,486,99,17,4322,4354,9,20,22,4216,4199,3387,3265] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [10945,10944,10974,2082,2081,10898,10941,10942,10039,10049,10050,10053,10074,9534,9535,10951,10952,9510,10045,10047,10048,10041,10043,10044,1717,2660,2662,2663,1693,1695,1694,2646,2653,2654,1690,2056,2057,2055,10038,10040,1699,1700,1701,1714,1715,1698,1495,9572,9819,9544,1696,1697,1500] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [3644,3654,3134,3135,3136,3248,3650,3645,3647,3263,3264,3265,3649,4196,4193,4194,4195,3082,3080,3666,3388,4197,4103,3668,3671,3679,3078,4086,4200,4102,4074,3701,3079,3116,3087,3084,3115,4201,4203] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [887,897,1346,917,440,911,270,1344,944,888,890,327,326,328,276,308,922,914,274,910,456,1440,1329,1443,1444,1446,307,455,457,580,892,893,1439,889,746,1436,1437,1438,1317,1345] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [9669,9237,9761,9640,9668,9267,8650,8595,8597,8763,9233,9245,9249,8593,8599,8651,8778,8779,9216,9762,9763,9766,9767,9769,9652,9759,9215,8649,9211,9213,8631,8630,9066,9067,9760,9068,9210,9214,9212] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [1211,1249,1496,1495,1724,1725,1212,1718,1722,1714,1715,1716,1726,1727,1730,1721,10016,10018,10021,10017,10022,10019,10023,10024,10037,10040,10910,10909,1717,2651,1187,2695,2705,2691,2685,10374,2697,10404,10405,10900,10893,10378,10020,10012,10013,10400,10401,2704] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [6421,6423,6424,6418,6428,5971,6974,6975,6978,6972,6973,6442,6445,6453,6439,6441,6848,6875,6876,6458,6468,6472,6475,6877,6111,5805,5857,5858,5801,5802,5803,5807,5986,5988,5838,5987,5839,5859,6980,6981,6979] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [4452,4453,6742,6780,7260,4447,4454,5394,5395,8231,8237,8227,8228,8229,8230,8238,4838,8184,6743,6718,7031,7259,7250,7253,7257,7255,7256,7261,7262,7252,7251,7265,4458,4471,4472,4473,4474,4451,5385] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [3968,3969,7230,7231,5427,5428,5429,5437,5436,4479,4481,4482,4253,4006,4472,4473,4483,4487,4474,5383,4477,4478,4475,4471,7228,7229,7233,7252,8195,8196,7235,7236,7030,7249] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [8822,8820,8821,8421,8422,6980,6981,6997,6818,7001,7002,6819,6820,6836,6837,7123,5836,5838,8815,8419,6860] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [3331,523,524,293,296,2894,2895,2896,2904,2906,3101,3104,3290,3332,82,84,86,87,482,76,96,98] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [4881,4859,4860,4882,4883,4885,31,4676,825,826,830,52,54,4884,40,843] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [6053,5823,5828,8822,5820,8821,8819,6995,6980,6981,6994,6997,7001,7002,5988,5833,5836,5838,5829,6078,6079,6080,8832,8836] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [9879,6374,10242,10243,10450,10451,10449,5559,5562,5585,5569,5571,5583,5570,10425,10426,6356,6357,6360,6361,6363] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [2101,2103,2126,2839,3598,3599,3600,1918,1919,2128,2846,2848,2862,2847,1558,3582,3583,3586,3587] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [4812,4813,5377,5378,5379,4803,5392,5395,8231,4453,4446,8230,4838,8261,4839,4451,4444,4445,5385,5386,5363] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [1304,1620,1621,1607,1609,959,961,1322,1868,1824,1869,963,1604,1600,1605,1587] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [9164,9165,9166,7637,7638,7636,7661,7662,7663,9149,9159,9152,8377,8360,8361,8363,8353,8354,8355,8375] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [8421,7100,8422,7128,7132,7099,7123,7124,8419,8399,8343,8345] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [8410,8805,6055,6013,5619,5613,5615,5616,5617,8616,6029,8619,5618,5827] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [9930,9932,9627,9644,9645,9943,9282,10146,10191,9284] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [6071,9851,9861,9862,8894,8871,8893,6037,8872,9793,9794,9784,9791,9798,9803,9807,9811] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [3909,4556,4565,3874] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        