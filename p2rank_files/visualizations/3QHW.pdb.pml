
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
        
        load "data/3QHW.pdb", protein
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
 
        load "data/3QHW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [272,273,1167,1168,1171,1173,1174,1166,1078,117,126,115,116,141,119,9086,9081,9073,648,271,649,650,651,654,153,155,108,109,1070,9077,154,98,103,97,735,256,99,101,1066,1068,709,675,1094,672,678,1095,694,702,686,130,133,413,517] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [4832,5220,5739,5740,5741,5645,5738,4615,4619,4621,4633,4635,4685,4711,4713,4609,5221,5734,4815,5216,5215,5218,5605,9166,5622,4641,4663,4655,4679,4831,5757,4830,5661,5262,5269,5273,5662,5225,5242,5245,5733,4597,4599,4605,5237,5239,5261,5302,4603,5633,5637,5276] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3510,2887,2888,2890,3539,3540,3549,3546,2886,2882,3542,3574,3575,3604,3692,1218,1281,1283,1260,1261,3547,3548,1221,1222,1230,1231,1244,1262,3183,3503,3507,1246,2881,3720,3719,4387,4389,4375,2878,4391,3699,3606,2874,2872,3173,3182,4378] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [9112,9110,9104,9108,9111,1196,134,136,9096,9099,9100,1309,9105,368,372,373,365,333,379,380,132,400,402,1191,1192,1193,1291,1189,1195,1288,3218,3219,3216,345,346,348] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4940,4935,4939,7786,4932,4900,9190,9191,9192,7763,7729,7785,7783,4912,5763,5876,4671,4675,9184,9188,4969,5859,5855,4941,4947,4946,4967] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [2402,1840,2191,1849,1854,2401,2198,2207,2403,1435,1884,1855,1856,1857,1448] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [538,547,549,548,550,7587,8020,8019,8028,7996,2,236,237,539,541,642,1,48,50] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2599,2600,3830,2971,3766,3774,2591,3826,2592,3814,3824,3866,3843,3888,3532,3764,3815,3813,2943,2940,3515,2909,3520,3526,3865,2934,2937,2936] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [5783,5785,5788,5789,5797,5798,8114,8115,5811,5784,7740,7453,7454,7750,5829,8107,7749,8077,7455,7457,8116,8113,5827,5828] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [8397,8337,7153,7158,7159,8427,8428,8432,8433,7167,8087,8093,8099,7479,8341,8331,8333,8335,8381,8410,8455,8380,7149,7507,7510,7503,7504,7538,7501,7166,8082,8090,8092,7476,7477] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5827,5828,7439,7448,8958,7449,5829,8107,8171,8173,8259,8287,8286,8266,8956,8106,8142,8256,8260,5813,8140,5826] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [4502,4506,4536,3393,4525,4528,4535,3420,3417,3388,3390,3451,3452,3453,3429,4499,3421,3427,3418,3419,3423,3424,4500,4507,4509,3454,3422,587,569] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [7988,7985,7986,7990,31,5150,5151,5154,7987,7989,8020,8019,7991,5136,8021,5,9,10,12,14,39,28,38,7960,7953,7956,7957] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [3011,3020,3021,4795,4547,4759,5106,5108,5209,5117,5105,5114,5115,5116,4498,4796] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [662,1153,491,1152,680,1136,1108,1111,1126,2357,667] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [7984,5153,4872,4921,7947,7987,4919,4895,4918,4873,4874,4927,5141,5142,4876,7946,7948,7950] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [307,586,305,306,309,360,575,352,354,328,579,584,574,3380,351,3381,3379,3420,3412] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [5720,5229,5247,5719,5678,5703,5234,5693,5056,5058] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [2306,820,819,2304,2077,842,816,817,840,851] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [7151,8057,5028,8058,8060,7120,5025,7141,7140,8059] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [6341,6606,6204,6215,6728,6349,6584,6585] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        