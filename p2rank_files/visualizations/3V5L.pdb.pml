
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
        
        load "data/3V5L.pdb", protein
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
 
        load "data/3V5L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7082,7081,7115,7112,7113,7114,5300,7142,7102,5172,5173,5175,5237,7084,5269,5271,5273,5298,5299,5301,5303,5297,7065,7066,1569,5235,5236,7062,7038,7051,7206,7208,5267,7069,7030,7033,7034,7103,7104,7105,7127,7128,7131,7134,7132,7133,7162,7155,7156,6824,6825,7106,5150,5154,5153,5166,5139,5126,5065,7140,7141,7173,7175,7174,7176,5138,5292,3162,3251,3254,3389,3391,3392,3250,7163,3387,3390,3388,3382,3386,3270,3324,3326,3360,3361,3362,3375,3325,3219,5157,3217,3218,5122,5118,5120,7178,5121,7177,3215,3247,3223,3236,3381,3242,3235] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2485,2456,2459,2463,2816,2464,2447,2448,2431,2455,3825,3828,3829,3826,2439,3816,1970,1973,1976,1963,1964,4347,4335,4321,4323,4327,2787,2801,1992,2095,2401,2402,2403,2404,2411,2815,1968,2011,2425,2427,2428,3809,1969,1962,1965,1966,1967,1955,1948,3876,1991,1993,1971,2432,2433,2110,2405,2407,2886,2892,2894,2111,2112,2893,2483,4348] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5739,5741,5742,5746,5757,6270,6271,6266,6629,6710,6628,6703,5888,5889,5890,6212,6214,6213,6292,5732,5734,6238,6262,6263,5730,5735,5736,5729,5731,6235,6209,6210,6211,5873,6208,6218,5770,5772,5886,5771,6600,6614,6709,6711] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [115,116,109,110,111,112,113,114,1046,608,971,583,584,585,970,577,579,591,952,1038,249,553,554,555,563,580,1045,557,145,146,147,132,264,265,266,607,611,615,616,637,942,951] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [4377,4355,4356,4348,4351,4714,4713,4784,4301,4302,4303,4791,4299,4300,3977,3831,3858,3834,3837,3975,3976,4685,4699,4790,4792,3960,4323,4327,4307,4324,4297,4298,4347,4335,3825,3829,3826,3856,3857] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [5250,5251,4905,4878,4879,5462,5464,4876,4877,5473,4882,4922,4924,4885,5246,5247,1537,4912,4913,4909,5219,5244,4903,4881,4900,5220,1539,1541,1512,1513,1511,1517,1526,1533,1509,1416,1419,5467,1477,5249,1400,5465,1385,1532,1397,1386,1389,1534] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [7248,7251,7256,7217,7218,7226,7227,7229,5456,5457,5458,7213,5262,5282,5416,5279,5419,5415,5281,5439,5451,5427,5429,5392,5395,7230,7231] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [108,110,111,113,114,101,608,583,577,579,591,6234,6232,94,97,5790,5721,5733,5734,6246,6262,6263,5730,5728,5731,607] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [7064,7065,7067,7071,1567,1568,1569,7075,5227,5236,7068,7069,7070,692,1347,5258,5229,1368,1369,693,694,1346,1358,1579,1336,1345] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [5130,5128,5129,4821,4861,4860,5075,5137,5117,4848,4846,2510,4407,4369,4370,4686,4688,2515,2531,5113,2513] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [5730,5736,603,5728,5731,5734,6254,6255,6262,6263,635,599,600,598,676,675,6290,6292,6269,633,639,640,6331,6266,5733,591] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [638,6328,667,629,1324,1109,1110,1095,1079,6344,1080,630,943,944,945,947,1375,1377,1376,1097,1384] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [6739,7041,673,6322,7049,6772,6773,6284,6285,6601,6602,6603,6605,689,6987,6321,7040,7042,7036,7039,7025,7029,6293] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [129,130,265,266,286,1040,1067,321,323,540,316,309,310,315,347,1069,128,1068] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [6734,5988,6733,5911,5920,5953,5989,5899,5903,5906,5959,5961,5890,6195,5954,5754] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [4402,2486,2476,2477,2478,3172,2957,3213,3214,3221,3225,3226,3227,3234,3210,2788,2789,2790] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [7184,7186,7359,7360,7365,7167,7187,5351,5313,5346,5326,5324,7319,7322,7318,5357] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2381,1935,2364,2367,1931,1933,1892,1893,2355,1891,1889,2336] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [5699,5700,5701,6188,6157,6159,6162,5697,5655,5657,5658,6173,6171,6174,5896] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [35,37,38,492,507,39,506,533,79,81,273,516,519] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [3796,3752,3792,3794,3750,3753,3754,4277,3795,3984,4233,4260,4250,4257,4262,4263,4251,4254,4255] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3977,4116,4284,4062,4086] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        