
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
        
        load "data/5SW8.pdb", protein
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
 
        load "data/5SW8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6544,6570,6571,6572,6569,5345,5346,5294,5295,5296,5297,5298,5299,5300,6737,6511,6535,6539,6540,6513,6731,6734,6721,6714,6042,4976,4977,4978,4979,5017,4982,4984,4986,5009,5263,2350,2351,2352,4980,6051,6052,6053] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [6180,6181,6225,6226,6422,6248,6423,6182,6852,6854,7384,7385,6871,6895,6896,6507,6805,6725,6727,6723,6728,7464,7467,7468,7466,6478,6442,6806,6443,6804,6821,6823,6826,6810,6829,6463,7474,7472,7473,6194,6195] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [3698,3545,3552,3564,3569,3570,9209,9887,3738,3744,3745,9208,9925,2842,2848,9961,2851,3567,3568,3365,3366,2837,3726,3713,3710,9240,9241,9888,9885,9206,9178,9179,9266,9276,3560,3562,3697,5420,9275,3375,3367] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [8667,8668,8669,8670,8678,8674,4260,3001,2997,2999,3000,3002,4280,4279,4519,8685,8687,3005,8660,8657,8659,8658,8907,8913,8912,4780,4528,4496,4497,4493,4264,4306,4307,4262,4257,2988,2995,2996,2998,4512,4526,4507,4305,4517,4518,4249,4252,4255,4230,4782,4783,4778,4784] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [5670,5672,5671,5696,5697,183,5660,6786,5638,5640,5636,1125,5363,5383,5387,1131,1133,5358,5367,5393,6757,6763,6766,746,5362,5641,5335,154,184,185,155,6769,145,5391,6770,5728,177,159,5727,6450] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [5419,8057,8063,8065,8111,3560,5420,5404,8073,8114,8115,3582,3583,8116,3605,3567,3554,5070,5072,5073,5074,3671,3672,3667,3658,5081,5083,3647,3664,3646,3661,3387] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [5252,5256,5568,5570,1491,1492,1489,1501,6060,1499,5552,5560,5561,5596,5556,1483,1503,2561,2548,2565,2567,2568,6024,6025,6058,6059,6084,6083,6085,6057,6062,5597,5598,5595,2231,2549,2551,2552] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [8873,8892,8893,8895,8897,8872,8914,8792,8789,8790,8894,8885,8887,8703,8698,8699,8701,8702,4289,8686,8654,4276,8705,8720,8639,8824,8827,8829,8799] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [9137,9148,10007,9075,9076,9108,9109,7536,7537,7545,7546,3592,3594,9149,10005,3613,3615,9074,10039,9139,9984,10003,3588,3596,3598] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [8740,8776,8801,8766,8799,8738,8764,8768,8639,8827,8829,8580,8620,8570,8576,8581,8638,8705,8716,8703,8698,8699,8615,8616,8625,8605,8613,8617,8618,8619,8621,8628,8626,8627,8632,8636] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [164,9823,9254,9293,9290,9292,9796,9797,9794,9790,9754,210,222,926,213,215,170,218,9348,9349] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [2980,2982,3038,3007,3008,3010,8664,8665,8666,3037,3039,2950,2949,3621,3623,8540,3636,3632,3653,3635,3654,8677] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [5124,1235,1236,3677,3682,3685,5441,5099,3680,1219,1220,1221,3690,5111,5113,3417,3429,3452,3443,3520,1234] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [4964,4712,4713,4715,7985,7962,7964,4966,4989,6581,6604,6613,6609,1548,6646,4714,4699] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [8123,8141,8494,8496,8495,8677,3661,3621,3622,3623,8526,8528,8492,8500,8112,8149,8121,8140,3598,3607,8505,3611,3614,8111,8118] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [9948,9949,9950,3364,3366,9960,9138,9981,9140,3568,3574,3577,9177,3586,9924,9209,9208,9953] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [3443,3492,3520,3519,3414,3417,3429,3438,3493,3408,3410,3413,3677,3682,3685,3680,3532,3690] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [3651,3656,3659,3661,3655,8123,4774,4775,4776,8132,4784,3662,8130,2995,2997] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [3596,3598,8505,7564,8148,8137,8140,8504,8503,7562,8087,8112,8113,8149,7534,7536,7537,7543,7545,7531,8143] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [2348,2350,2352,1540,1541,1542,2347,2377,2379,2378,6645,2385,2388,2384,2376,2409,2375,6567,6569,6606,6597,6598,6599,6596,6637,6634,6635,6636,6607] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [2354,2359,6361,2389,6054,2240,2223,6075,6076,6362,6372] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [1075,777,1079,764,1056,1069,1103,1104,1077,1146,756,1143,1153,1149,1156,1160,1071,1072,1189,1161] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [742,745,1142,1143,1147,738,1146,756,727,1103,1104,1077,1081,1106,1107,1105,1075,777,778,1079,776,896,726,728,1082,1112,779] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [8441,8442,8580,8439,8440,8944,8946,8560,8570,8576,8581,8638,8800,8830,8775,8801] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [5396,6487,6488,5404,8072,8073,8075,5378] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [3952,3959,3987,4384,4619,4620,3928,4591,4621,4630,4382] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [7686,7765,8418,8386,8387,8405,7812,7810] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        