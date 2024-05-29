
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
        
        load "data/4EUU.pdb", protein
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
 
        load "data/4EUU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [766,767,751,1112,1113,1114,1102,1103,1111,1119,1137,1247,1248,552,553,1246,768,770,752,2564,778,1138,733,744,727,707,729,724,2544,2542,2630,2631,2632,2538,2539,2547,1108,1109,1110,804,805,776,779,2467,2541,740,1086,1101,1122,1409,1439,1252,1249,2585,132,1255,173,442,1254,1253,703,702,2581,2582,2583,126,127,129,2584,2563,120,172,121,123,124,281,1389,1394,1400,1275,1256,1268,1269,1271,157,139,142,146,147,152,153,296,297,298,1270,1396,2591,2593,1838,1839,2588,2589,2772,2613,2614,2750,1410,1427,769,771,803,2770,1426,1428,1425,1438,1762,800,802,2766,2769,2757,2466,2752,1749,1727,1728,1751,1756,2777,797,798,799,2780,2779,819,3068,3089,3090,1755,1754,2781,2782,2785,2786,2787,2775,2776,3106,3108,2788,2812,1830,1787,1788] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [135,137,2580,3551,2574,2575,2577,3216,3218,3199,3200,3559,3560,3561,3562,3557,3214,2620,2621,2729,3151,3177,3584,3585,3586,3176,3195,3172,3148,3155,4175,4176,4286,4287,3873,3874,3875,3876,4277,4208,4210,4197,4204,340,4235,4236,4237,4278,4199,4202,4203,2587,2588,2605,2606,2590,134,164,165,141,302,166,317,318,321,3219,331,332,3246,3248,3250,3251,3238,3217,3245,3247,304,308,309,641,642,620,3285,3283,136,116,2567,2568,3215,3226,3227,2569,96,3188,3192,3175,3181,2571,2572,3167,99,18,90,91,94,184,89,95,3224,3252,3253,3257,19,145,324,322,339,329,333,334,337,338,364,3550,3534,3700,3703,3549,3567,3697,3695,3694,3696,3701,3702,2745,2746,3716,3719,3717,3718,2744,3150,3857,3848,3851,3858,3885,3887,2594,2595,2601,2600,2822,3723,3837,3840,3842,3844] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2594,2601,2820,1847,2600,2822,1835,2784,2790,2889,3716,3717,3718,3848,2819,1848,1849,1850,2850,2852,2831,3723,3837,3840,3842,3844,3846,2593] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [371,372,336,146,152,153,339,342,338,1270,374,4297,4298,1396,404,383,1394,1275,4283,4295,4296,4262] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [410,413,671,357,356,667,655,664,668,311,312,313,409,451,453] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3112,3115,2794,2803,2805,2900,2759,2760,2859,2861,3120,2858,2857] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3796,4740,4742,3767,3769,3770,4739,3798,4059,4060,4073,4074,4741,4063,4067,4041] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1620,1626,1625,2292,2293,2291,1615,1619,1321,1337,1327,1329,1612,1348,1351] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        