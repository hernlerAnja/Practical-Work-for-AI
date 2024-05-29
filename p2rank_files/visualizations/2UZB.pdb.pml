
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
        
        load "data/2UZB.pdb", protein
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
 
        load "data/2UZB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [83,139,141,92,95,257,258,89,658,140,84,85,86,87,251,255,634,242,502,1080,1152,1153,1052,1059,664,672,680,681,688,1081,695,638,259,635,636,637,1154,1157,1158,1160,1064] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5123,4550,4551,4554,5162,5128,5526,5546,5547,5548,5131,5519,5155,5159,5147,5620,5624,5619,4608,5531,5625,5627,5102,5104,4969,5111,4709,5101,5103,4607,4722,4724,4725,4726,5105] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [24,25,13,7851,7849,5044,1,35,549,551,36,22,186,7449,7450,7859,7891,524,525,533,536,222,7440,236,527,628,7882,7883,7884] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [2982,4991,4992,5000,5003,3424,2983,3392,4492,4489,4490,4502,4503,5016,5018,4468,4469,4653,4689,4993,4994,4995,4703,5095,2973,3417] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [7315,7316,5713,5714,5716,7301,7612,7310,8825,7303,7307,7972,5712,5697,8036,8153,8038,8100,8122,8125,8132,8152,5699,5700,8006,8007] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [648,1097,650,653,7456,7103,7104,7105,1110,1111,1113,678,528,508,509,647,645,223,666,7088,7084,7086,511,477,478,1139,1122,2343] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [7017,7030,7031,7365,7366,7369,7372,7338,7400,8207,8262,7012,7013,7016,7947,7952,7957,7955,7159,8201,8203,8225,8196,8197,8276,8298,8299,8320,8247,8198,7021,8259,8257,7964,8199,6988] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [3569,3571,3659,3655,3658,3540,2840,4349,3505,3686,2834,3665,3653,2843,4356,4358,3538,3539,1232,1233,1245,1246,1247] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [3795,3780,3790,3792,3809,3779,3853,2933,2896,3734,3740,2692,3736,3730,3781,2871,2902,3480,2875,3485,3488,3490,2545,2546,2549,2550,2563,2564,2905,2898,2899,2521,3831,3832,3491,3497] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [2619,2620,2622,2617,5580,4942,4944,5589,6809,5605,5606,5564,6810,2638,2989,5117,5120,5114,5115,5145,2636,2637,4945,5112,4690] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [6880,6859,6862,6865,6872,6873,6853,6854,6858,6855,6659,6660,5901,5911,5682,5927,5933,5934,5926,6650,5939,6649,5695,6851,6863,6864,5698,5701,5706,5707,5902,5681] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [6337,5888,6652,6291,6293,6296,6335,6331,6308,6309,6310,6326,6329,6330,6650,6651,6644,6659,6302,6307,6344,6327] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [259,398,1159,1172,1173,1158,1160,1174,1176,1181,1182,364,366,116,274,125,126,258,105,109,112,124,127,103,95,102,104,276,365,118] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [4724,4725,4726,4741,4743,4583,4591,4594,4572,5640,5641,5643,5648,4865,5626,5649,5625,5627,4562,4569,4831,4832,4833] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [1421,1870,1433,1434,1435,1383,1384,1826,1829,2183,2184,2185,2192] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [3392,4492,4489,4490,4480,4482,4484,4468,4469,3351,3415,3416,3417,3382,3384,3381] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [1245,1217,1207,1216,3145,1246,1247,1249,1267,1269,1203,2852,3511,3512,3513,1208,3507,3539,1230,3505,2848,2849,2850,2851,3540,3506,3500,3501] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [561,3381,3383,346,337,338,309,572,575,305,292,3343,3349,3376,3380,3374,576,3353,3344,3345] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [2191,2192,2193,1466,2182,2206,2392,2385,2386,2387,2391,2398,2404,2405,2384,1468,2183,1472,1240,1444,1459,1460,1455] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [4761,4804,4805,4813,4803,4759,4772,4773,4777,5027,5028,5039,5040,7843,7844,7847,7841,7810,7811,7812] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [7315,7316,5713,5716,7612,7978,7972,5674,5675,5683,5684,5670,5734,5736] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [4914,6984,7924,7922,7923,7925,4913,7934,7015] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [2436,2424,2426,2427,4034,3587,3588,3589,3590,3576,3577] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        