
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
        
        load "data/5SXF.pdb", protein
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
 
        load "data/5SXF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3689,3690,3552,3554,8039,8040,8081,8082,8077,5396,8023,8029,8031,8035,8038,5403,5406,5410,5401,5412,5390,5394,5395,5397,5411,3705,3562,3556,3560,3561,8903,3559,3575,3574,3730,5064,3659,3663,3379,3656,3650,3651,3653,3655,3376,3639,3597,3638,5062,5063,5075,8910,8911,8912,8901,8873,8874,8041,8936] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7527,7501,7502,7503,7538,7539,7495,7497,7526,8053,7500,3581,3582,3583,3584,3585,3586,8842,8843,8054,8055,7536,8769,8771,8803,8804,9763,7524,7531,8834,9762,9764,8832,8844,7466,7511,8810,7530,8088,8106,8114,8469,9797,8440,8441,8443,7529,3578,3579,3580,9740,9741,3588,3590,3604,3607,9796,8103,8115,8442] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [5286,5287,5288,5290,5337,5338,6738,5009,6536,6562,6563,6564,5255,1520,5289,5291,5292,5254,6726,6729,6723,6713,6038,6034,6044,6045,6503,6730,6527,6529,4970,4971,4969,4972,4974,5002,4976] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [6797,6720,7430,7432,7433,7434,7350,7438,6798,6414,6434,6435,6796,6415,6173,6217,6218,6174,7351,6863,6887,6187,6499,6718,6802,6815,6819,6821,6717,7414,7415,6238,6240,6813,6818,6844,6846,6715] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [4499,4483,4486,4297,4299,4485,4493,4504,2951,2965,4512,4518,4520,2964,2966,2969,8573,8574,4532,8548,8572,4272,4507,4508,4509,4511,4510,4774,4775,4776,2962,4772,4489,2963,4222,4247,4488,8556,4248,8561,8555,8557] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [8087,8105,8107,8467,3613,3614,3615,8466,8465,8104,8433,8431,8432,8430,3597,3616,3624,3632,3638,3612,3651,3654,8089,8096,8098,8093,8100,8088,8469,3592,3590,8077,3646,2944,2946,3002,3003,3628,3631,3645,8550,8551,8554,8555,8557,8537,8538,8564,2913,2914,3622,8483,2961,2973,8543,8544,3000,3001,2999,8499] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [173,5663,5664,174,6749,5689,6778,6755,6758,6762,6765,6761,5350,5375,5379,5383,1128,1120,1126,5353,5354,5355,891,5662,5632,5630,5652,5327,6753] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [3672,3671,3400,3401,3402,3515,3516,3518,3519,3509,3524,1231,5103,3409,5091,1215,1216,3406,3421,3405,3511,3443,3445,3430,3433,3437,5105,5430,5433,5435,5439,5116,5409,5441,5443,3665,5061,3680,3681,3682,3677,3669,3674,5426,5414,5415] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [6016,6017,6050,1496,1498,2220,5588,5589,5590,2537,2538,2541,6077,5248,1486,1487,1484,5546,5552,5548,2556,2557,2550,5558,5560] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [2378,2343,2346,2348,2350,2377,2384,6045,2212,6058,6068,2229,6044,6046,6067,6353,6354,2407,5257,1521] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [8041,8912,5386,5387,5388,6764,6462,6480,6763,6765,6771,6461,8884,5396,8038,5394,5395,8039] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [1535,1536,6599,1537,1607,6626,6627,2339,2337,2338,2368,2366,2367,6561,6593,6597,6598,6681,6630,6683,2364,2365,2373,2398,2374,2397,2336,2378,6708,6589,6590,6591,6690,6637,6638] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [1051,1065,1068,1184,1151,1155,1156,1138,1144,1141,751,768,772,774,776,1074,759,1098,740,1064,1072,1063,1069,1070,1073,1048,722] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [4981,4956,4957,4958,1543,6638,6635,4707,4705,4706,4691,6573,7951,6605,6607,6601,7927,7929,4704,6596,6594,6595,6599] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [4766,4774,4775,4776,2959,2960,2961,3645,8555,8557,8556,3652,3654,8094,8096,8098,8093] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [5602,5603,5642,5608,5610,5612,5613,1109,1111,837,838,1077,814,836,870,5640,5641,5969,5972,874,848,849,5967,5968,5973,5974,832,827,829,847,871,1076] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [6388,6390,6389,6384,6805,6806,6362,6364,6365,6360,6804,6811,6391,6043,6065,6067,6068,6807] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [1100,1099,1101,1102,740,741,1072,1141,774,1074,1070,878,887,889,721,723,839,891,1107,739,722,1138] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [6855,6856,7062,7375,7021,7023,6918,6919,6920,6889,6916,6890,6894] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [8352,8371,8351,8361,7777,7778,7652,7653,7730,7731,7625,8353,8384] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [4076,4003,4004,4005,4559,4564,4555,4333,4335,4338,4074,4075,4567,4072] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [5680,6407,6790,6009,6269,5654] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [3866,3867,3910,2678,4573,4544,3239] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        