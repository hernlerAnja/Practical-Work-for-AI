
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
        
        load "data/1H1S.pdb", protein
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
 
        load "data/1H1S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [667,669,670,688,685,686,93,642,248,146,89,91,92,95,694,147,96,98,97,145,107,1164,100,101,108,1070,1166,644,646,1158,265,263,1159,1160,1163,1086,1087,1058,698,1059,701,509,640,641,650,508,645] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5631,5632,5633,5636,5559,5543,4581,5637,5639,4982,5114,5115,5117,5118,5119,4619,4721,5113,4618,4620,4580,4571,4573,4736,4594,4737,4738,5123,5171,5174,5531,5560,5143,4562,4565,4566,4568,4569,5140] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [3387,3389,3390,3391,4493,4494,4495,4501,4504,4474,4475,4477,4492,561,3386,3357,3398,3388,579,4496,583,3355,5012,3421,3422,3423,5013,5015,3425,3430,4513,4701,5107,4514,4515,4665,2979,2988,2989,5003,5004,5005,5007,5006] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [2846,3692,4350,2840,2849,4364,4362,1236,1251,3509,3510,3577,3691,3664,3545,3546,3671,2855,2858,3150,3151,3511,983,1210,1213,1214,1222,1223,1209,1212,2842,2854,1253,1255,1252,1273,1275,3481,3518,3520,3513,3517,3519,3141] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [654,1145,651,672,656,659,1128,2349,1103,1115,1116,1100,229,233,483,494,684,682,7098,7467,7468,7094,7096,7117,7087,1118,7115,7116,481,484,516] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [7893,7895,530,7903,7871,7461,7462,7894,7896,4,555,542,41,557,28,31,192,42,634,228,539,540,531,533] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3503,2877,2902,2904,2905,2908,2939,2881,3746,3736,2698,3742,3486,3491,3837,3497,3494,3496,2569,2552,2911,3738,3785,3786,3787,3815,2570,3801,2527,3832,3838,3859,2556] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [4956,5127,5128,5617,5618,5145,5147,4991,4702,5121,5124,4989,5129,5132,5576,5573,2644,2643,5591,2624,2625,2623,2626,4954,4957,5601,6822,2995,4706,4699] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [2189,2190,1847,1848,1874,1832,1841,2183,2191,1835,2198,2199,1428,1441,1427,1439,1440,1423,1883,1846,1450,1390] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [5913,5901,5896,5900,6347,5914,5905,5906,6671,6339,6314,6321,6670,6672,6656,6308,6662,6663,6664,6348,6305] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [8274,7412,7375,8269,7171,8215,8258,8268,7381,7384,7042,7043,7377,7378,7350,7033,8271,7970,7976,8219,8310,8332,8259,8211,8213,8260,8208,8209,7959,7967,7969,7964,8288] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [15,19,21,22,23,24,31,5048,5049,2,3,4,557,7896,5034,7860,7861,7862,7864,5043,7863,5051,7895,7832] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [7331,7986,7990,7991,7992,7984,5728,7623,7624,7327,7328,7614,5455,5456,5683,5686,5687,5682,5746,5695,5709,5720,5748,5724,5725,5726,5696,5699,8019,8018] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [8019,8018,7983,8164,8165,8050,8837,8134,8137,8144,8823,8016,5711,8048,7323,7313,7315,7322] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [467,468,469,516,517,7101,7100,7098,7099,7097,518,7446,7453,7051,7052] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [4865,4845,5654,4837,4838,7599,7660,4867,7628,5756,5758,7637,5656,5658,5753] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [6863,6866,6905,6867,6868,5707,5693,6931,5718,5939,5946,5938,6889,6892,5694] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2156,2160,2161,2165,2162,2163,2164,2172,1770,1980,1820,1821,1823,2151,2149,2150,2127,2010] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [3550,2442,2428,4044,3594,3595,3596,2431,3585,2402,3583] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [1234,1237,1240,1246,2390,2393,2430,2432,2458,1466,2395,1225,1220,1245,1465] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [343,3349,3350,3351,310,3388,578,302,352,344,346,300,3386] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [6901,8067,8068,8069,8515,8516,8517,6913,6915,6904,8056,8058,6875,5704,8028,8025] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        