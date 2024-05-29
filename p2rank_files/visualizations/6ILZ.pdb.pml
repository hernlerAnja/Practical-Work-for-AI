
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
        
        load "data/6ILZ.pdb", protein
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
 
        load "data/6ILZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2181,2184,2185,618,2177,2179,1070,1071,971,357,188,190,1068,974,982,1073,1076,1077,1079,972,2180,996,997,998,51,102,57,60,71,72,2199,53,54,584,49,101,117,176,182,566,171,172,173,174,2150,582,586,588,570,2174,2175,2176,2178] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [2539,2540,2610,2501,2541,3014,3031,3007,3025,3493,3423,3019,3028,4597,4599,4594,2498,2499,2500,3424,4572,4605,2497,2502,2503,2623,3000,3003,2625,2627,2877,2876,3002,2802,3491,3494,3495,3498,3502,2735,3499,3500,3501,3492,3408,2508,2509,2511,3052,3053,3055,3397,4607,3398,4622] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [4942,4991,4882,4885,4924,4925,4926,5796,5886,5887,4881,4887,4884,4886,6945,6952,6955,6956,4866,4941,6921,6923,6924,5786,5388,5007,5008,5883,5888,5385,5387,5392,5399,5404,5410,5879,5880,5881,5882,5416,5811,6951,5439,5812,6947,6949,5438,5785,5406,5413,5408,6946,6948,6950,5187] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [7248,7289,7288,7290,7245,7251,7252,7254,7257,8246,8146,8156,7355,7249,7773,9316,9326,9327,7806,9289,8171,8172,8239,8241,7783,7759,7766,7771,7777,7780,8145,8240,7804,7805,9318,9320,9321,9322,9317,9319,7371,7372,7734,7755,8242,7553,7370,8247,8248,8250,8243,7554,8256,8258,7628,7629] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [1819,1325,1329,1331,1336,847,872,875,1820,1821,1827,1333,870,1835,1141,871,1139,1140,1142,1143,1340,1365,1368,1817,1822,1855,1844,1853,1837,1857,1861,1156,1162,1321,1322,1773,1778,1782,1839,1774,1311,878,883] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4258,4261,4244,4250,3565,3568,3756,3758,3746,3747,3750,3754,3755,3757,3759,3578,4262,4263,4208,4205,3584,3729,3316,3280,3303,3304,3305,4260,3319,3761,3790,3793,4240,4284,4288,4242,4281,3765,4195,4196,4197,3766,4198,4200,3307] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [6132,6136,6143,6147,6148,6607,6608,6172,6604,6606,6609,6614,6644,6570,6571,6561,6562,5686,5687,6137,6138,6139,5661,6175,6648,6129,6124,6128,6074,5953,5955,6140,6624,6622,6631,5685,5693,5697,5700] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [8506,8508,8993,9002,9005,8032,8056,8057,8068,8060,8540,8989,8543,8999,9004,9020,9021,9024,8944,8945,8950,8954,8994,8479,8946,8947,8957,8332,8496,8515,8516,8497,8500,8504,8511,8310,8326] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [204,85,203,241,294,300,295,296,1093,293,1094,1095,292,1073,1079,1092,357,549,188,548,550,189,190,1068,322,551,547,546,566] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [5121,5113,5114,5116,5905,4914,5007,5008,5120,5883,5888,5904,5906,5907,5910,5913,5796,5755,5756,5886,5887,5889,5772,5773,4926,4888,4912,4891,4895,4913,5789,5879,5880,5882,4909,4904] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [7843,7844,7876,7874,7875,7877,7898,7928,9244,9254,9257,9245,9247,9249,9263,9267,8179,9243,9261,9246,7930,7841,7840] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [5497,5469,5472,5473,5475,5476,5477,5558,6863,6864,6881,6885,6886,6888,6875,6867,6874,6868,5556,5464,5499,5468,5819,5820,5597,5428,5430,5436] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [461,462,476,478,125,557,135,164,453,166,455,474,475,477,479,1,5,558,180] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [608,614,639,647,674,675,2165,1005,649,2076,2080,2100,2105,2106,2107,2087,2094,2097,606,2082,686] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [8119,8249,8149,8156,7260,7263,7268,8381,8382,8271,8273,8120,8247,8248,7487,7269,7273] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [2904,2905,2919,2921,2994,2995,2444,2898,2451,2564,2565,2566,2562,2618,2563,2601,2603,2578] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [71,72,974,982,959,941,942,1076,1077,1079,1101,1103,190] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [3367,3368,3515,3516,3517,3525,3384,3385,2735,3500,3501,2512,2524] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [3502,2735,3500,3501,2520,2512,2529,2524,2525,2625,2627,2541,3368,3515,3525] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [6388,6032,6293,6357,6352,6354,6379,6292,6382,6531,6391,6395,6396,6384,6548,6189,6527,6528] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [2152,34,37,38,2150,2153,35,44,53,54,49,117,2174,2175,2176,586,2184,51] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [9254,9257,9247,9263,9267,7843,7844,9260,7866,9311,7833,7865,7795] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [20,21,1,5,475,477,479,538,540,180,181,2247,494] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [5482,5483,6276,6278,6282,6286,5452,6246,5484,6248,5781,6047,6251,5454,5456,6036] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [5129,7167,5351,5350,7144,7142] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [7482,7484,7491,7740,7495,7738,7372,7485] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        