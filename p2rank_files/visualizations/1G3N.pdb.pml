
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
        
        load "data/1G3N.pdb", protein
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
 
        load "data/1G3N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1729,1922,1921,1718,1721,1723,1727,1728,1730,1466,1455,1480,1462,1460,1482,6710,6753,6693,6694,6695,6696,6715,6717,6718,6687,6750,6712,1481,1483,1915,6591,7054,7043,7044,7048,7052,7053,7055,1363,1365,1387,1390,1392,1393,1368,6805,6806,6808,6807,6787,1428,1425,1385,6791,1370,1369,1371] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [7721,7724,7726,7727,7966,7967,7968,7737,5410,5411,5465,5577,6573,5412,5470,6057,6059,6061,6064,6052,7729,5479,5482,6568,6570,6583,6585,6458,6582,6459,6598,6486,6572,6574,6457,6091,6107,6114] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [1244,1248,1249,1133,1245,1132,1258,1260,1161,1257,1134,1273,766,767,782,789,1271,2396,2399,2401,2402,2412,2643,2641,2642,83,2404,732,734,739,749,140,145,85,86,87,154,157] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [3546,3574,1038,3571,3573,3542,3575,3576,3579,4645,4647,4622,4651,4652,3581,3583,4274,4584,4585,4586,4583,454,455,457,459,1048,4598,3613,3610,3611,494,3612,4623,4593,4633,4596,4597,3621,4624,4626,4590,1044,1068,465,1045,467,429,430,427] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [6349,6393,5761,5760,5763,5791,6348,6408,6553,6556,5859,6546,6552,5864,5866,5759,5793,5789,5794,5444,5445,6559,6560,6563,5594,5731,5762,6397,6402,6392,6039,6037,5797,5800,5883] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [9946,9947,9948,6363,6367,6369,6370,8898,8871,8900,8901,9958,9976,8906,6373,5755,5754,5792,5782,5784,9908,9909,9599,9911,9910,9951,9915,9923,5779,9907,5780,8936,8938,8937,9922] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [118,269,714,1231,1234,1228,534,1221,539,541,120,1238,1077,1083,1024,1023,1235,1229,435,437,438,434,464,429,1067,466,558,472,475] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [8477,8751,8753,8219,8485,8458,5531,5536,5537,5539,8162,8717,8416,8417,8653,8387,8405,8401,8402,8718] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [2894,3160,3151,3152,3426,3428,3133,3344,3062,3091,3092,3328,3393,3392,3359,206,205,211,212,2837,2838,2839,3076,3077,3080,2896,214] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [8928,8929,8954,6307,6308,6332,6374,8930,5816,5835,5837,6338,6340,6303,5810,5813,5812,5845,6330,6329,6331,6364,6365,7611,8859,8861,8863,8892,8897,7589,7591,8886,8885,8887] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [1006,1007,510,512,1013,1015,505,520,487,982,983,519,3605,3595,3603,3604,3629,491,3602,3534,3528,3536,3560,3567,3561,3562,1039,1040,3572,1005,2262,2264,1004,2286,2266] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [7062,7279,7288,7299,7301,7089,7090,7123,7124,7315,7316,7292,7300,1284,1303,1285,7064,7070,1357,1339,1340,1345,7059,7066,7092] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [729,733,737,743,747,750,741,1175,1173,2902,2917,223,230,233,234,2895,225,2894,2891,2893,3160,2650,2873,2900,2903,237] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [1482,6710,6753,6695,6426,6428,6708,6709,6414,1915,6591,6577,6578,6581,5434,6427,6429,6444,6576,6582,6446,5443,5445] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [9932,10251,10264,8994,10200,10289,10239,10241,9326,9349,9350,9353,9356,10199,10196,10197,9343,9931,9920,9016,8993,9002] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [6498,6500,6512,6495,6501,6506,6050,6066,6054,6068,6072,8242,8243,6046,6051,6058,5550,8216,8499,8225,8227,8228,5558,5559,5555,8218,5548] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [1262,7240,1102,1103,1104,1251,1252,1253,119,120,109,1101,1237,6807,1428,1383,1385] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [4795,4797,4799,4796,4798,4794,9263,9265,9662,9256,9260,9276,3921,3955,3975,3919,3920,3922,4829,4830,3894,3915,3918,3965] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [6682,6628,1745,1798,1799,1734,1739,1965,1764,1737,6609,1954,6610,1957,1963,1967,1974,1975,1976,1991] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [758,2914,2916,826,825,2927,2932,2933,2934,1172,1177,1179,1180,2907,800,832,796,798,821,828,759] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [5732,5737,5743,5762,5442,5444,5445,6559,6563,5593,5594,5705,5436,5439,5438,5703,5708,5735,6008,6021,6022,5589,5590,5612,6004,6007,1902] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [3951,10120,10122,3935,10075,10119,10124,10123,3933,3938,3940,3931,4336,4337,9300] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [4020,4054,4052,4875,4914,3690,4916,4926,4964,4871,4874,4611,4002,4606,4607,4595,4938,4939,4942,3669,3670,3691,4031,3668,3677,3683,4018,4019,4028,4024,4025] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [115,117,697,269,268,119,409,410,411,696,264,265,418,437,407,285,287,286,679,382,383,680,682,378] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [1292,1294,1653,816,814,1275,1127,1137,781,782,1619,1406,1418,1675,1676,1704] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [269,714,1231,1234,541,1235,1248,713,710,711,712,542,720] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [10121,10123,3940,10084,10086,10133,3930,3931,10088,10120,10122,10074,10075,10076,10080,10081,10119,4368,4357,4359,4358,4360,4336,3942,4337,4333] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [6556,5866,6555,6574,5593,5594,6571,6039,6041,5591,5592,6037,6040,6036,6038,6035,5577,6573,5867,6045] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [1928,5423,5424,5425,1931,1841,1844,1845,1881,1870,1904,1907,1925,1893,1903,1896,1890,5456,5458,1843] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [6462,6600,6106,6107,6978,6702,6731,7029,6617,6619,6743,7000,7001,6944,6977,6987] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [9243,9244,9245,9246,9247,10154,10155,9242,9300,9298,10124,10123,3950,3951] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [5332,5333,5334,5335,5336,5337,5338,5603,5378,5383,5584,5360,5361,5601,6015] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [9265,9267,9683,9685,4761,4763,4756,4808,4795,4797,4796,4750,4794,9693,9682,9254,9255,9256] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [4566,4567,3660,4536,4545,447,446] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [6675,1716,1774,1775,6665,6660,6667,6669,1336,1308,1322,1331,1699,1311,1313,1309] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        