
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
        
        load "data/1QMZ.pdb", protein
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
 
        load "data/1QMZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [404,646,1159,1160,1086,1155,1158,1087,698,686,694,1179,1180,1181,1188,370,1163,1165,1166,1030,1070,1058,1065,1059,640,650,642,644,641,643,645,670,282,371,372,122,124,147,263,265,116,264,101,701,89,95,727,8977,1047,117,8976,664,248,91,92,93,145,146,98,269,118,107,108] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4736,4737,4738,5638,4589,4620,5543,5636,5637,5639,4574,4581,5118,5119,4721,5113,4619,5114,5116,9034,5503,5519,5520,9035,9036,9031,5632,5628,5631,5117,5115,5633,5171,5174,5531,5538,5533,5559,5123,5140,5560,5143,5159,5160,5167,5200,4568,4566,4562,4564,4565,4877,4844,5653,5654,5661,9040,4591,4595,4597,4590,4753,4755] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [4,7864,28,31,7894,7895,7862,7861,7830,7859,7860,40,41,42,192,2,3,1,19,21,22,23,7832,542,7871,7903,539,540,530,228,242,531,533,634,7461,7462,7896,7863,5049] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3422,3423,4474,4475,4477,4495,4504,4492,4494,4496,3388,3390,3391,3357,3386,3387,3389,579,580,3421,3398,5012,5013,5015,3430,5003,4665,4515,4514,4701,4715,5107,2988,2989,5004] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [8211,8332,8209,8260,8208,7036,8288,8259,8258,8310,7964,7970,7976,7034,7035,8311,7042,7043,7377,7378,7350,8274,7375,8219,7171,8213,8215,7354,8237,7381,7384,7959,7969,7967,7351] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [2563,2561,2562,3786,3815,3859,3503,3738,2569,2570,3801,2904,2905,2902,2939,3746,2698,3742,3764,3740,3736,3785,3787,3837,3838,3491,2908,2911,3486,3496] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [7101,1119,2349,1128,1145,483,1144,481,484,7100,654,1103,659,651] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [4956,5601,5127,5617,5618,5576,2623,5592,5124,5132,2643,2642,6822,2627,2628] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [3510,3545,3575,3577,3664,1238,1239,1252,1253,2850,3511,2840,3691,3692,3671,3661,2849,4353,4364,4350,2842,2846] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [1441,1423,1427,1440,1389,1835,2189,2190,1832,1865,1866,1869,1870,1874,1848,1883,1875,1450,2183,1830,1841,1846,2198,2199] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [5900,6338,6339,6342,6343,6347,6348,6321,5914,5913,5923,6671,6672,6314,6319,6303,6305,6308,6656,6662,6663,6664] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [1219,1221,2416,2393,2432,2419,1472,2395,2394,2396,2430,2433,1234,1240,1465,1466,1245,1473] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [8018,7983,8164,8165,8048,8050,8137,8134,8144,5712,5711,7313,7984,7323,5725,5726,8837,8823,8826,7315,7319,7322] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [2855,2856,3151,1252,1253,1255,2854,3511,2858,1209,1213,1214,1222,1223,3545,3546,3513,3517,1236] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [5693,6903,6905,6906,6866,6867,6868,6869,6889,5698,5707,5713,5710,5718,5719,5938,5939,5946,6892,5945] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [5686,5695,5720,5696,5725,5726,5728,7624,5682,5687,7328,7329,7327,7984,7986,8018,8019,7990,5709] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [5833,5518,5534,5535,5831,9012,6045,9014,5533,5816,5819,5821,5191,9019,9010,5520,5800] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [11,12,618,619,60,274,599,600,273,158] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [4484,4485,5073,5091,5092,4747,4746,4764,4533,4532,4631] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [344,346,352,343,3348,3349,3350,3351,304,305,311,316,566,567,3386,578,300,298] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [3595,3596,3594,1231,4044,3585,3583,2428,2431,2401,2442,3551,3548] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [8953,718,8951,1047,8960,1360,1343,1346,1359,1572,1327,1045,1060,1061,1062] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        