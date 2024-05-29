
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
        
        load "data/5U7Q.pdb", protein
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
 
        load "data/5U7Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3746,3734,3736,3737,3745,3782,3783,3784,3725,3731,4025,4026,4027,4029,4073,4839,4826,3906,3907,3908,4178,4179,4325,4817,4326,4738,4330,4353,3729,4348,6031,6033,6035,3924,3767,3768,3905,3891,4009,3761,3763,3758,3749,3753,4008,4684,4722,4824,4825,4711,4378,4840,4841,4818,4739,4952,4848] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [784,785,623,624,646,614,661,662,783,603,2909,607,612,615,609,1704,1702,786,1204,1616,1057,1226,1231,769,2911,2913,1208,1203,1695,1056,1589,1256,1617,1701,1600,1696] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [11827,11828,8821,8822,8827,8812,8813,8879,8880,11847,11848,11851,11852,11855,11928,11929,11934,11935,12017,12023,12032,8876,8907,11881,8806,11849,11822,8841,11826,12025,12031,11825,11791,8851,8719,8720,8721,8696,8698,11986,8916,8918,8825,8828,8875,11920,11987,11958,8924,8925,8903,11983,8742,11913,11914,11916,8741,8745,8748,8717,11919,8684] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [11684,11686,11870,11881,8774,8809,8806,11689,11692,8586,11847,11848,11851,11852,11716,11718,11849,11850,11733,8807,8808,11818,11691,11681,11714,11715,11720,11723,8742,8743,11913,11915,11916,11886,8741,8745,8748,8763,8717,11905,8719,8720,8584,11695,11696,11887,11889,8577,8582,8611,8579,8626,8607,8613,11909,8624] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [11027,10072,10195,10196,11026,11104,11105,11106,11111,11114,10194,10614,10999,11000,11010,10666,10022,10071,10013,10017,10019,12295,12297,12299,10466,10467,10618,10179,10636,10034,10024,10025,10033] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [7868,7879,7980,7983,7063,7064,7065,6891,6888,6882,6889,6940,6941,7533,7535,6893,6902,6903,7896,7532,7895,9190,7483,7048,9188,7487,7505,7510,7335,7974,7975,7482] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [7857,7981,7983,7062,7063,7064,7065,7081,6924,6925,6910,6903,6906,6920,6921,6911,6915,6918,7996,7997,7998,8005,7166,7182,7183,7185,7184,7186,7841,7982,7995,7230] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [1717,905,1704,802,907,1702,786,951,1703,784,785,624,645,646,783,636,639,641,642,627,631,1718,1719,904,887,1854,1726,1562,1578,1700,1559] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [10988,10051,10297,10315,10041,10049,10317,10034,10037,11136,10313,11229,10314,10072,10195,10196,11112,11114,10194,10212,10987,11010,11135,11113,11126,11127,11128,11129,11130,10361,10972] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [2561,2562,5629,5675,5679,5680,5137,5138,2559,2571,2520,4915,2518,5139,5631,5633,5634,4907,4914,5117,5120,5125,5127,5128,4900,4905,5638] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4966,4967,4968,4848,4684,4700,4824,4825,4840,4841,4839,4826] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [5402,5403,5404,8559,8560,5373,8537,8535,5406,5371,5378,5380,5369,5376,5379,5055,8561,8201,8562,8212] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [12363,9651,9662,9688,9689,9690,10545,12441,10548,12420,12360,12370,12432,12387,12359] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [2977,1138,2970,2973,2974,2983,2984,2988,2989,2995,2969,1134,1135,252,3055,279,280,241,244,242,245,3034,3046,3001,278] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [6557,6558,6559,9334,6524,7414,6520,7417,9256,9322,6531,9252,9263,9280,9325,9253] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [2281,2282,11633,11635,11637,11640,11644,11643,1922,1924,1925,1928,1930,1933,1934,11615,2280,11666,11667,11668,11664,11642,11319] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [3251,3236,3247,4053,4055,4083,6215,3229,4092,6230,3272] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [6408,6411,6393,6404,6407,7249,7210,7212,6429,7240,9370,9372,6451,7204,6386] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [4217,4218,3640,3883,3826,3828,3865,3848,3849,3885] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [7375,7042,7005,7006,7374,6797,6983,6985] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [8283,8284,8285,8832,8854,8853,8856,7754,8319,8860,8861] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [11960,11961,11390,11392,11939,11963,10885,11968,11426] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        