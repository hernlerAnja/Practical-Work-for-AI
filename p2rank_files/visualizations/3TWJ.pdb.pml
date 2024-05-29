
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
        
        load "data/3TWJ.pdb", protein
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
 
        load "data/3TWJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7064,7121,8060,8063,8071,7068,7721,8059,7067,8087,8162,8085,9381,7696,8086,7691,7694,7085,7075,7076,7084,7070,7073,8029,8030,8031,8047,8048,8307,8316,8166,8167,8168,8170,7668,8169,7122,7234,7521,7522,7673,7087,7097,7100,7102,7251,7370,7372,7107,7123,8185,8189,8182,8184,8191,8305,7349,7352,8300,8301,8304,7368,7369] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [10582,11230,11232,11233,10300,10305,10309,10316,10312,10584,11386,10629,11381,10462,11394,11395,10460,11219,11382,10318,10319,10585,10580,10581,10583,11404,11525,11526,11241,11244,11513,11514,11509,10304,11518,11522,11519,11520,11524,10315,10552,10554,10555,10314,10569,10570] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [5093,4125,3878,5081,5100,4825,5066,4194,4028,3874,3870,3876,3880,4027,3882,3883,3881,4085,3862,3865,5069,3869,5062,5064,5065,4951,4967,4968,4970,5090,5084,5087,5088,4946,4149,4808,5091,4141,4133,4134,4145,4147] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [5115,5405,5486,5437,5439,5446,5098,5105,5106,5107,5469,4534,4508,5370,5397,4513,4824,4839,4512,4840,4973,4982,4983,4980,4981,5041,5061,5046,5057,5058,5040,5044,5039,5050,5030,4971,5062,5126,5113,5125,5411,5114,4537,4536,4831,5399,5099] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [632,687,686,688,629,635,636,638,640,649,1238,799,1651,1652,2944,2940,2942,814,815,1234,1233,1250,1252,1623,1624,1625,1636,1727,1728,1729,1732,1733,1735,1285,816] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [6462,6478,6481,12868,12869,10173,10174,10183,10184,9832,12852,10187,12849,12850,12851,12853,12854,10188,10190,9833,12848,6467,6470,6471,10219,10220,10221,9854,6517,6541,6477,6483,9824,9760,9763,6474,6475,6507,6508,10167,10177,10189,10771,10772,10773,10439,10420,10422,10440,10379,10380,10394,10402,10378,10400,10401,9825] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [10946,11548,11549,11550,11846,11560,11803,11804,11805,10971,11266,11423,11425,11426,10948,10943,10945,10969,11533,11535,11534,11558,11274,11275,11407,11408,11411,11874,11881,11427,11872,11921,11481,11484,11904] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [9638,9640,9642,9637,9641,7559,9636,9639,7560,7561,9682,6978,7168,7182,7183,9657,9635,9656,9694,9696,6962,6971,9683,6972,7006,7007,7008,7009,6975,7210,7227,7228,7208,7189,7190,7164,7165,7167,9729,9727,9689,9723,9678,9692,6612,6538,9753,6965,9722,9719,9720,6955,6619,6620,6642,6621,6606] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [652,1636,1731,1734,1735,816,934,936,935,937,939,665,667,1748,917,1869,1872,1593,1749,1751,1752,1755,1757,1756,1612,1613,1596,933,916,915,650,651,658,669,815,832,662] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [4512,4840,4973,4982,4979,4496,4497,4498,4514,4515,4518,6143,6149,6159,4955,3839,3840,3846,4962,3847,4964,3850,4966,4957,6156,6154,3842,3845,4837,4863,6163,6164,6165,6166,6181] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [46,48,6416,6418,6419,3752,3755,43,49,3748,3749,3966,3967,3986,4005,4336,4337,4338,6426,6430,3732,36,3785,3944,3945,3941,3943,3784,39,26,3960] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [76,77,83,73,106,42,46,48,6414,6417,6415,6419,80,49,3390,3419,3397,3327,3328,6428,6413,3398,3325,3326,3385,6430] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [12828,9777,10638,12813,10680,9782,9783,9784,6859,6860,9804,10605,10606,10607,10608,10610,9833,12844,9778,12838,9801,9839,9819,10647,10678,10648,10602,10603,10604,10637] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [7390,7436,8214,8215,7391,7396,7434,7435,7466,7426,7398,10073,10071,6589,6591,10070,6588,10084,6572,6581,6584,6585,10086,9599,9601,6580,6571,9594] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [3013,3023,3028,2988,2995,2996,824,678,679,680,681,697,1186,1188,1189,1190,837,838,864,867,833,660,661,670,671,677,645,646,655,656,669,672,2986,2987] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [6069,6072,6075,6146,4487,4521,4551,4528,4871,6058,6074,4523,4526,4527,4560,6059,4562,4494,4522,6068,6057] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [11410,12586,10276,10284,12591,11416,11417,11418,12578,11271,11389,10931,10932,10933,11272,12605,12617,12600,12601,10955,10950,10953,10954,10333] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [145,990,157,961,963,955,999,958,136,137,954,3635,3636,1780,1000,153,3649,3651,150,149,130,991,3166,146,3159,3164] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [3358,3383,3342,3366,424,3347,3348,3349,3351,3354,3368,4203,4212,4243,4245,4173,4175,6403,3404,6376,6378,6393,6371,3384] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [3236,3258,3259,3260,3261,543,573,3247,3248,536,731,733,755,747,748,754,732,3257,520,1126,1125] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [185,186,532,3221,3222,3201,3204,3295,3292,3318,3256,3257,3285,3287,531,3258,3259,3260,3261] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [6737,6695,6707,6738,6736,9543,9552,9555,6705,6711,9561,9564,7603,7600,9484,9485,9486,9482,9483] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [4128,4161,4162,4091,6351,6353,367,6354,4093,4089,4171,4172,4169,4140,424,425,426,388,389,390,392] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [3855,3858,3891,3892,4401,4402,3856,4036,3893,6204,6214,6235,6243,6231,6222,6223,6215,3882,3883,3884,3881,4079,3868,4049,4050,3864] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [3402,3408,3430,3431,3432,3433,3434,3437,249,196,3461,218,221,219,220,222,225,227,6373,403,438,439] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [1165,1163,1164,3047,260,261,263,302,301,303,3053,3049,3051,3117,3120,3058,3048,3126,3127,3129,275,3075,3108] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [10995,12494,12582,12492,12493,10956,10957,10961,10958,10984,10986,10962,10997,10921,12507,11306,12509] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [3634,3600,3599,3601,3602,3604,928,3637,3638,957,959,924,3142,3579,922,923,918] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [6802,12786,12789,6824,6825,6826,6827,12788,10606,10558,10561,10563,10559,10560,10571,10518,10524,10529,10596,10597,10572,10575,12801,12802] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [8055,8592,7736,7760,7735,8335,8348,8593,8635,8336,8337,8338,8323,8062,8063] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [2157,1609,1619,1611,1888,1913,2158,1900,1901,1903,2200,2156,2199,1911,1296,1300,1301,1298,1627] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [2935,1308,2847,2857,2860,1274,1314,1315,1316,1311,1348] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [6991,6992,7013,7037,7643,7115,7131,7132,7242,7259,7621,7623,7625,7645,7612] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [11685,11173,11175,11686,11687,11154,11698,12265,12236,12257,12240,11691,11692,11695,11722] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [2039,2040,2589,1528,2078,2610,2613,2618,2611,1507,1526,2041] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [3045,3060,3061,3050,882,3119,3120,854,856,857,858,851,884,888,885] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        