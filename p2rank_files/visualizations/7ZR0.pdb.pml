
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
        
        load "data/7ZR0.pdb", protein
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
 
        load "data/7ZR0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [271,306,280,301,303,304,305,307,666,664,665,284,945,949,951,733,734,735,1045,264,297,298,302,322,326,354,355,330,653,654,657,658,695,296,325,635,1305,1303,1304,620,1321,1044,655,656,773,774,779,784,770,775,777,724,727,776,2699,2700,900,903,904,906,896,897,902,905,926,933,937,938,939,941,928,929,927,919,723,763,2696,275,276,2681,2697,921,778,806,962,2441,2442,2462,2668,2411,2413] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [6438,6437,6436,5906,6048,6059,6060,5896,5903,5855,5857,5908,5909,5827,5860,5798,5790,5797,5799,6030,5413,5430,5433,5434,5435,5436,5437,5438,5440,5439,5441,5444,5768,5753,5766,5767,6052,6055,6033,7810,7811,7812,6036,6037,6039,6078,6080,5867,6454,6177,6061,6062,5856,5861,5415,5407,5408,5409,6066,6070,6071,6072,6074,7794,5327,7805,5917,5488,5828,5463,5787,5786,5788,5791,5912,5911,5457,6038,5455] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [140,149,151,120,142,5253,5282,5284,5317,5318,184,185,5276,936,2683,2685] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [8867,8870,9021,9020,9503,9507,9508,9509,9515,9019,9488,9495,9490,9469,9472,9487,8611,8610,9519,9521,9516,9009,9011,9459,8698,8699,9012,9441,10034,9514,10050,9447,8608,8613,8656,8657,10038,10028,8897,8899,8900,8901,8903,8892,8894,8998,8594,8595,8981,8593,8602,8604,8664,8682,8683,8927,8929,8930] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [984,1029,1150,1151,1167,1175,982,948,128,129,960,5200,5201] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [3510,3507,4921,4925,4394,4401,4402,3500,3495,3897,3898,3899,3503,3544,3539,3489,3491,4927,3584,4914,4915,4918,4919,4920,4924,3569,4923,4328,10088,4406,4395] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [3498,4406,3496,4395,3750,3752,3753,4390,4356,4372,4375,3907,3908,3497,3480,3481,3482,3781,3779,3868,4377,4382,4374,4415,4417,4414,3495,3899,4396,3906,3884,3885,3874,3880,4394,3788,3790,3784,3787,3814] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [13592,13447,13448,13601,13609,13151,13348,13350,13128,13129,13166,13321,13768,13770,13769,13583,13784,13787,13775,13782,13767,13557,13165,13556,13554,13555,13191,13121,13522] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [198,202,7790,7831,7832,7804,7820,2690,2691,2703,2707,2719,2712,2716,2677,5336,2709,2710,2711,7789,7829,7819,7849,177,178,186,187,176,179,2684,5311,7797] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [9607,12586,9565,9566,13032,9610,9611,9604,9621,12569,12570,12581,12556,12557,9586,2310,2273,13023,2267,2271,12568,12571,2295] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [11700,11701,12250,12252,12056,12034,11622,11623,11620,11885,12031,11625,11738,11699,11727,11729,11591,11739,12058,12059,12030,12062,12064,11857] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [9737,9738,9973,9723,9258,9977,9950,9952,9795,9259,9740,9953,9975,9948] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [12574,12575,12576,12578,12579,12571,12572,12577,2310,2273,2274,13022,13023,13071,2279,13070,10447,12561,2308,10444,13072,10446,10456,10457,10445,2282,2335] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [8366,8367,8822,8984,8921,8455,8456,8802,8985] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [12579,12594,12577,13022,13102,10447,10450,13001,13003,13103,13067,13000,13068,13070,10446,13072] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [12274,12272,11672,11674,11675,11677,12026,12278,12344,12345,12368,12366,12276] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [2385,2386,2387,1559,1992,1993,1988,1990,1547,1991,1984,2453,1516,1518,1509,1540,1556,1558,1545,2404,2406,2451] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [12332,12334,12336,12497,12276,12335,12393,12365,12367,12390,12050,12363,12360,12329,12356,12357,12359,12082,12084,12085,12241,12080,12081,12074,12394] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [7642,7921,7922,7955,7956,10367,8264,8265,10365,10366,8251,8252,8271,8272,8273,8263,10381,10383,10384,7641,7632,7638,10486,10487,8239,10385,10364] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [3058,3092,3023,3025,3236,3724,3739,3019,3746,3748,3710,3747,3250,3245,3256,3263,3321,3252,3712,3713,3322] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [4985,5008,5045,9417,5046,10003,10000,9429,10028,10029,10030,8688,8698,8699,9418] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [6093,6083,6283,6117,6300] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [7531,7546,6034,7545,6700,5450,6701,6702,6714,6715,6016,5479,6018] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [11209,11222,11250,11251,11172,10581,11176,11177,11173,11227,11229,11228,10590,10592,10631,10620,11204] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [12161,12198,12143,12146,12162,7381,7382,7384,4529,4527,12227,12228,12230,12199,12504,7386,12192] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [4145,4146,4860,4837,4840,4864,4610] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [10315,220,1390,10314,10316,1363,1364,990,164,994,158,10287,10272,10273,10282,10283,10286] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [4917,3575,4305,4316,4320,4323,10120,10097,10098,10121,4891,4892,4859,4895,10158,10159,3584,4915,3586] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [13408,13646,13645,13678,13714,13742,13397,13399,13398,13677,13709,13712,13705,13713] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [11900,12425,12463,12483,12484,12070,12427,11861,11898,11863,11864,12462] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [8903,12570,12585,12587,9497,9530,12590,8904,12586,9672,9674,8879,9495,8870] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [601,605,1335,1336,619,254,531,255,283] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [5380,5417,5752,6469,5734,5736,5738] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [11984,11986,12462,12424,12016,12429,12433,11891,11892,12463,12461] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [10705,10676,10733,11038,11008,11045,11046,10739,11047] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [13356,13393,12995,12817,12819,13364] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        