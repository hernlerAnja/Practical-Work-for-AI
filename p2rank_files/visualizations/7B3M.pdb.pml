
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
        
        load "data/7B3M.pdb", protein
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
 
        load "data/7B3M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [522,1300,1394,1395,1396,1397,1398,1400,1401,1389,1392,1393,1402,1408,404,405,1316,521,878,879,892,893,890,1317,502,1315,769,913,775,897,1264,384,385,1450,388,538,1479,1480,698,1405,1409,1410,1411,1412,1422,674,697,694,780,782,722,768,1456,369,372,358,364,370,357,916,933,934,965,966,967,924,359,361,362,373,1279,1280,1293,941,942,957,1291,1292,376,380,958] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3290,3639,2752,2705,2706,2712,2713,3313,3315,2753,2707,2710,2709,2850,3627,3641,3648,3640,2733,2736,2739,2869,2720,2715,2721,2724,2728,2732,3628,2718,3289,3285,3663,3664,3665,3283,3281,3282,3264,3260,3261,3314,3240,3241,3741,3742,3747,3748,3749,3045,3760,3130,3238,3239,3128,2886,3798,2870,3227,3226,3612,3743,3744,3745,3746,3804,3750,3752,3753,3761,3611,3118,3116,3770,3772,3046,3758,3775,3762,3765,3069,3042,3827,3796,3828,3799,3795] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [543,526,527,530,854,855,856,857,834,284,285,286,387,539,386,388,389,509,511,2887,390,397,2891,2894,3202,3203,3204,3205,2893,2895,3192,375,379,2727,413,415,416,330,331,327,371,391,2761,2763,2764,840,2675,2676,2678,843,2679,2744,544,545,546,2745,2735,2737,2738,2739,2740,2874,2878,2875,2877,2633,2653,2654,2655,2857,2859,2723,2671,2779,2890,3188] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3101,3103,3703,3706,3707,3711,3090,2471,2474,3709,2501,3425,3456,3448,3450,2447,2464,2503,3428,3429,3430,4612,3714,3089,3480,4656,4640,3690,3426,3700,3701,3718] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [125,1342,116,1363,741,751,1353,1370,753,755,1352,1355,1354,1358,1359,1108,1077,1078,1079,1102,1103,1080,1081,1082,2259,99,123,1132,2303,2287] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3243,3247,3249,3145,2828,2559,2560,2562,2536,2532,2534,2529,2498,2525,2527,2528,3694,3695,3275,3677,3680,3254,2834] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1332,1344,1361,1362,1379,1345,899,901,906,152,150,180,181,179,186,184,927,928,1338,926] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3108,3120,3083,2537,3121,2532,2535,3727,3250,3087,3078,2512] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [254,681,682,707,708,806,268,800,803,262,265,266,252,267] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [773,730,187,735,732,721,158,159,164,739,1379,760] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        