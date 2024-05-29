
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
        
        load "data/1H26.pdb", protein
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
 
        load "data/1H26.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [507,508,1086,1155,1158,1087,1159,1163,701,1058,1065,1070,1164,1166,100,101,265,108,643,435,642,645,646,263,727,95,678,89,92,650,667,670,248,146,147,96,98,640,93,664,1173] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4622,4620,4621,4567,5169,5176,4568,4564,5545,5634,5635,5638,5533,5540,5639,5202,5121,5117,4740,4880,4738,5119,5142,5561,5145,5137,5562,5161,5633,4983,5118,5120,5115,5116,5125,4723,4582,4583,4585,5641,4570] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1236,1252,2843,2847,2848,2850,4363,4365,2841,1253,3546,3576,3511,3512,3578,3691,3692,1239,3665,3641,4351,3672,3662,2855,2851] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1390,1427,1440,1870,1874,1875,1883,2198,1441,1450,1428,1444,1835,2190,2191,1832,2199,2189,2183,1846,1847,1848,1841] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3487,2912,3498,3838,3833,3839,2571,2940,3803,3816,3786,3787,3788,3799,2879,2878,2882,2906,2909,2905,3747,3492,2553,2570,3504,3739,3736,3737,3860] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [8095,8022,8051,8034,8037,8073,8074,7722,6792,6796,6806,7147,6805,8023,7732,7982,7138,7113,7140,7141,7144,7727,7733,7739,7116,7978,6934,7175] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [7926,7927,7902,7903,7897,7907,7900,7746,7078,7082,7085,7086,5728,7076,5727,8598,8600,8586,7777,7781,7811,7813,7779,7747,5713,5714] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1255,2856,3151,3152,1209,1210,1213,1222,3514,3519,3520,2857,2859,3521,1214,1223,1236,1252,1253,3546,3547,3512] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [7753,7754,7755,7092,5698,7782,5711,5684,5688,5689,5697,7749,7093,7747,7781,5728,5727,7091,5730,7387,7386,5748,5750,7090] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [264,265,108,111,116,107,118,124,120,280,122,121,281,282,404,262,1166,147,136,132,134,135,1179,372,368,369,370,371] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4045,3596,3597,3552,3556,3551,3595,2402,2432,2429,1231,3586,3584,3583] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [5695,5720,6630,6626,5715,6632,5696,5948,5941,5709,5712,6694,6652,6666,5721] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [7830,7831,7832,8280,6664,6667,7787,6637,7819,7821,7786,7818] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        