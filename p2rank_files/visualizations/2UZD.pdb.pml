
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
        
        load "data/2UZD.pdb", protein
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
 
        load "data/2UZD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1080,1081,88,89,1064,1052,695,1053,1054,82,83,242,644,658,87,140,661,85,84,86,681,688,692,664,672,680,141,102,101,256,139,92,96,501,1149,1152,1153,502,259,638,635,636,637,639,640,1154,1157,1158,1160] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [524,525,533,536,522,7884,549,7851,7852,7880,7881,7882,7450,7859,7891,7449,7451,222,223,527,528,7440,5022,24,25,7849,22,551,2,34,35,36,628,14,186,236,5030,1] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [5620,5621,5547,5548,5619,5131,4724,4726,4866,5627,4607,4608,4552,4569,4570,4556,4557,5139,5147,5148,5155,4551,4550,4709,5111,5128,4554,5102,4969,5106,5103,5105,5107,5624,4578,4562,4571,5519,5526,5531,5159,5162,5625,5626] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [4992,4653,5095,4503,2983,4652,4995,4689,2982,3392,4468,5018,4502,4489,4492,4991,2973,5000,5003,3424,3417,559,3416,3414,3415,3382,3384,5016] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [5699,5700,8036,8038,8120,8121,8127,8122,8124,8125,8126,8132,5697,5704,5709,5712,5734,5736,5713,5714,7301,8811,8823,8825,8827,7972,7974,8006,8007,7971,8151,8153,5674,5675,7980,5683,5684,5687,7317,7319,7978,7979,5671,5669,5670,7611,7612,5716,7316,7311,7315,7307,7310,7981] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [2849,2850,2851,2852,2834,2848,3505,3504,3540,2840,2844,2836,2841,2843,3475,3514,3569,3684,3686,3655,3658,3683,4358,4360,4344,4356,3661,3665,3539,1217,1230,3538,1232,3511,3512,3513,1249,3145,1247,1245,1246,1207,1216,3469,3468,3135,3144,1203,977,1204,1208] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [8298,8299,7964,8199,8320,7958,7947,7952,6988,7013,7017,7372,7021,7030,7031,7014,8276,8247,7342,7338,7365,7369,7339,7363,8207,8262,7400,7366,8201,8203,8197,7159] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [2556,3809,3780,3832,3491,3497,3831,3853,3795,3789,3740,3730,3732,3734,3779,3781,2545,2546,2547,2564,2905,2563,2933,2899,3480,3485,2871,2902,2521,2692,3736] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [1239,1434,1443,1445,1455,1459,1460,2184,1466,2402,2206,2223,2403,2405,2182,2183,2187,2193,2189,1214,1215,1212,1467,2413,1444,1384,1387,1468,1472,2217,1240,1433,1435,1231,2395,2396,2398,2406,2392,1219,1228,1234] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [5939,6649,6660,5936,6673,6651,6650,6654,5927,5934,5933,5935,6862,6863,6865,6872,6859,5922,5926,5900,5911,5853,5701,5707,5902,5698,5901] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [2636,2637,5578,5579,5580,2622,4942,4944,4945,5605,5606,5564,5589,6810,5561,5112,5115,5120,5117,5145,4978,5116,5114] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [1183,1278,1274,1295,1181,364,365,1175,360,1177,359,120,3149,3158,1277,386,388] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [4761,5028,5039,4762,4772,4766,4774,5027,7809,7810,7847,7848,7850,7820,7811,4804,4813,7812,7841,5037,5041] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [1817,2121,2156,2157,2158,2150,2159,1816,2144,2165,1814,1764,1972,1973,1974] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [6943,6945,5434,5435,5436,6975,6976,5402,5404,5400,5425,5426,6708,6707,5424,6909,6911,6941,6907,6937,4909] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [6284,6441,6439,6633,6635,6231,6232,6617,6622,6624,6610,6611,6588] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [6337,5888,5901,6651,6644,6650,6652,6659,6293,6302] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [1097,1109,1138,1122,475,477,478,648,1139,645,653,666] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [966,969,2478,935,933,968,959,957,958,2241,937,928,927,2444,2509,2508] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [1835,1826,1840,1434,2184,2177,2192,1870,1421] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [3343,3344,3345,3374,337,310,305,307,3349,572,3380,3353,294,346,3381,3382,3383,292] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [2548,3455,3470,3456,3457,411,2517,447,433,2537] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [4273,4276,3726,4269,3745,3746,3747,4213,4210,4179,4236,4248,4263,4238,4212] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [7487,7468,7470,7483,7492,7494,7495,7484,7485] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        