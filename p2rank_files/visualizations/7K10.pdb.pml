
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
        
        load "data/7K10.pdb", protein
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
 
        load "data/7K10.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6339,5742,5711,5713,6362,6363,5945,5971,6191,6193,5975,5979,6315,6156,6123,6150,6124,6151,6154,5739,5772,5773,5912,5914,5881,5911,5916,5910,5769,5770,5905,5774,5775,6235,6236,6237,6239,6263,6210,6284,6266,6301,6265,6285,6290,6298,6330,6208,6179,6178,6331,6259,5883,5892,6243,5806] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [2477,2130,2098,2099,2484,2512,2511,2540,2335,2541,2305,2307,2883,2884,2923,2891,2893,2500,2501,2507,2508,2533,2121,2122,2152,1843,2128,2129,2131,1816,1818,1814,1815,1811,2489,2363,2364,2365,2366,2081,2083,2084,2085,647,2488,2329,2328,2332,2331,2359,2360,633,636,402,403,399,2088,2089,2096,2087,2090,2092,2094,637,638,648,416,2882,1851,1852,2922,1849] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [8684,8686,8687,8355,8357,8588,8688,9495,9496,9518,8608,8385,8386,8391,8342,8380,8381,8382,8383,8579,9488,9432,9486,8666,8662,8661,8392,8678,8591,8597,8601] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [893,902,904,1471,1473,1474,1472,1435,1436,1438,1464,1790,1792,898,1444,915,916,937,938,2867,2868,2883,2885,2480,2864,2870,2874,3279,3280,2878,1155,1156,1157,1466,1467,1468,2846,3261,3264,3259,3260,1138,7308,7309,1120] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [7378,7379,7497,8536,7062,7467,7495,7466,7487,7478,7491,7494,7471,8538,8539,8542,8543,8544,8545,8435,8446,8534,8537,8466,6870,6871,7484,7486,7488,7489,7536,7138,7521,6919,6869,6882,6883,6900,7078,7077] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [3207,2946,3182,3183,2938,2970,2971,3148,3149,2969,3335,1487,3327,3358,3359,3360,3361,1881,1884,1883,1885,3304,1486,3356,2914,1505,2915,1503] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [927,8845,8838,8842,953,954,8248,8249,8240,8241,8789,8215,8217,926,886,914,8219,888] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [8871,931,8892,8867,8870,8861,967,969,970,1106,8863,958,1079,1105,8903,8904,946,932,1121,1120,1126,8893,8926,9811,9814,1122] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [7130,9106,7131,8560,8596,8595,8625,8627,9116,9118,9340,9341,9372,8562,9105,9148,9145,8571,8576] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [672,673,926,886,914,8219,2433,8190,644,913,663,664,666,648,2429,2449,2450,2453,2446,2447,2448,2479,8281,8248,8249,927,8844,8214,8220,8221,8224,8215,8216,8217,7313,7315,947] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [8514,7355,7357,7358,7359,8283,8286,8317,8285,8508,8509,8501,8478,8510,8523,8525,8511,7337,7351,7338,8310,8307,8257,8280,8281,8258,8259,8502,8500,7313,7314,7333,7324] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [2089,2104,2090,2091,2092,2093,2094,2095,385,383,386,408,2060,1742,1774,2059,633,403,610,406,409,634,1744,1746,1747,1708,1736,1737,1743,1739,1740,1741,1707,378,1780,2106] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [6688,5001,5007,5009,5031,5033,7148,6672,6663,5247,5256,7143,7145,7183,7180,7181,7182,7211,7392,7390,7399,6656,6657,6658,7382,7386,5277,5289,5291,7406,7407,5280] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [1402,1403,1577,1240,1242,1422,1556,1558,1560,1559,1552,1218,1219,1220,1221,1454,1455,1550] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [1120,1126,3598,7283,7282,7284,7285,7309,3271,3272,3576,3602,7288,3270,3290,7318,8903,8904,946,932,1121] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [611,1754,1717,1719,1369,847,1342,805,1366,588,867,606,846,608,869,1410,587,1343,1340,628] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [629,905,625,628,867,606,608,1410,611,1746,1749,1754,1438,1791,1792,1779,1780,1751,1409,1411,1405,1429] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [5701,5702,5645,5648,6066,6067,5672,5675,5635,5641,5638,5662,5660,5639,6097,6010,6013,6095,5967,5968,5972,5973,5974] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [8170,8178,8179,45,51,54,2405,2406,8186,488,489,2419,2420,2421] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [9964,9965,9966,9967,9968,8647,8569,8635,8636,8418,8400,8401,8402,8419,8421,8665,8420,9985,9983,9984,9986,9987] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [6900,8567,8569,8541,8543,8544,8545,8446,8447,8402,8423,8422,8557] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [6067,5675,5677,6084,6086,6088,6083,5652,5669,6491,5651,5660,5650] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [7459,6646,6964,6655,6948] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [4786,4901,5143,4931,5135,4929,5056,5142,4753] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [8514,8526,7354,8317,7349,7351,8348,8529] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [526,523,524,529,538,259,164,156,129,126] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [6849,5655,6847,6929,6442,6448,6449,6490,6491,6492] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [7206,7207,7208,4733,4723,7219,7181,7184,7211,5011,5010,5023,5024] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [3668,3670,3691,3693,3318,3352,3526,3528,3585,3317,3554] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        