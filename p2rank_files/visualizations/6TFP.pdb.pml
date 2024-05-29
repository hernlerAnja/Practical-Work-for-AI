
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
        
        load "data/6TFP.pdb", protein
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
 
        load "data/6TFP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2527,2880,3406,3414,2932,2933,3305,2349,2350,2404,2405,2406,2348,2354,2355,2356,3334,2906,2925,2928,3333,2885,2903,2510,2899,2352,2353,2525,3412,3413,3436,2385,2387,2369,2373,2366,2367,3411,3319,2358,2360,2361,2365,2378] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [9800,8766,8771,8774,9801,9802,9803,8811,8928,8753,8755,8754,9314,9317,8778,8790,8792,9825,8765,8770,8759,8760,8761,8763,8783,8757,8911,8758,9288,8926,8809,8810,9723,9795,9722,9295,9296,9269,9292,9707,9708,9709,9694,9321,9322,9346] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [6633,6627,6628,6632,6671,6672,6673,6625,6619,6616,6622,6623,6617,6620,6652,6654,6782,6783,7658,7681,6645,6784,7651,7656,7657,7659,7550,7578,7177,7579,7173,7170,7130,6767,7125,7142,7148,7151,6649,7679,6636,7564,6640] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [1102,693,700,1073,701,1174,1101,1087,147,1180,1182,135,140,143,159,161,297,298,1179,1181,1202,1204,179,296,180,648,674,126,124,127,123,671,281,653,692] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [5509,5510,5511,4654,5417,5504,5512,5431,4652,4550,4551,4552,4496,4498,4499,4494,4495,4650,4542,5432,5403,5031,5023,5026,5030,5532,5534,4640,4983,4990,5001,4995,5004,5005,4978,4507,4512,4515,4524,4538,4519,4533,4526,4527,4658,4531,4528] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [4740,4742,4744,4749,4766,4894,4907,5516,5521,5523,5506,5505,4785,5533,5534,5535,4963,5511,4979,4653,4746,4783,4395,4402,4792,4793,4398,4400,4873,4889,4410,4411,4417,4856,4858,4869] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [8275,8284,8291,8298,8300,8301,8060,8237,1798,1814,1818,1821,8163,8140,8135,8136,8146,8122,8134,8290,8160,8175,8119,1791,1793,8114,8115,8116,8118,8150,8151,1754,1778,1758,8155,1699,1760] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [1860,1627,1606,1617,1618,777,786,791,793,794,780,781,782,5761,5729,5730,5763,5762,6100,6102,6103,1848,1851,8254,1844,8255,8256,1859,1854,6318,1852,1853] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [256,258,543,544,545,546,219,225,227,254,255,260,259,275,541,542,39,41,539,540,8,1,220,222,224,226,223,2811,2809] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [1135,1136,1121,1129,5642,736,5639,734,773,691,735,690,847,881,1138,846,814,848,883,843,845,876,872,5628,5629,5591,5592,5643,5644,5603,5604] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [8234,1683,8174,8176,8162,1824,1669,1813,1823,1821,8163,1678,1657,1663,8259,8201,8270,8226,1639,8258,1641,1673,1676] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [5180,9919,9920,5458,5459,5465,5466,5065,5066,5468,5144,5176,5177,5213,9933,5467,5211,5175,5206,5201,5202] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [5538,5539,5541,5542,5613,5615,5608,5543,5366,5672,5679,5678,5369,5797,5799,5800,5801,841,5620,5781,5671,824,5618,5621] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [4645,4953,4955,4956,4557,4559,4661,4471,4662,4435,4456,4455,4458,4463,4468,4565,4575] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [7024,7026,6717,6719,6720,6715,6718,7027,7028,6726,6737,6740,6741,6742,6743,6744,6745,6746,6748,6751,7021] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [2182,2183,2188,2190,2194,2890,3393,3346,3349,3392,2894,2909,3356,2721,3376,2722,2487,2489,2887] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [9660,9832,9657,10087,9992,10008,9970,9969,5155,10072,10086,10038,10088,9909,9912,9914,5154,9911,9961,10015] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [1036,1470,1471,1467,1469,1348,1387,1341,1342,1290,1039,1041,1209,1211,1213,1283,1288,1291,1217,1451] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [8668,8670,9161,9164,8905,9166,9167,8895,8884,8851,8854,8850,8855,8857,8853,8856,8858,8885,8887,8889,8890,9160] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [2759,2774,2214,2242,2245,2771,2763,2244,2681,2706,2707,2193,2199,2207,2196] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [2967,2968,3046,3369,3361,3368,3113,3370,3077,3078,3079,3082,3044,3115] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [5406,5407,5408,5709,5924,5710,5693,5986,5047,5979,5973,5976,5977,5656,5674,6043,5694,5665] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [717,1076,1078,1649,1326,1077,1380,1363,1364,1335,1643,1646,1647,1648,1379,1344] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [3443,3510,3520,3522,3523,3525,3441,3271,3683,3701,3702,3703,3573] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [9502,9356,9357,9435,9759,9492,9493,9466,9467,9468,9469,9471,9393,9394,9749,9750,9756,9757,9758,9312,9742] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [1916,1949,1913,8311,8354,1936,1945,1946,1939,1941,1948,1978,1980,8345,8324,8342] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [6296,6126,5997,6136,5856,6131,6294] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [10143,10140,10282,9981,10543,10544,10545,10364,10283] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [1964,1526,1667,1801,1966] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        