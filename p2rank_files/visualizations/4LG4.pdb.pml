
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
        
        load "data/4LG4.pdb", protein
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
 
        load "data/4LG4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [23274,23275,23409,23689,23690,24579,23815,22736,22737,22738,22638,22653,22654,24536,24580,24734,23771,23408,23703,22640,22945,23723,22641,26617,23736,23739,23765,26618,26619,22686,22687,24745,24746,22663,22676,24747,24759,24761,22978,23210,23212,24740,24741,23147,23206,23208,23219,23224,23207,22693,22697,22976,22977,23150,23655,23015,23149,23151,22700,22702,23211] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [132,153,1105,133,1102,1104,1106,22538,22540,457,422,459,460,461,4,22519,22866,22828,12,13,14,17,51,52,47,23465,23466,23484,1088,23494,23509,23485,23486,23491,1060,22434,22388,22391,22435,22470,22520,22471,22404,1079,1085,23506] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [10540,10573,10576,10577,9782,9510,10112,10246,10526,10527,10602,10587,9815,9574,9533,9546,9573,9575,13709,13707,9523,9524,9506,9507,9508,10049,10110,10111,11568,11571,11577,11578,11583,11584,11415,11416,11417,10612,10608,10046,10047,10048,11373,10653,9511,11589] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [10328,10349,10346,10348,4686,4676,4719,4724,4673,5736,5739,10331,5730,4825,5748,5753,5755,5756,5757,4804,4805,9410,4689,9304,9390,9258,9261,5108,5111,5711,9274,5071,5073,9389,9665,9704,10322,10303] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [2355,1369,1370,2145,1359,1360,1365,2187,2188,2189,2354,2356,2340,2343,2349,869,867,868,804,805,806,1297,1001,1330,1333,1342,1409,1344,332,250,275,276,330,331,4480,571,572,818,539,251,253,1317,1283,1284,254,2368,2370] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [4947,4948,4921,4945,4983,4923,4925,4982,4926,5934,5935,4922,6824,5984,5985,5966,5981,5190,5948,6020,6021,6825,6059,6060,6010,9065,9066,5995,9064,6781,6976,6979,6985,6991,6992,6959,5519,5520,5653,5654,7006,5222,5223,5469,5456,5453] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [14012,14075,14875,14893,14904,14919,14890,14025,14011,14076,14264,14232,14841,14857,17753,14113,14114,14877,14969,14929,15690,15734,14265,15894,15896,15897,15700,15888,15733,14623,14844] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [7170,7173,7175,6754,6047,6048,7284,7680,6779,7733,7738,7741,7765,6780,6781,6791,7219,7259,7261,7812,7811,7833,7285,6061,4948,6021,7159,2503,2504,7157,7158,7218,2576,2577,2554,7872,7873] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [20005,20006,20173,18470,18472,20172,20160,18232,19165,19129,19115,19116,19191,19197,19202,19241,18195,19176,22195,22196,18198,18440,18194,18231,18233,18213,18193,18835,19162] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [22999,23549,23510,23512,23631,22756,22758,23635,23636,22567,22568,22485,22488,22533,22566,22474,22484,22472,22473,22998,23000,23550,23634,22534] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [6720,7018,7020,7230,7231,6692,6690,6693,6695,7358,7454,7456,7302,7303,6694,3268,3271,3319,3320,3269,3273,3318,7189] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [18392,18320,18391,18322,18374,18893,18894,18895,18896,18898,18899,18425,18095,18097,19098,18938,18891,18910,18892,18911,18318,18321,18319,18076,18323] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [5243,5244,5245,5877,5878,5880,5002,5003,5001,4851,4852,4853] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [2908,2886,2900,2907,2911,1906,3982,3985,1903,1904,3986,3987,2901] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [2692,2118,2698,2041,2072,2074,2076,2064,2070,2093,2156,2116,2155,2587,2590,2645,2644,2646,2599,2603,2604,2643] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [14161,14162,14163,14826,14827,14724,14726,14217,14218,14132,14141,14245,14681,13905,13906,13908] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [15589,15900,15587,15546,15547,14489,14538,15867,15868,14607,15447,15448,15581,15583] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [15466,16172,16173,16184,16158,16168,16161,15464,15462,15463,17257,17259,17267] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [3123,3645,3621,3646,16430,16431,16432,1590,1593,1595,16499,1561,1573,16509] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [11146,11149,12128,11147,13223,13210,13213,11091,12129,13202,13215,12135,12136,12139,12141] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [23375,23377,24144,24145,24211,24667,24669,26387,26349,26369,24142,24143,24088,24091,24164,24141] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [967,969,1758,2274,2275,2277,2279,971,950,1685,4249,1682,1805,1735,1736,1737,1739,4211] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [3674,3675,16894,16892,3659,3669,3636,3662,16395,16917,16918,16403,16405,16407,3676,3637,3603,15121,15122] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [2353,804,805,806,2364,731,2354,2356,288,294,295,296,297,298,728,745,2076,2590] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [24312,25050,26123,26125,24308,24310,25038,25039,24309,24254,26148] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [24911,24912,25007,25009,24447,25131,24855,24857,24829,24851,24448,24450,24474,20984,20986] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [5415,10449,5778,10007,5857,10370] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [6557,6497,8584,7485,8570,6555,7486,6554,7497,8572,7474,8590,8595,7481,7471] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [23170,23609,1206,1127,23099,23100,691,693,764,23533] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [20358,20407,20413,20432,20318,19873,19901,19935,20359,20316,20406,20708] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        