
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
        
        load "data/5VIE.pdb", protein
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
 
        load "data/5VIE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5316,5328,5329,4020,4021,3762,3764,3757,5320,4249,4251,4428,1754,1755,4426,1757,1762,5336,4427,1786,5331,1265,5332,5335,3794,4418,3782,3784,3793,4399,3783,2516,2517,1259,1288,2490,2498,4277,4279,4455,4278,4434,3741,3750,2816,4416,4422,4417,4420,4234,4243,4229,4231,4275,4276,4247,4244,5325,1716,1749,5327,1748,5337,5340,1264,5334,2332,2333,2334,2339,2335,5311,5323,5307] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [10680,10671,10676,10685,10688,10689,9384,9134,9131,9819,9798,9119,9125,9126,9640,9641,9643,9110,9362,9593,9598,10667,10682,10683,7107,7108,7147,9613,9615,7124,8893,8895,8892,9611,9607,8890,9608,10696,9786,9163,9780,9781,9151,9152,9153,9162,10691,10694,10695,7131,7123,7126,7155,9790,9791,8187,7884,7885,7886,9782,6634,6633,6657,9763,8185,7859] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [1264,5334,5341,968,997,999,966,5342,5347,1243,1273,1274,1275,1239,737,738,727,729,730,1422,944,943,945,914,1228,1229,911,5346,5351,1246,725,746,748,764,998,4026,4027,5313,5330,5907,5277,5278,5932,5934,5933,5910,5279,5280,5295,5902,5909,5904,5314,3764,3765,4017,4019,4013,4014,4022,4023,3780,1265,3782,3784,3783,4229,4228,4230,4003,702,703] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [10702,10706,10694,10698,10701,6388,6118,6119,6356,6357,9147,9150,9152,9153,5857,6126,5858,6091,6092,6116,6117,6615,10707,6333,6334,6612,6641,6643,6644,6608,6609,6332,6299,6300,6301,6303,6324,6598,10710,10703,6633,6072,6065,6597,6602,6603,518,6137,6135,6151,6153,9133,9134,9381,9383,9387,9390,6387,9391,9392,10670,10673,10690,503,520,521,541,542,544,545,10637,10638,10639,10640,10655,9592,9367,9594,6134,6113,6114,515] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [510,509,516,508,744,535,6131,6142,718,720,6133,6132,6099,6107,6109,519,740,743,5924,5925,756,5898] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [10650,10655,9393,9397,9367,9368,9370,521,541,542,544,10653,10654,432,433,551,331,408,306,305,9585,302,9372] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [6818,7740,7691,7693,6786,6787,6790,6792,7733,7749,6812,6843,7748,10710,10711,10715,7719,7720] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [4218,4221,5294,4003,4029,4004,4033,4007,5910,5928,5929,5935,5295,5930,5933,5822,5688,5691,5797,5717,5716,5940] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [7894,7888,7891,7897,8079,6728,6650,6729,6701,6731,9926,9927,9923,8072,6704,8070,8071,6706,8081,8068,6703,6621,6656,6655,7883] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [755,756,6081,6057,6059,5958,5982,5959,777,778,769,6169,6185,6186,6187,6193,6222,780,6223,6012,6221] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [5354,5355,1420,1417,1449,1418,1443,2380,2351,2322,2379] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [2514,2519,2522,1252,1286,1289,1281,1362,2525,2528,1359,1360,2699,1361,4569,4565,4562,4552,4559,4564,2712,2714,1338,2700] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [6144,6145,6168,570,691,692,804,779,6156,6161,6165,568,593,6158,669,670,833,834,667,796,797] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [5654,5694,5695,3466,4268,3444,4269,3445,3448,5633,5656,5661,5658,5657,4242,5284,4241,4232,4227,5286,5292] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [8301,8298,10298,10301,8560,10263,10272,10273,10264,8365,10269,8368,10241,9857,10265,10239,8562,8561,8547,8563,10300,10303,8548,8550,8551] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [981,1086,928,930,1084,822,824,825,953,844,846,1038,1083] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [8813,309,9632,307,8823,8830,8836,247,8835,270,243,8845,275,9591,9606,10645,9605] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [10268,8366,8367,8368,10235,9706,9073,10240,10241,10243,10205,10206,10267,10202,10236,10237,8355,8357,8385,8361,8350] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [6342,6370,6475,6435,6438,6427,6212,6235,6317,6319,6502,6312,6463,6468,6473,6469,6472,6214] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [7075,7077,7707,7084,7116,7711,7322,7709,7712,7323,7714,7706,7713,10681,7104,7113,7346,7098] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [7738,7739,7929,7931,7664,7693,7695,7902] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [793,4040,1004,1005,1006,1018,1020,766,769,792,825,5992,770,4067,1017,4068,4037] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [4938,4934,2931,2932,3193,3191,2999,4877,4493,4901,4932,4899,4900,4875,4908,4909,3179,3181,4936] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [4876,4877,4878,4838,4841,4871,4904,2997,2998,2999,3007,4903,3006,3704,4342,4872,4873,4869,2981,2986,3016] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [9799,9106,9124,9719] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [3280,3216,3253,3101,3102] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        