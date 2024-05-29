
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
        
        load "data/6GQJ.pdb", protein
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
 
        load "data/6GQJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [413,3657,397,398,400,401,404,408,366,395,331,332,399,3649,3653,3677,3678,3648,2743,3135,3138,3139,3130,3132,3133,2739,411,799,407,704,705,822,3157,3658,3659,2744,2730,2733,2736,2740,797,794,796,802,3694,3134,3695,2987,2991,3024,2745,3142,1319,1321] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3172,3175,3633,3634,3705,3708,3709,3727,3728,2586,2758,3124,2635,2636,2766,2770,3107,2772,3181,2583,2584,3710,3713,2936,2905,1316,3144,3145,2651,3141,3143,2587,3150,3156,3171,1313,1322,1323,833,3147,3129,3015,3016,3125] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [807,809,252,254,255,303,251,1389,1390,257,426,680,788,793,304,424,425,434,438,771,1372,1375,440,569,789,773,836,839,845,1296,1295,1371,1370,679,1367,814,815,835,811] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1372,1376,1379,1218,1229,1231,1240,1392,1395,442,567,568,569,538,592,599,537,565,566,4,16,18,5,6,17,19,600,601,1222,1364,674,1171,626,1368,1220,1216,1210,1205,1361,673,1367] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3165,3167,3168,3169,820,808,809,318,319,320,3166,3654,3646,3651,3660,3661,3664,3255,3256,240,3331,907,908,909,3215,3642,3217,3669,3670,3671,1000,3241,3244,3245,3253,3213,920,879,881,919,905,997,998,3284,829,831,832,833,828,830,1304,1308,1332,1333,1322,1326,3156] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3547,3548,3554,3556,3710,3714,3717,2902,2903,2905,2900,2898,2901,3706,3707,3560,3562,3705,3509,3009,2935,2937,2962,3015,3699,2927,2928,2929,3544,3510,3543,3540] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1320,1321,1340,1341,2663,2664,658,653,651,654,655,656,2654,2655,2658,2649,2652,2745,2561,797,798,1356,1357,794,796,688,2729,2730,2733,2734,2740,2731] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1378,1379,1229,1240,1392,1393,1395,442,567,568,1400,1402,538,1401,565,1241,1243,1394,1433,1396,1551,1483,1552,1434] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2253,2257,2264,1717,2242,2247,2250,2251,2252,2268,1177,2260,1680,1681,1682,1693,1694,1696,1175,1684,1150,1153,1152,1178,2269,1176,1686] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4022,3514,4019,4018,4020,4576,4579,4580,4581,4571,4034,4055,4582,4589,4593,4597,4598,4599,3515] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        