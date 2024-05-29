
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
        
        load "data/4IMY.pdb", protein
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
 
        load "data/4IMY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [20484,20527,20528,19732,19733,19734,18580,18811,18473,18474,18476,19672,20497,20696,20706,19148,19642,20702,20703,20714,19639,19641,19637,19638,19640,19222,18519,18523,18524,18844,20707,20708,20709,18513,18581,18842,18843,18471,18472,18488,18489,19687,19713,19688,19380,19698,19655,19636] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1448,2337,383,384,614,1480,1482,1494,1497,279,645,647,951,2513,1450,2517,2519,371,274,275,276,278,291,292,1446,1447,1183,1465,1449,1451,1452,2338,2294,1523,1542,1543,1544,2307,2512,2506,382] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [9685,10221,11539,11540,11535,11536,11542,11360,11361,11529,10488,10517,11325,11330,11317,10567,10520,10531,10546,10565,10475,10474,9989,11547,9421,9422,9652,10503,10473,10469,10470,10471,9683,9684,9370,9371,9372,9374,9375,9387,9388,10505] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [24834,24836,24839,24906,24907,24908,25212,24835,24904,25089,25090,25092,27661,27705,27706,27707,27727,27407,27408,8368,8369,27368,27400,27355,27356,27357,27358,7692,7693,7696,7697,25136,25107,27406,27405,7730,7731,7732,7729,27659,27660,27662,27369,7661,24855,24848,24851,24852,24853,24854,24856,24007,24795,24796] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [26586,26589,26727,26707,26709,26576,26577,26755,26891,26892,26426,26483,26484,26578,28710,26550,26572,26424,26469,26476,26482] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [25301,25347,25363,18919,18921,18964,19016,18922,19026,19028,19547,19549,19550,19562,25415,25416,19548,25487,25546] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [8234,8236,8292,8293,8294,8360,8279,8280,8388,8701,8702,8565,8387,8386,8396,8399,8537,8773] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [818,7157,724,768,769,772,824,823,7225,7226,7169,7173,819,1353,1352,1350,1351,725,7297,1372,7111] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [16228,16296,16297,16182,9762,9763,9760,10376,9806,9807,9808,9810,10373,10374,10375,9855,9856,9861,9865,9867,9805,16226,16244] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [17305,17307,17363,17364,17457,17467,17470,17772,17773,17350,17431,17608,17636,17365,17459] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [23753,23754,23693,23757,23758,23759,27158,27159,23523,23746,23811,23691,23694,26180,27111,27113,26181,27043,27040,23471,23524,26246,26247,23526,23469,23470] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [24095,26071,26025,26070,26072,26027,26086,26133,26130,26132,26131,27249,23994,23939,23940,23942,23995,27296,27297,23889,26020] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [14635,14638,14639,14640,14641,17061,17994,17992,14574,14634,17924,14333,14334,14335,17126,17127,17128,14403,14391,14390,17062,14692,14627,14388,14386,14387,17921,18048,14591] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [7991,8921,8923,7990,5568,5569,5502,5503,5504,8853,8850,8969,8057,5281,5280,5332,5333,5334,8055,8056,5336,5337] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [24882,24884,25269,24563,24942,24997,24510,24526,24949,25017,25019,25262,25264,25265,25266,24887,25327,25315,24886,25329,24524,24522] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [21206,21286,21288,21322,22048,22140,22141,21335,22045,22064,22078,22863,22852,22876,21332,22862,20872,21326] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [18160,18161,18169,18171,28406,28410,28407,28408,28409,17390,17391,28495,16966,16965,16968,16909] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [15256,15235,9162,14228,14371,14375,14370,14421,14500,15239,14301,14303] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [7420,5227,5229,6029,6104,8022,5138,7374,7437,8106,8107,7403,7433,7436] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [28494,28495,17390,17391,18171,28407,16909] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [66,5174,5249,5250,5317,5318,5367,5321,6185,65,5316,5395,6164] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [16474,14281,15175,16445,16508,16507,14207,15100,16504,14283,17177,17178,17093] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [12137,12138,12914,12929,13713,12895,13702,12991,12928,13712,13726,12176,12172] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [14667,14668,15381,15382,15302,14669,15299,15371,15395,14743,14670,14672,14674,14733,14730] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [24500,24501,24514,23849,23852,24487,24490,24418,23862,24419,23790,23788,23789,23791,23792,23793,23786] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        