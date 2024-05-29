
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
        
        load "data/7PG5.pdb", protein
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
 
        load "data/7PG5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4838,4839,4840,4842,4843,4849,1380,1381,2199,2201,4841,5125,6439,6440,6582,6437,6438,5914,5156,5157,5158,5159,5160,5161,5923,5924,5925,5926,5123,5124,6598,6589,6599,6602,5918,4876,4867,5206,5207,6612,6614,4878,6604,6605] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [9621,9622,9589,9590,9593,9595,3684,3697,3709,10315,10316,10317,10318,10319,5270,5271,3668,3681,9647,9648,9620,9653,9656,3539,3540,3541,3535,3536,3523,9558,10355,10356,3669,3531,3533,3542,3545,3550,3337,10326,10327,3716,2710,2711,3715,2727,3338,2720,9628,9597,9598,5251,5266,9560,5264,5281] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [6592,6594,6596,6673,7296,7297,6722,7214,7215,6720,6591,6697,6678,6691,6694,7278,7294,7298,6405,6593,6595,6372,6373,6375,6674,6347,6311,6374,7299,7302,7304,6055,6291,6120,6689,6290,6310,6097,6098,6067] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [5265,7944,7946,7947,3553,7945,3556,3559,5264,5281,7937,5280,3643,7935,7936,3630,3632,7929,3628,3629,3635,3634,7975,7981,7983,7951,7985,7988,3638,3538,3554,3358,3618,3550,3617] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [32,40,42,9665,5589,5623,22,5620,5621,4,27,38,989,991,604,753,754,5254,5244,5558,5532,5557,6318,5588,5610,5613,5614,5531,5533,5224,6631,6634,6653,6637,6321,6625,5219,5223,6627,6629,5521,5196] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [7406,7409,7410,9456,9457,9490,7399,7405,3566,3568,3569,3567,7400,10471,10472,7960,3562,3564,9489,9528,9529,9530,9488,10415,9520,9521,9518,10438,10412,10413,10408,3573,3583,3586,10446,9455,7364] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [8800,8835,8785,8802,8837,8838,2888,8821,4391,4384,4389,4390,9112,9146,9157,9158,9174,8803,8804,8805,9163,9162,8809,8807,2895,4127,4126,4129,4165,4164,4368,2883,2884,4155,4157,4343,4357,4351,2882,4362,4366,4370,8854,9136] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [3388,3491,1090,1091,3422,3424,3412,3416,3415,3648,3652,3653,3503,3650,3490,3409,3381,3385,3374,3384,3379,3464,3462,1076,1074,1075,1088,1082,1083,3656,3659,3660,5302,3495,3489,5304,4985,4983,4984,4978,1092,4960,5299] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [3625,3606,3624,2855,2856,3594,3592,3593,8600,8601,8602,3591,3576,8794,8829,8596,8813,8820,2890,2891,3603,3607,3608,2921,3599,8612,3595,8613,8606,8607,3631,7993,7994,8011,8012,8013,3633,2874,2875] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [7999,8000,8002,8004,8012,8572,4346,2873,4632,4633,4634,4347,2874,2875,2880,2881,8536,8537,8845,8825,4110,4344,2883,2884,4157,4343,2882,8820,8818,2877,8819,8838,4085,4091,4080,4596,4620,4643,4645,4086,4087,4095,4113] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [5507,5509,5510,5511,5484,5472,5481,5482,737,5475,951,5448,677,5857,5541,5849,972,733,734,735,736,701,702,970,973,974,969,971,939,940,948,699,700] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [5429,1356,1358,1347,2416,2417,5116,5117,1346,1357,2410,2433,2404,5932,5929,5930,5931,5897,5896,2077,2080,5456,5457,5458,5459,2415,5417,5418,2396,2397,2398,2401,2403,5957,5431,5413,5421,1344] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [2234,2237,2238,2260,2267,2259,6467,6566,6557,1395,1396,1397,2227,2233,6437,6584,6585,6465,6466,2199,2200,2201,6472,6469,6474,6513,6502,6503,6506] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [8063,8110,8698,4106,8696,8699,8700,8714,8716,8715,4087,4103,8033,8034,8072,8061,8529,8533,8524,8527,8528,8535,8537,8547,8548,8057,8058,8067,8071,7465,8107] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [4826,4827,1402,6483,6475,6511,6514,7836,6449,4861,7857,4565,4850] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [6230,6241,2055,2056,2208,2210,2206,2085,2086,2281,2202,2203,2237,5926,2089,1381,6240,2072,5948] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [1589,2329,2330,2021,2023,2022,1843,1844,1846,1676,1588,1678,1810,1808,1809,1811,1812,1816] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [7402,7403,7404,7395,7397,10470,10471,10472,7394,10509,8021,7994,8010,8020,8013,8544,8542,8543,8577,8554,3569,7987,3583,3586,3584,3585] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [8929,8947,9031,8960,8962,8987,8932,8936,8943,9058,9068,9069,9122,9120,9121,9127] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [584,961,962,937,585,617,637,638,754,602,972,702,970,965,968,964,935,940] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [3539,3536,9558,10355,9556,3542,3545,10415,10414,3337,10391,3330,9589,9590] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [5945,5947,6260,6263,6265,6267,6254,6687,5915,5917,6281,6283,6270,6237,6239,6679,6680,6681,6682,6683,5923,5926] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [71,73,76,9660,9661,9667,9671,20,23,25,9674,9673,9662,9666,26,29] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [3631,7990,7995,8002,8004,7993,3633,2873,4633,4634,2874,2875,7983,3624] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [73,76,77,20,23,10222,10225,10227,10221,10185,9673,10254,10214,10217,10218,80,11,82,10] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [5542,53,56,108,5566,5563,5567,5568,5835,5833,5805,5769,5540,5825,5537,5571] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [7386,7329,7330,7364,7372,7413,7412,7411] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [931,895,898,2478,1047,930,1013,2486,2488,5395,5362] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [6666,5524,6128,6282,6283,5889,6149,5964] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [618,1007,926,927,928,1013,902,932,1015,1018,931,1047,900,617] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [3319,3301,3320,2936,2805,2807,3317,2960,2961,8611,8613,3601,2824,8609,8610] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [4630,2864,2866,4378,4379,4381,4683,2861,4653,4347,4376,4642] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [4470,4480,4504,4233,4235,3917,3918,3920,3942,4443,4471,4472,3919,3926] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        