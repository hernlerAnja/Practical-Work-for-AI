
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
        
        load "data/7LS0.pdb", protein
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
 
        load "data/7LS0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4277,4278,4279,4395,4210,4211,4212,4213,4259,4260,4261,4274,1522,4379,4318,4378,4320,4178,1521,4283,4297,4293,4317,2958,2960,2762,2763,2764,2765,300,301,4265,4393,2757,4249,4240,4241,2942,4156,4243,4244,4245,2935,2936,1554,1601,1602,1606,1608,1736,1553,1518,1579,1580,1581,1582,1588,1590,276,278,279,282,1572,4180,1497,1585,103,105,106,299,296,1755,277,1615,1617,1618,1619,1620,1734,1519,1621,1720,1661,1658,1659,1624,1634,1533,1637,1638,2933,2934,1657] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [3422,3479,3508,10115,10446,10498,10500,10531,3509,3521,3475,3476,3477,8045,8027,3428,8052,10094,10098,10101,10107,10112,10080,10097,10488,10496,10086,10087,10089,10530,8059,8060,3432,3433,3434,3435,3437,8044,8040,8043,3440,3441,3447,8046] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [773,775,5396,769,5381,817,818,819,820,816,7791,7841,7843,7845,7833,849,848,850,862,791,794,5364,5382,788,790,778,5397,7431,7434,7417,7423,7424,7425,7426,5383,5389,7435,5380,7444,7452,7438,7440] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [5871,5859,5862,5863,5864,7397,7398,7400,7401,7929,7931,7402,7932,5845,7923,6539,6540,6541,5850,6592,6599,6615,7274,7275,7276,7277,6619,6620,6621,6624,6625,6629,6630,6528,7260,7253,7256,6600,6590,6594,5846] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [4786,5180,5182,5212,5213,4761,4751,4752,4756,5170,5178,5128,4772,4769,2716,4778,8806,8808,8837,8805,2698,8838,8757,8776,8751,2715,8779] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [8505,8506,9255,9204,10586,10587,10609,9278,8522,8525,8526,9940,10064,9262,9281,9260,9279,9916,9938,9939,9923,10550,10578,8507,10584,8535,8533] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [5537,5333,5336,5327,5535,5539,5340,5341,5342,791,793,794,795,5361,827,829,826,5533,5530,5547] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [8120,661,8123,8146,8147,678,679,680,8149,658,8148,659,291,8219,1105,1106,1107,1108,1127,1129,1104,1126,8156,8145,8179,8182] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [4191,4193,4297,4298,4303,4299,4290,4291,4089,4446,3676,3635,3642,3645,4084,4085,4086,4088,4547,4548,4550] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [538,2573,539,546,548,2075,2572,2607,2608,2599,2601,2602,2609,2610,2632,2077,2574,534,525,517,1216,1275,1272] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [4590,3932,3954,3955,3193,3196,3197,3873,4610,3875,3184,3924,3928,3929,3934,3925,3927,4594,4586] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [2593,2329,2391,2392,2393,2394,2327,2388,2389,2390,2360,2288,2300,2304,2306,2303,2260,2261,2325,2324,2363,2434,2222,2225,2226,2432,2255,2256,2259,2251] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [7467,5751,5736,5737,7484,7783,7771,5905,7362,7497,7502,7775,7508,5906,5909,5903,5902,7359,5908] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [4963,4966,5052,5053,4986,4988,4962,4889,4892,5093,5091,5051,4919,4922,4944,4951,4947,5252] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [9628,9005,9632,9633,9636,9619,9620,9415,9417,9418,9413,9627,9520,9522,8969,8971,8975,9879,8964,8977,9876] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [3449,8024,8027,8004,8003,8005,10446,3509,3521,3488,3487,3485,8196,3451,7999,3450,3461,8020,8023,8193,8198,8205] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [5228,5231,5232,5233,3179,5230,5266,5268,3924,3928,3934,5269,3925,3927,3192,3193,3196,3197,4735,3176,3932,3205,3183,3184,3175,5260] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [1638,1639,1640,1429,1631,1787,1427,1430,1889,1891,1884,1888,1534,1535,1425,1644,1645,1648,981,983,984,986,1890,976] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [2521,2522,2523,39,57,2469,2128,2092,6145,6174,6142,6143,6119] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [282,283,284,1572,292,1564,1570,1091,1108,1129,1142,1573,1577,1574,290,291,8181,8182,8183] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [10023,10165,10430,8568,8414,10147,10148,10426,10146,8400,8399,10160,10152,10171,8572,8569,10022,10425,10427,10025] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [268,256,289,8126,291,330,8123,8146,679,680,8149,8125] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [63,71,72,55,56,57,2110,2113,6094,6102,6098,6120] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [6965,6956,6755,6964,6969,6312,7215,6301,6970,6306,6308,6752,6342] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [4075,4080,4200,4160,4164,4166,4171,4159,4172,4154,4059,4148,4144,4066] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [409,410,411,412,2159,2160,2453,2177,2179,2183,426,2449,2450,581,2035,2039,2040,416,577,578,580,2037] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [4698,4818,5109,3071,4836,5112] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        