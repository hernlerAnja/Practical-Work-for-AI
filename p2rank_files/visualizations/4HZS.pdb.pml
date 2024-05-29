
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
        
        load "data/4HZS.pdb", protein
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
 
        load "data/4HZS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6230,6304,5838,5841,5846,6200,6231,6314,6313,6201,6202,6203,6214,5240,5292,5239,5248,5257,5260,5256,5820,5242,5243,5293,5294,5428,5429,5430,5427,5798,5799,5414,5815,5803,5681,6307,5678,6323,6325,6308,6335,6337,5685,5686,5694,5695,5698,5605] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [1130,1204,1205,1109,1131,1114,1207,1208,1214,1213,140,142,139,193,146,148,194,156,157,505,578,581,1215,314,703,328,329,698,699,1235,1237,1209,330,720,725,717,710,684,741,746,770,1100,738,779,1223,1225] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3758,3763,3764,2744,2880,2878,2879,3786,3680,2864,3260,3267,3253,3248,3249,3234,3787,2742,2743,2690,2692,3131,3754,3755,3757,3773,3759,3765,3128,3775,3055,3650,3664,3681,2710,2689,2696,2698,2706,2707,3275,3270,3287,3288,3291,3329,3320,3296] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [8750,8353,7964,8348,7790,7843,7844,7978,8764,8862,8863,8864,8886,8887,7980,7842,7789,7806,7807,7810,8388,8370,8365,7792,8228,8854,8857,8865,8858,8360,8367,8231,8781,8780,8349,8155,8334,8391,8396,8753] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [6259,5953,5917,6260,5952,5936,5876,5919,5836,6257,6237,6255,6016,6239] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [1758,1906,1305,1457,1492,1606,1757,1904,1324,1460,1701,1700] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [9408,9142,9553,9555,9556,8955,9256,9397,9107,9108,9110,9350,9259,9402,9407,9315] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [852,853,1159,1160,850,776,819,775,1137,736,848,817,2454,851,880,854,859] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3710,5004,3367,3398,3400,3401,3402,3403,3325,3369,3404,3409,3430,3706,3709,3687,3705,3286,3326] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [8467,8810,8503,8502,8805,8809,8565,8566,8788,8787,8789,8386,8425,8426,8469] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [4007,4010,4250,4156,4251,4308,4042,4307,3874] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [5084,5085,2113,2388,4937,4938,2534,2535,2387,4663] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [1243,1244,1282,1290,1326,1278,1289,1405,1406,1063] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [3876,3954,3956,3839,3955,3613,3832,3840,3793,3794] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [4469,4475,3896,4474,3920,4484,4483,3893,3919] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [6424,6557,6800,6560,6709,6852,6857,6842,6801,7006,6858,6394,6405,6704,6706,6404,6765] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [1933,1934,1941,1369,1343,1346,1924,1925,1370] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [10076,10078,8508,8510,8521,8524,8529,8553,9754] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [6343,6344,6382,6389,6390,6504,6505,6506,6163] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [7373,7526,7527,7528,5974,5960,5979,5971,6003,7204,7387] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7487,10037,10038,9763,10184,10152,7488,7602] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        