
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
        
        load "data/1H28.pdb", protein
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
 
        load "data/1H28.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [146,147,248,670,91,93,664,678,686,263,643,645,265,701,1058,694,727,1164,1166,88,89,95,96,90,642,644,640,641,1159,1160,1163,507,508,667,1086,1087,1158,435,405,646,1167,1070] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4736,4619,4620,4721,5116,5639,4737,4589,4590,4738,5646,4878,5543,5632,5633,5636,5637,5638,5652,5653,5631,4877,4980,4981,4982,5113,5114,5117,5119,5118,5559,5560,4565,5171,5174,5531,4568,4562,5123,5140,5143,4566,5160,5159,4844] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3421,3422,4475,3398,4477,4504,4495,4478,5028,5030,4665,4514,5106,4515,5107,3419,3424,3425,3430,2979,2988,2989,5014,5002,5003,5012,4701,5004,5006,5015,3417,3418] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [542,4,557,41,42,28,31,7871,7894,7895,7896,555,556,634,192,2,6,1,539,540,530,7452,7903,7461,7462,7897,7898,228,531,534,533,7892] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [7990,7991,7992,7993,7984,7986,8017,8018,8019,5687,5695,5696,5699,5709,7983,7322,8164,8048,8050,8137,8134,8139,8835,8144,8823,5725,5726,5728,7313,7315,7623,7624,7329,7331,7330,7319,7614,7364,7320,8837,8839,5682,5746,5748,5683] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3513,3517,3545,3546,3575,3510,3511,3691,3692,3690,3577,3661,3666,3664,1252,1255,2854,2855,2856,2858,2840,2857,2842,2846,2847,2849,4362,4364,3671,4350,3667,1214,1222,1223,1236,1239,1243,1209,1213,3151,1251,1275,1247] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2560,2561,2570,3837,3859,2881,3497,3503,3815,2556,2559,3838,3491,3494,2877,2908,2911,3496,2552,3796,3801,3742,3735,3736,3740,3746,3739,2698,2902,2939,3786,3738] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [8310,8311,7970,7976,8219,8215,8209,8259,8305,8306,8288,8332,7043,8274,7032,7964,7412,7375,7381,7384,7350] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5917,5913,5914,5900,6656,6663,6672,6308,6305,6657,6321,6319,6320,6314,6348,5862,5863,6347] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1841,2190,2191,2183,1832,1846,1847,1848,2199,2189,2192,1389,1390,1427,1440,1450,1874,1875,1876,1835,1441] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1115,1119,516,7098,7096,7100,1145,481,483,1128,1144,484,651,654,659,1103,7115,7116,674] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [5124,5127,5128,5147,5617,5618,2624,2627,2628,4954,4956,2623,5132,4957,5573,5574,5576,5589,5592,5601,2642,2643] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [6623,6600,6629,6633,6634,6243,6247,6644,6296,6636,6450,6451,6452,6453,6637,6635,6638] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4840,4843,4845,4838,7659,4867,5756,5757,7628,7660,5753,5754,7637,5662,5654] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [392,394,1283,1280,1281,1284,3164,1193,1183,1184,1185,1181,1188,365,372,3155,3187] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [6901,6904,8517,8069,8068,8058,6913,8067,8055,8056,8066,6875,6912] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [7480,7482,7495,7496,9091,9092,9093,9084,9089,9090,218,7504,7507] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        