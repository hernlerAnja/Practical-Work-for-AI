
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
        
        load "data/1IVO.pdb", protein
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
 
        load "data/1IVO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2653,2671,3157,2938,3176,2669,8212,8214,8216,55,3178,8253,3177,3183,3181,8251,8252,3162,2440,2446,2447,2448,2484,2501,2508,2453,54,73,74,62,75,64,70,234,8236,8168,83,8166,8165,8235,8262,219,8265,69,231,123,197,8171,8179,8205] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4002,7110,4003,7125,7126,7131,4179,4181,4182,4007,4009,4017,8550,8552,4010,4012,4018,4021,4022,4146,7123,7133,8600,8602,8598,6453,6456,8591,8551,8554,6600,6886,6887,6391,6616,6618,6619,6394,6396,6432,6449,7128,7129,7130,7132,8638,8637,7134,8620,8649,8651,8622,8621,8636,4167,4176] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [2056,2067,1770,1791,1793,1794,1795,2060,298,2050,5900,5881,5872,5873,672,282,482,483,484,292,670,492,496,686,294,1759,1750,1754,1753,26,23,24,25,283,42,27] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [5808,5819,5823,5803,1855,5802,1851,1854,1856,1857,1860,5842,5848,5849,2040,5853,6126,6128,1874,1875,1888,6133,6123,6139,2180,2181,1905,5734,5799,1894,1898,1901,5805,5988] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [1691,5487,1615,1692,1617,1601,1602,1524,5649,1534,1533,1522,5577,5579,5587,5588,5573,5639,5640,5563,5549,5565,5547,5548,5542,5470,5477,5482,1538,1539,1621,1625,1634,1631,1633] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [2228,2222,2227,2341,2248,2164,2168,2171,2161,2179,5838,5840,5915,5916,5918,5910,2219,2176,2163,2203,2204,2339,2356,2336,2249,5914] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [4245,4246,4242,4444,4633,4634,4230,4430,4431,4432,4620,4619,4617,4618,6004,6008,5992,1923,1924,1925,6001,5742,5743,6015,5718,5702,5698,5707,5701,1952,5998,3974,3975] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [6217,6872,6574,6575,6169,6366,6165,6168,6365,6588,6589,6358,6359,6354,6205,6207,6173,6199,6210,6195,6172,6857,6855,6856,6568,6214,6216] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [8418,8432,4064,4093,4094,4492,4490,4491,8452,4298,8436,8437,4493,4494,4496,4300,4738,4752,4511,8417,8422] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [6175,6176,6196,6197,6174,6289,6287,6297,6298,6127,1892,1967,1968,6101,6106,6109,6110,6124,6118,6152,1959,6151,6167,1963,1966,6284] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [352,542,545,547,790,543,544,144,145,146,350,563,804,8031,8032,116,369,370,8059,8051,8061,8066,8036,8060,548,809,8052] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [2230,2221,2224,2225,2417,2626,2627,2267,2268,2269,2270,2908,2924,2907,2217,2220,2640,2641,2251,2252,2253,2266,2257,2259,2247,2395,2620,2396,2909] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [8618,8644,8527,8530,8662,8663,8665,8666,8622,8645,8646,4172,8664,4107,4145,4146,4068,4069,4071,4105,4108,8529,8531,8533,8535,8536] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [8258,8276,8277,8279,224,8275,8150,8143,8144,8145,8147,8165,8235,198,158,159,8137,8141,120,160,192] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [7678,7680,7683,7679,7667,7671,7672,7608,7730,7711,7705,7663,7664,7731,7434,7717,7723,7724,7433,7435] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [4147,4148,4151,4070,4071,4270,4120,4121,4289,4015,4016,4031,4271,4017,4153] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [3613,3639,3636,3634,3640,3642,3651,3652,3655,3473,3477,3480,3472,3632,3619,3620,3626] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [5061,5063,5194,5041,5047,5173,5175,5176,5192,5026,5059,5137,5138,5159,5161,5162,5069,5070,5076,5055] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [7263,7798,7771,7773,7789,6989,7772,6986,6987,6988,7233,7227,7228,6980,7763,7764] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [1,26,1750,1755,1744,1732,1738,27,1718,1818,1793] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [1111,1211,1213,1215,1113,1225,1227,1229,1246,1190,1193,1122,1125,1107,1121,1093,1115,1189] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [4825,4826,4827,5256,5352,5253,4823,5364,5353,5382,5354,5014,5345,5348,4536,4841] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [1080,1081,1083,1317,1082,1274,1272,1049,1059,1294,1297,1299,1303,1066,1252,1259,1264] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        