
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
        
        load "data/2WMA.pdb", protein
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
 
        load "data/2WMA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5173,5174,4574,5543,5531,5538,5532,5559,5560,5159,5118,4981,4982,5631,5119,5632,5633,4738,5636,5639,4581,4618,4619,4620,4568,4721,5123,4565,5137,5143,4562,4566,5113,5114,5115,4735,4736] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1,2,31,42,192,228,555,539,540,541,542,530,531,7633,7634,7635,7637,7646,7614,7204,7205,7195] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1144,1145,1128,672,1100,1103,516,655,654,653,651,659,1116,514,534,6858,6859,683,229,7211,226,233,481,484,494,483,889,6839] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1087,93,89,90,92,701,147,146,650,667,1086,670,641,643,640,642,248,264,265,405,646,1158,1159,1163,1071,1166,106,1058,1065,508,509,645] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1253,1255,2840,1252,1243,1251,2855,2856,2857,3510,3511,3692,3577,3690,3691,2850,2854,3546,3544,3541,1223,1222,1236,1238,3661,3666,3671,4376,3575,3665,3664,2842,2846,2847,2849,4362,4364,4350] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [7760,7762,7791,7793,7908,8570,8571,7876,8566,8580,5725,5709,5711,7883,8578,7880,7856,7887,7726,7056,7065,7727,5726] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [5573,5576,5617,5601,4989,5127,5618,4956,4957,5589,6565,2624,2625,5124,5132,5007,4702,5006,2995,2623,2642,2643,2644] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1427,1440,1435,2198,2189,2190,1832,2183,1835,1876,1874,1441,1436,1846,1847,1848,1841] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [2905,2908,2911,3503,3746,2939,2877,2904,2881,3738,2569,2570,3801,3798,3785,3786,3815,3859,3736,3787,2527,3486,3491,3837,3838,3497] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3422,3423,3430,3421,5013,5015,5012,2979,5003,3398,4477,5004,5007,2988,2989,4701,4702,5006,5107,4514,4504,4503,2983,2990] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6344,6347,6369,6370,6340,5986,5987,6113,6209,6111,6236,6247,6313,6252,6342,6264,6265,6238,6237,6239,6101,6102] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [7118,7956,7962,8011,8012,8001,8003,7958,7952,7127,7702,7124,7093,7712,8031,8002,7121,6785,6786,7120,8017,7155,6914,7707,7713,8053,7719,7097,8075,8054] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4738,4877,5638,5639,5661,4581,4582,4583,4589,4843,4844,5652,4595,4753,4603,4737,4606,4755] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3594,3596,3593,3595,3582,4006,2438,2439,2441,2430,2432,4041,4042,4043,4037,4040,3585,3583] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4838,4865,5757,5756,5656,5657,5658,4845,5654,5662,4867,7342,7371,7403,7380,4837,5754,5753,5774] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        