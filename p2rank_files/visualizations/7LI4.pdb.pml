
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
        
        load "data/7LI4.pdb", protein
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
 
        load "data/7LI4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9706,10037,10039,9704,9707,9607,9609,2421,2422,2420,2612,2611,2613,2619,2595,2761,2762,2776,2778,2791,2965,2968,9675,9686,9700,9703,9708,9687,9688,2945,2948,2172,2175,2402,2403,2404,2593,2594,1701,1702,2158,2159,1684,2385,2386,2574,2577,2579,2573,2572,2592,2588,9701,9702,2387,2152,1686,1687,1688,9210,9211,9596,9599,9608,9598,9600,2429,2430,2431,10078,10081,10072,10030,10031,10032,10018,1646,1730,1731,1739,1741,1743,1716,1714,1725,1729,1726,1732,2189,2194,10036,1668,10045,10063,10048,1447,1480,1481,1448,9593,9585,9157,9158,9589,9090,9091,9099,9084,9159,9065,9080,9611,9603,9604,10022,9644,9676,9677,9678,9679,9680,9092,2799,2800,3180,9056,2992,2993,3179,3181,2982,9104,9109,9110,9106,9111,9120,9121,3356,3147,3163,3164,3333] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [9571,9137,9095,9138,9096,9590,9593,9588,9101,9100,9226,9094,9097,9098,9099,9981,9990,10120,9977,9983,10005,10006,9594,9611,9614,9618,9619,10127,9465,9466,9467,10121,9576,9102,9982,9598,9131,10133,10136,9240,9241,9242,10129] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [12317,11554,11914,11916,12328,11915,11921,11922,11911,11912,12323,11907,11918,11215,11217,11218,11557,12303,12309,11888,11897,11901,11927,11558,11561,11562,11923,11227,11228,11565,11573,11576,12013,11596,11597,11182,11185,11196,11534,11548,13558,11197,11200,13555,13557,13546,11544,12306,13528,13541,13542,11170,13217,13222,12736,12741,12750,12313,12735,12729,12312,12726,12327] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [6876,7363,7349,7356,7361,7362,5514,5516,5515,8352,8355,8356,7710,7711,6814,5793,6874,6878,6860,6868,6871,6872,6873,6875,6786,6886,7708,7709,7700,7357,7358,7370,8342,6891,6892,6894,6913,6887,6914,7743,7745,7706,7734,5503,5510,5518,5523,4955,5399,5537,5542,6821,6822,5531,6810,6812,6813,6856,6820,7364,7378,5482,5398] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [7438,7926,7439,7656,7661,7663,7666,7645,5762,7646,5478,5477,5481,5482,5469,7411,7912,7913,7914,7915,7636,7642,7410,5443,5444,5472,5474,5719,5720,7683,7687,7689,7701,7697,7702,7402] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [4737,4738,6785,4707,6764,6765,4704,4708,4700,4697,4823,4825,6353,6354,6794,6796,6369,6819,6820,5558,6789,6358,4688,6821,6823] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [5007,5010,4999,5000,5001,5005,5006,5027,5013,5034,5173,5181,5186,5177,5180,5041,5425,5426,5028] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [10061,10062,10063,10064,10065,10067,10051,1633,1635,1624,10066,13930,13931,13929,13896,13898,1659,1674,13905,13906,13873,10071,10070,13951,13952,13958,13953,13955,1426,1640,13991,1440,1444,1400,1416,1637,1639,1408,13957,13959,13989,13962,10073,1423,1425] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [10246,10243,10614,10616,10238,10244,10554,4225,10587,4236,10586,4605,4412,4417,4235,4608,4224,9964,10259,9971,9978,9632,9635,10533,10260,10534,9670,10562,10561] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [4434,4433,4073,4278,4280,4447,4071,4074,4253,4255,4063,4064,4270,4047,3865,3866,3693,3872,3684,3852,4649,4456,9287] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [8266,8301,8302,8303,8499,8500,8501,8479,8392,8394,8648,8650,8467,9306,9309,8874,8643,8863,8864,8866,9343,9344,8268,9307,9310,9311,9314,9315,9316] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [13063,13096,13062,13341,13171,13474,13026,13029,13169,13178,13340,13179,13329,13501,13510,13507,13480,13483,13471,13479,13328,13325,13180] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [9438,9829,9830,13995,9851,9855,9858,9860,9862,9437,9439,9888,9889,9846,9850,13996,13974,14032,14033,14042,14065,14068,14004,14008,14010] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [4785,4786,4787,6753,6754,4748,4749,4751,4756,4745,4747,4733,6886,6751,6752,6756,6757,6760,6761,6763,6783,6784,4736] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [9741,9739,13906,13870,13871,13873,10066,10067,1677,1679,1680,13856,13857,13604,9720] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [9399,8937,9427,9429,14086,14087,8935,14088,8936,8944,8934,9473,9478,9479,9474,9484,14059,9490,14058,9391,8916] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [12235,12250,12252,12492,12493,12494,12495,12526,12543] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [7328,7045,7043,6548,6550,7013,7290,6546,6538,7257,7019,7052,7298,7296,7271,7229,7021,7046,7292] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [7336,7076,7294,7295,7297,7298,7299,7296,7271,7070,7074,7199,7216,7194,7398,7384,7386,7387,7191,7198,7202,7203,7207,7209,7305,7306,7307,7309,7383,7374] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [4778,4779,10269,10303,10625,4577,4581,10304,10302,10306,4583,4601,4584,4586,4588,10593,10630,4775] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [13421,12979,12795,12797,12880,13383,13386,13385,13388,12879,13370,13283,13286,13422,12957,13420] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [11752,11755,11754,11207,11236,11208,11289,11637,11261,11264,11267,11260,11271,11388,11389,11390] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [8883,8881,8882,9505,9510,9502,9509,9499,8720,9521,9520,8951,8954,8962,8963,8952,8958] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [3669,3527,3668,3514,3515,3347,3164,3333,9109,9110,9120,9121,3180,3181,3529] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [9945,9946,9991,9949,10216,9966,10145,10141,10142,10143,10144,10136,9922,10151,9929,9981,9989,9990,10119,10120,9983] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [12154,12155,11828,12111,12113,12151,11732,11717,11830] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [6924,6926,7327,7315,7325,7287,7286,7288,6946,6942,6943,7283,6918,6921,6967,6563,6549,7328,6548,6550] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [13228,13232,13233,13222,12736,12749,12750,13236,12752,12755,12327,12331,13237,13565,13552,13555] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [12208,12209,12210,12004,12005,12022,12104,12525,12529,12530,11963,12527,12102,12216] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [4456,4458,9287,9288,4073,4278,4279,4280,4074,4457] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [10022,10107,14059,9578,9581,10024,10083,14028] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [10519,10546,10551,10552,10747,10695,10696,10547,10745,10521,10517,10522,10601,10639,10640,10642,10610,10647,10643,10608] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [3043,3209,3217,3218,3220,3219,3230,3235,3239,3224,3032,3037,3041] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [2267,2394,2395,2369] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [6004,6005,6006,6007,5778,5779,6011,8434,8417,8420,8403] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        