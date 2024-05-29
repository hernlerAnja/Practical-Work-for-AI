
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
        
        load "data/3TNW.pdb", protein
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
 
        load "data/3TNW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1070,1071,671,678,685,263,264,265,147,108,100,101,107,98,625,627,628,493,629,630,145,90,93,146,89,95,662,669,670,711,634,651,648,650,654,248,381,1142,1049,1054,1143,1147,1148,1150,1042,492] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [4636,4638,4637,5140,4739,5139,5149,5166,5169,4599,5226,4605,4600,4603,5163,5142,5145,4752,5144,4755,4756,5008,5585,5586,5657,5557,5564,5665,5200,4896,5658,5659,5662,5663] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [3451,4552,5056,4517,4518,4525,4534,4549,4551,5055,3447,3449,3011,3426,4538,4541,4683,4529,3453,3458,5030,5029,3010,5038,5039,5041,5133,5134,3001,4719] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [1,6,7901,7902,7903,526,31,29,30,7842,5075,42,192,514,515,523,7468,7469,7878,517,228,41,19,7910,7873,7899,7866,7872,7867,7868] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [1459,1460,1466,1467,1469,1455,1472,2223,2229,2188,2212,2193,2195,1218,1221,1224,1230,1209,1229,1203,1433,1434,1444,2190,2189,1435,2410,2416,2417,2424,2430,2436,2453,2454,2455,1493,2199,2197,2198] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [1099,1100,7122,7123,229,635,7475,7474,226,643,667,1084,233,500,1129,1128,638,1112,2349,1087,465,467,468,478,7106,7108,7103,7101] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [1236,1237,2862,2876,1220,1222,1227,1207,3535,2879,3536,3538,3578,1223,3576,3577,3607,3609,3726,3696,3728,2871,4399,4408,2872,2864,2868,3542] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [8028,8029,8030,8061,8059,8132,8162,8129,8164,8139,5735,5737,5738,7320,7322,7330,7334,7994,7326,7327,7329,8838,7988,7987,5754,5751,5752] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [5744,5964,5965,5971,6698,6703,5745,5960,5949,6877,6883,6888,6890,6896,6899,6901,5973,5977,6693,6694,6697,6700,6737,5720,5718,5972,5733,5736,5739,6912,6913] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [6340,6345,6346,6347,6365,6369,6373,5940,5926,5939,6382,6702,6704,6334,6331,6374,6688,6696,6375,6694,6695,5943] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [3824,3896,3775,3773,2591,2592,3839,2961,3833,3835,3823,2574,3869,3875,3874,3530,3852,2578,2549,2585,2899,2900,2902,2924,3783,3777,3779,2933,2926,2927,2930,3512,3517,3523] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [2877,3173,1236,1237,1239,2876,1197,1206,1207,1259,1220,3550,3535,3549,2878,2879,3536,3578,1198,3577,3507,3551,3552,3163,2880,967,1194,966,3172,1193,1196] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [5150,5153,5155,5158,2648,2645,2665,3017,4720,5017,5015,5599,6854,4982,5643,5644,5602,5627,5615,5614,2650,4980] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [7049,7050,8275,8258,8259,8268,8271,8288,8332,8260,7033,7391,7964,8310,8311,7178,7382,7419,7360,8211,8213,8215,8219,8209,7357,7384,7385,7388,7969,7007,7036,7982] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [1826,1835,1840,1841,1842,1868,2199,2183,1434,1444,2190,2189,2191,1420,1431,1435,1422,1421,2192] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [350,347,349,125,115,117,380,1149,1150,1163,344,346,348,345,282,264,265,108,118,122,111] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [2150,2156,2161,2163,2165,2127,2128,2172,2174,1764,1978,1979,1980,1814,1815,1816,1817] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [3626,3627,3628,4085,4081,3582,3615,3614,3617,2450,2452,2454,2414] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [5712,5713,5721,5722,8002,5754,5772,5774,7631,5751,5752,7335,7334,7336,7337,7997,8001,5735,8028,8029,8030] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [1269,3177,3186,1267,1265,1264,368,370,1168,1169,1177,340,341,348,1165,1167,1173,3208,3209] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [4570,4567,4524,5116,5118,5099,4763,4764,4765,4649,4647] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [584,60,156,158,14,274,582,602,603] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [7937,4945,4947,7954,7034,7002,7026,7024,4933,4932,4944,7939,7940,7941,7942] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [5215,5216,5217,5561,5562,5826,5859,5847,6071,5845,5842,5858] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        