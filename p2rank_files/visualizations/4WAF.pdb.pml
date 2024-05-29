
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
        
        load "data/4WAF.pdb", protein
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
 
        load "data/4WAF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5718,6390,5714,6387,5723,5726,4987,5724,4984,4989,5725,4949,4951,4952,4986,4988,1370,6402,5034,5035,6169,6393,4983,4985,4677,4678,6226,6227,6228,4673,4666,4667,4668,4669,4670,4953,4671,6167,4706,4705,6200,1368,1369,6191,6193,6370,6394] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5356,5357,5358,5383,44,5355,15,18,29,34,36,39,19,21,12,13,23,964,5051,5052,5326,960,971,969,753,604,986,988,603,755,5024,5346,6417,6413,5047,6419,6422,6441,5077,5079,5080,5082,6426,5070,5071,5072,5382,5413,6106,5414,6425] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [3540,3543,5098,5099,9149,3399,3400,3528,3392,3390,3556,3375,3568,3575,3574,2586,5092,5109,3397,3382,3394,3395,3205,9146,9147,9140,9176,9112,9113,9114,9115,9783,9782,9780,9082,2585,2602,9121,9090,3398,9820,3401,3404,3196,2595,9055,9057,9758,9755] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [6078,6099,7069,6983,6527,6510,6982,6521,6508,7070,7071,7074,7076,7066,7068,6119,5846,6079,5849,5908,5907,5861,5860,6461,6383,6384,6466,6479,6485,6076,6473,6478,6477,6459,6462,6135,6162,6116,6123] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [7677,7681,7665,7671,7673,3497,3488,3494,3217,3397,3476,3477,4772,4759,4770,3502,7719,3489,3491,5091,5092,5093,5107,5108,5109,7683,7723,3412,3413,3409,7721] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [8444,8507,8509,8714,8689,3965,8508,3966,8701,8542,8547,8545,8655,8656,8658,8694,8654,8631,8627,8725,8721,8429,8428] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [9017,9018,9015,9902,3445,9900,3442,9910,9932,9931,9875,9876,9877,9874,9027,7158,7160,7163,3421,3423,9026,7162,8983,8985,8986,8987,8954,7164,7167,7168,7169,7170,8952,3411,3425,3426,3427,9878,9879,3432,7695,7696,3416] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [4180,4183,4186,4211,4213,4182,4196,2751,4200,4201,4204,4205,8500,3995,3996,8480,2755,4224,4225,4226,8475,8473,8474,8476,8493,4464,3994,4190,3968,3949,8492,4185,3946,3950] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [4811,1083,1085,4788,1084,3244,3247,4806,3240,3268,3243,3271,3275,3507,3509,3511,3512,3515,3239,5130,1067,1068,1069,4813,4812] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [738,5332,5334,5335,5297,5336,5300,946,948,678,5366,5621,5657,5649,734,735,702,696,700,706,971,969,968,966,945,937,701,736,737] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [3462,3465,3466,3484,2786,2787,3483,2726,2727,2746,8453,8468,2758,8475,2757,8299,8287,8283,8293,8294,8484,3450,3453,3454] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [9167,77,80,81,82,83,9164,9699,99,100,101,5447,84,86,92,98,9157,67,72,74,38,595,61,593,9155,30,32,37] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [5713,5714,5715,5717,5723,5726,5746,5747,5748,6470,6025,6027,6048,6052,6053,6054,6024,6028,6023,5703,6468,6471,6475,6469,6055,6492,6042,6069,6058] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [5697,5730,1993,1346,1347,2296,2316,5243,5245,5246,5281,5283,5284,2315,5282,5696,1336,4944,4945,1335,1345] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [6223,6263,6290,6291,1386,2147,2176,2175,2142,2143,2146,2105,2168,2169,6225,6226,6365,2177,6255,6345,6294,6253,6254,6359,6360,6373,6251,6252] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [7729,7730,3451,3452,3453,8288,8289,8287,8290,7749,7731,3490,3492,2746,3465,3484,3483,2726] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [8411,8413,8602,8606,8116,8117,8162,8613,8113,8114,8170,8172,8174,8409,8118,8124,8125,8126,8120] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [5084,5085,5067,5093,6142,5064,5065,5056,6421,6423,6428,6126,6125,6127,6143,6144] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [6263,6290,6291,1384,1385,1386,2106,2108,2109,2110,2168,2169,2142,2143,2146,2105,6301,6255,6253] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [2013,2240,2241,2264,2265,2268,1961,5965,5969,5971,5978,2225,5972,5976,5979,1576,1575,1577,1992,5756,1347,2297,2273,2298,2301] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [7843,7844,7846,8386,7795,7802,7803,7799,3942,3945,8223,8216,8235,8234,7794,7793,7839,3926,7807,7808,7809,8211,8214] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [6223,6260,6261,6262,6263,4655,1385,4645,4646,1386,2109,2110,4677,6302] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [1652,1815,2233,1569,1935,1936,1780,1781,1778,1779,1782,1786,2232,1933] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [8224,8500,8480,7735,3924,3925,3926,3930,7748,7749,8235,8257,8259,8256,8222,8258,8484] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [8296,8297,2803,3175,3176,3177,3460,2678,3178,3179,2827,2695] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        