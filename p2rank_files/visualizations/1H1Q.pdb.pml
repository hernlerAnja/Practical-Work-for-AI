
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
        
        load "data/1H1Q.pdb", protein
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
 
        load "data/1H1Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4981,5559,4878,5631,5632,5633,5636,4581,5639,5158,5159,5167,5560,5171,5172,5174,5531,4574,4618,4565,4566,4619,4580,4568,4569,4571,4573,5140,4721,5135,5137,5143,4620,4738,4594,4737,5114,5115,5116,5118,5123,5117,5119] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5012,5013,4515,4665,5015,5028,4514,5030,5107,3430,2988,2989,4701,3419,5003,5004,2979,5007,3398,4504,4477,3421,3422] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [541,7892,7894,530,534,7452,7903,228,7461,7462,7871,7895,31,540,542,555,557,4,19,24,29,533,539,634,42,40,41,192,28,531,532] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [1086,1158,1058,701,1087,726,644,108,145,147,265,97,100,107,96,98,101,146,670,93,92,727,248,686,687,688,1159,1163,1070,1160,1166,1173,650,435,641,642,645,646,667] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [494,483,1144,1145,889,1128,1103,1100,651,654,226,233,656,659,1116,683,684,1117,1118,1119,7097,7115,7116,7117,7096,229,7467,7468,484,481,7100,7101,516,7099,2349] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [5725,5726,7313,8165,8825,8826,8019,8018,5709,7983,5711,5712,8048,8050,8137,8138,7322,8144,8164,8835,8837,7323,7315,7319,5716] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [3837,3838,3503,3486,3815,3859,3786,3801,3742,3740,3738,3736,3491,2877,2881,3746,3796,2911,2905,2908,2904,2939,2569,2570,2556] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2199,1841,1846,1847,1848,1867,1874,1875,1883,1428,1427,1423,1390,1835,1832,1441,1440,1450,2189,2190,2191] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [6672,6662,6305,6663,6321,6347,6348,6339,6314,6319,6320,5913,5923,5863,5900,5896,5899,5917,5914] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [4954,4956,4957,5617,5618,5126,5127,5128,2627,5591,5576,5601,5589,5590,5592,5573,2642,2643,2644,4706,5129,5132,4989,2623,2995,4702,2624,5124,4990,6822] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [3671,4362,4364,3666,3667,3691,3575,3577,3661,3664,2840,1252,1253,2842,3510,3511,3692,2846,2849,3545] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [8274,7350,7375,7381,7384,8212,8219,8310,8311,8332,7964,7976,8211,8259,8260,8209,8215,8208,7959,7969,7029,7036,8288,7000,7024,7028,7377,7378,7171,7412,7043,7025] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [4843,4845,5654,5656,7599,4838,4865,4867,7659,7660,5666,5758,5657,5658,5661,5754,5753,5774,5756,7628,7637] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [7331,7990,7991,7992,7329,7984,5728,7624,7328,8019,8018,5709,5725,5681,5682,5683,5687,5695,5746,5748,5696] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [3517,3518,1213,1214,1223,1212,1222,2855,3520,3545,3546,1236,3511,1255,3150,3151,1252,1253] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [6628,6629,6633,6634,6635,6636,6637,6638,6642,6645,6291,6293,6294,6296,6453,6243,6244,6451,6251,6246,6599,6600] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [6863,6876,6905,6906,5698,5713,5718,5719,5705,6931,5693,6868,5938,5939,6867,8058,5710,5707] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [470,472,473,480,486,481,7100,7101,516,7099,469,518,7096,7098,7097,7062,7063,7051,7052,7050,7446,1145] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [4484,5073,5092,4747,4485,4531,4532,4533,4529] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [4941,4937,4942,4943,2579,2626,2627,2628,4945,4946,2577,2578,4990,4991,2624,2625] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [3594,3582,3583,3595,3596,3550,4044,2442,2401,2428,2431,3585] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        