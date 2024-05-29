
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
        
        load "data/1H1P.pdb", protein
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
 
        load "data/1H1P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1086,1087,694,698,701,1058,650,657,662,667,670,664,666,686,687,678,265,1158,1159,1160,1163,1164,1166,108,147,1070,248,641,643,261,642,644,645,257,145,95,92,727,146,93,101,107,509] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [4515,4665,5015,4514,3421,3398,4504,3387,3388,3389,3357,3386,3392,3393,3396,3355,4474,4475,4477,4501,4492,579,580,4495,4496,3358,3359,4503,2979,2988,2989,4701,3430,4702,5003,5013,5012,5004,5107,5028,5030,3422,3423,561,3390,3391] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [4738,4736,4580,4620,4569,4570,4571,4568,4878,5631,5632,5633,5559,5560,5158,5159,5160,5167,5174,4565,5200,4721,5135,5137,5139,5143,4566,5113,5114,5115,5116,5117,5118,5119,4618,4619,5639,5543,5636,4573,4574,4581,5531,5535,5532] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7461,7865,7866,7869,7871,192,7462,540,542,557,530,42,539,531,534,228,242,229,21,22,23,31,4,41,7832,7860,7862,7864,7894,7895,7861,7863,5049,5052,5053] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3690,3691,3661,3659,3660,3666,2842,2847,2849,3510,3545,3575,3577,3664,2840,3511,3671,4364,4362,3667,4350,1238] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [7989,7990,8018,7327,7329,7331,7623,7984,5726,5728,7313,7624,7983,5709,5725,8019,5712,7992,7991,7993,5699,5683,5681,5686,5687,5695,5696,5682,5720,5746,5748,5456,7614] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [617,619,272,154,156,158,11,14,255,10,35,52,53,56,58,599,600] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [983,1210,982,1213,1214,1209,1222,1273,1275,3518,3519,1223,1236,3141,1255,3151,1252,1253,2854,2855,2856,2858,3511,3520,3517,3481,3546,3150] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [8837,8144,8835,8164,7319,7322,7323,7983,8018,7984,5726,7313,8050,8048,8134,8137,8139] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [1103,1100,7096,1118,2349,1128,481,654,1144,1145,483,516,651,659,7116,7115,484] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [1847,1846,1848,1874,1875,1427,1440,1444,2199,2183,2189,2190,2191,1841,1830,1832] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7375,7377,7378,8219,7350,8208,8209,8213,8215,8259,8288,8305,8311,8332,7970,7976,8211,7959,7964,7384,7969,8310,7381,8274,7042,7043,7033,7036,8258] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [6868,6871,6874,6671,5934,5938,5939,6875,6905,5707,5713,5718,5719,5914,5710,6661,6884,6662,5945] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [4845,5654,5753,5774,5786,4838,4865,4867,5757,7637,5754,7660,7628,5656,5661] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [2401,2398,1234,1237,1240,1245,1246,1466,1461,1465,1440,1441,1450,2198,1474,1478,2188,2410,1392,2187,2189,2190,2404,1472,2411] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [357,360,372,1284,1280,1305,1285,1281,3167,392,394,364,365,1313,1301,1302,1193,1181,1183,1184,1185,1188,1187,3155,3164] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [6672,5899,6349,6663,6305,6314,5923,5912,5913,6671,5900,5914,6656,6303] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [2569,3801,2902,2904,2905,2939,2877,3746,3815,3859,3796,3786,3503,2561,3837,3838,3491,2570,2908,2911,3486,3785,3795] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [6901,6904,6913,6915,8517,8067,8068,8069,8023,8056,8058] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [5145,5146,5576,5617,5618,5573,5601,5127,5132,4989,2628,5591] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [580,3329,3351,311,316,3359,3350,3353,3388,3386,3348,3349,343,3380,576,578,300,566,567,352] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        