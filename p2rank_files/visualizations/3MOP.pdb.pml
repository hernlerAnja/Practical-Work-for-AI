
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
        
        load "data/3MOP.pdb", protein
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
 
        load "data/3MOP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [11118,11119,11120,11151,11087,11112,11113,11116,11117,11125,10094,10098,10103,10104,10128,10105,10095,11092,11285,8249,8246,8255,8256,11150,11140,11142,11143,11144,11145,11148,11149,10130,10132,10136,10126,10127,10367,10368,11200,11239,11240,11242,11128,7754,11283,11280,11282,11310,8254,11319,10363,11147,11180,11181,11141,10366,10365,11201,11100,11086,11060,11088,11080,11085,10400,7747,7749,7760,7763,7799,10401,10402,7790,10415,10436,7796,7798,7765,8270,10073,10396,10397,10399,10386,8269,7742,7743,7746,7750,7751,11271,8267,10398,8731,8732,8733,8760,8618,8619,8574,8791,8766,8728,8758,8762,8763] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [9565,9566,9567,8802,8807,8810,9597,8808,8815,8816,8545,8546,9533,9535,9536,8779,8817,8819,8826,8821,7148,9595,9596,9610,9612,9615,9616,9617,9656,9657,9658,9618,8813,7149,9643,9644,6919,8795,8797,9555,9561,8781,8782,8608,8784,8543,9559,8542,8548,8549,8550,8552,9520,9558,8553,8573,8575,11188,11190,8572,8761,8567,8568,8571,8602,8561,6059,6072,7112,7150,6055,6058,7115,7116,7144,7145,7152,7151,7146,7147] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [3514,3515,5982,5986,5983,5985,5987,6022,6355,6356,6357,6361,6369,6382,5980,6381,6014,6015,6362,6048,6049,6050,6345,6346,6347,6353,3534,3530,5989,7126,7127,3535,3725,3727,3516,3581,3580,3697,3661,3663,5958,5959,5961,3686,3692,3687,3689,3691,7154,7180,7153,7163,7155,7112,6052,6055,6056,7121,7125,6325,6326,6046] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [9607,6907,9608,10328,10325,10326,9576,9302,9338,9311,9312,9313,7991,7992,7993,7994,7961,10448,10450,9571,9578,10387,10388,10407,10408,10409,10353,10357,10358,9575,10349,10350,10351,9341,9344,10389,10449,6902,6903,6916,6946,6918,6919,6945,9644,9622,9623,9282,9602,9605,8024,9599,9600,9609,9610,9611,9618,6952,6954,9281,7990,7996,6899,7989] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [6859,7205,7201,7202,7213,7225,7226,6893,6894,7190,7191,7199,7200,7189,7194,6827,6830,6831,4414,6832,6833,6834,6802,4348,4349,6866,7969,7970,7971,8007,7965,7967,7968,7999,6889,6890,6891,6892,6895,7998,7170,4559,4560,4561,4526,4531,7234,4529,4533,4351,4521,4525,4523,4413,4415,6804,6803] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [2632,2921,2938,2598,2597,2590,2592,327,328,2566,2567,2563,2561,2940,2919,181,2601,2602,2604,2605,194,195,362,391,2949,2974] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [2682,2891,2892,5142,5143,2829,5114,5136,5117,2827,2893,2889,2855,5546,5547,2863,2864,2830,2865,5518,5537,5538,5503,5505,5513,5535,5536,2680,2681,5146,2747,5144,2745,2746,5145] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [8766,8727,8728,8763,7735,7744,8736,8015,8789,7734,7776,10398,7740,7743,7755,7762,7763,10394,10396,10397,10395,8034,8035,8737,8767,8741,8740,8045,7736,7738,8046,8009,8011,8013,8033,8036,8003,8014,8038,8039,8057,8765,8788,9606] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [4234,4235,4257,4266,4589,4269,1996,4606,4258,4260,4233,4581,4587,4588,2059,4617,2029,2030,2058,4271,1846,1847,1848,1912,4273] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [8818,8546,9535,9536,8520,8521,8826,8484,8489,8519,8830,8852,8481,8511,8510,6098,8488,8490,8451,8452,6101,6102,6263,8853,8855,6100,8453,6074,6071,6109] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [3753,3783,1033,3755,3772,3423,3426,3422,3424,3431,3395,1196,1224,1195,1162,1029,1015,1014,1225,3400,3401] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [8804,8823,8824,8825,8772,8864,8035,8767,8773,8774,8775,8033,5211,5214,5215,8028,7179,6300,6301,6303,6305,6271,8865,6302,6304,6306] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [10366,10365,10345,10379,11141,10381,10132,10133,10126,10127,10367,10368,11139,11142,11143,10151,10152,10155] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [10398,8731,8732,8733,7740,7743,7746,7751,11264,11266,11269,10397,7744,11200,11239,11240,11241,11242,7753,11263] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [9574,9335,9341,9345,9575,9589,10350,10351,9344,9552,9553,9588,9402,9400,9576,9573,9630,9355,9359,10375,9365,9364,9360,9363] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [8045,8049,7674,8070,7646,8069,7666,7668,7678,7676,8035,8037,8040,5230,5256,5461,5258,7648,8078,5228,5229,8041] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [6877,7441,6878,7465,7467,7468,7931,7933,7934,7462,7460,10002,10004,10006,10013,10014,10015,9982,9984,6844] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [3131,3123,3129,2705,2714,6169,6450,6458,6456,6457,2710,2713,6160,6162,6159,6199,6158,6255,6204,2708] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [6000,6001,6597,6623,6616,5996,5998,6033,6624,5999,9212,9214,9223,9221,9222,7085,7087,7089,7070,9747,6034] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [7423,7425,6921,7426,7410,6898,10491,10493,6909,6955,10479] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [7677,7678,8716,8744,8908,8905,8906,8715,8742,5264,5265,5714,5736,5266] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [4312,8105,8106,4825,8139,4808,4359] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [10222,10456,10464,10466,10505,10460,10453,10459,10454] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [8886,5188,8929,8416,8419,8892,8889,8891] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [10865,11207,10885,10886,8582,8584,10862,10866,10897,10887,8619] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [10792,10795,11267,11268,11270,11312] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        