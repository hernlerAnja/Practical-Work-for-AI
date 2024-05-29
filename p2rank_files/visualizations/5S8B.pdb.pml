
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
        
        load "data/5S8B.pdb", protein
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
 
        load "data/5S8B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3406,3417,3428,3416,3445,3419,3031,3516,2562,2566,2568,2816,2972,2973,3444,2977,2471,2554,2954,2420,2422,2469,2470,3032,3060,2417,2418,2419,2999,3024,3027,2992,2996,2990,3521,3522,3524,3517,3518,2696,2697,2958,2441,2444,2445,2446,2449,2570,2448,2450,2440,2610,3671,3672,3673,2623,2627,3688,3689,3693,3680,3389] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [159,160,108,109,110,111,689,714,113,680,682,260,262,634,638,653,161,248,652,660,256,1142,686,504,505,1213,717,138,139,140,757,263,264,1221,1109,1110,721,722,1214,1215,1218,1121] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [982,1000,3786,3787,946,947,2258,945,4240,4242,4239,998,2286,4241,897,899,929,927,473,954,956,462,464,447,480,1187,4265,4266,4267,4304,4305,3785,4230,4232,3766,3772] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3379,3378,3682,3684,3669,3543,3784,3759,3761,3762,4229,4231,4233,3654,3685,4228,3865,3867,3635,3556,3636,3801,3802,3813,3894,3374,3375,3786] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4213,4202,4203,4208,4215,4216,3711,3712,3694,3723,3710,4132,4133,3412,4006,3404,3406,3418,3419,4134,3047,3049,3051,3420,3421] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1300,1323,1324,1808,1809,1810,1337,1748,1335,1322,1605,1739,1740,1741,1802,1823,1099,1111,1112,1113,1114,741,1105,737,739,1097] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1469,1414,1071,1072,1471,1374,1509,1067,1473,1340,1344,1297,1288,1290,1346,1284,1287,1291,1294,1371,1396,1373,1838,1413,1425] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1483,1489,1491,1452,1454,1456,2245,1479,1493,2240,2243,2244,1524,2234,970,1487,2257,2251,2256,2246,972,2250,1498,1500,2223,983] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4603,4609,4612,4614,3873,3283,3875,3876,3877,3279,3280,3281,3885,3886,3846,3848,3849,3850,3883,4624,4627,3292] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [263,264,1082,1221,1278,1279,1280,134,135,308,1098,1099,136,138,139,140,1121,1299] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [527,645,242,66,208,202,204,206,207,209,203,205,38,533] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [507,670,664,666,488,695,692,694,458,468,466,1157,1159] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3461,3004,3459,2780,2788,2790,2978,3005,3503,2979,2980,2804,3502,2817,2818] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2372,2373,2388,2371,2390,2858,2966,2375,2352,2946,2948,2947,2949] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [884,817,848,850,1179,1177,842,872,768,712,769,1149] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        