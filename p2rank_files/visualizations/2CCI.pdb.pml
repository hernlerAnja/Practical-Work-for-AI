
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
        
        load "data/2CCI.pdb", protein
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
 
        load "data/2CCI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5543,5636,5638,4981,5631,5117,5632,5633,4618,4619,4620,4737,5114,5116,5118,5119,4738,4736,5639,4574,4581,9117,9118,4562,4565,4568,4571,5167,5174,5531,5532,5137,5135,5140,4721,5559,5560,5143] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [110,97,101,108,109,263,265,405,508,641,642,644,646,509,701,686,1086,1087,117,89,91,92,95,147,146,640,643,248,670,678,650,1070,1165,1159,1160,1163,1164,1166,1058,1158,8993] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [5719,5710,6670,6672,5707,6863,6865,6866,6905,6906,6870,5938,5939,5692,5694,5713,5718,6889,5705,5934,5948,5951,6660,6661,6662,5945,5947,6666,6668,6892] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [4736,4742,4753,4755,4877,5639,5652,5638,4735,4737,4590,9132,9133,9117,9118,5503,5661,4582,4597,4581,4847,4841,4844,4842,4843,4845,4599] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [1237,2390,2393,2430,2432,2396,2408,2198,2189,2188,1472,2419,2416,1234,1240,1219,1225,1461,1245,1246,1465,1466,1474,1478] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [8825,8827,7319,7320,7322,8164,8165,8837,8137,8050,8048,7983,8144,8839,8018,8019,7984,5725,7313,5726] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [3575,3577,3691,3692,4364,2849,3511,3510,2840,3664,3545,1252,1253,1238,1239,3572,3543] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [2902,2939,2877,2904,2905,2908,3746,2881,3497,3503,3859,3815,3786,2569,2570,3801,2563,3837,2911,3486,2552,3491,3833,3496,3735,3736,3740] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [7350,7375,7378,7412,8219,7354,7970,7976,7042,7043,8274,8306,8259,8332,8288,8211,8208,8209,8213,7171,8215,7025,7384,8310,8311,7000,7381,7959,7964,7967] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [1440,1441,2197,2198,2199,2189,2190,1832,2191,1841,1426,1427,1874,1875,1835,1846,1848,1437] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [110,108,109,264,265,371,117,124,280,282,1188,8990,8992,8993,1030,8976,8977,1182,1186,370,372,1179,1180,1181,1165,1166] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [7623,7624,7327,7328,7329,7330,7331,7984,7990,7991,5709,8018,8019,5728,5726,5725,5681,5682,5748,5686,5687,5695,5696,5746] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2855,2856,3150,3151,2857,3513,3517,1209,1213,1214,1222,1236,3545,3546,1226,1223,1255,1273,1275,1247,1251,1252,1253,3511] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [5913,5923,6305,6348,6321,6347,6349,6314,5900,6671,6663,6656,6308] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [3550,3596,3582,3593,2428,3595,4043,4044,2433,3585,2431,2401,2402,3583] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [4747,4533,4484,5073,4485,5092,4764] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [5816,5818,5819,5820,5821,5814,5815,5817,5535,5536,5832,5518,9108,5800,9111] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [4213,4214,4244,4243,4245,3760,3762,3782,3761,3759,3771,4180,4184,4185] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [6899,6900,6901,6904,6907,6874,6875,6908,8517,8514,8058,8023,8056,8515,8516,8067,8069,8068] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [6239,6504,6596,6113,6626,6101,6102] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [598,600,274,59,60,619,618,11,12,13] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [5855,6219,6646,6221,6371,6309,6264] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [5132,5147,5601,5127,5617,5618,5576,5592,5145] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [7355,8159,8162,7356,8011,8163,8161] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        