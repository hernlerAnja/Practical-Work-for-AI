
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
        
        load "data/4U45.pdb", protein
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
 
        load "data/4U45.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3631,3608,3632,3633,3634,3409,3629,3695,3706,1693,1694,1695,1707,1710,3762,3429,3414,3427,3428,3872,3946,3718,3743,3756,3760,3745,3744,3853,3868,3870,3871,3787,3854,3680,1701,3624,3568,3588,3672,3673,3670,3671,3669,3466,3467,3445,3674,3698,3712,1315,1317,1319,3446,3721,2485,3621,2618,2617,3558] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [4083,4084,1326,4097,1120,1121,1379,1107,1377,1489,1407,1487,1404,1405,1312,4090,1329,3700,3701,3702,1332,1138,1139,1335,3674,3698,1328,3659,3660,1148,1137,168,169,170,1260,175,1122,1282,1277,1279,1281,1112,161,164,171,173,1294,176,1149,1159,4099] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [780,804,150,1147,1252,1175,773,155,158,161,167,1260,325,1254,1257,1253,153,308,752,754,756,757,151,740,1174,735,1250,1251,760,766,206,207,208,323,324] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3061,3063,3067,2498,2499,2500,2504,3080,2501,2601,3482,3559,3577,3578,3043,3481,3558,3064,3454,3466,2514] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [796,1151,1148,1137,1370,795,1144,1610,1369,1636,3656,3658,3659,3660,3690,3701,1138,1139,1338,1149,1667,1353,1355,1356,1665,1641,1638,1647,1648,1668,3691,3684] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3458,3459,3103,3999,3753,3752,1318,1319,3721,1307,3720,4025,4027,4030,4037,4057,4036,1306,1308,4056,3736,3738,370,3133,3134,3135,366,376,379] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3672,3673,3655,3661,3670,3671,3662,2483,2622,2631,2632,3621,2634,3647,2638,2637,3652,3663,198,201,2493,162,163,165,157,146,2482,2639,145,2640,2484,2486,2490] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1734,3797,4123,4118,4119,4124,1419,4125,1425,3802,3805,3808,3816,4166,1414,1730,1735,1729,1736,1777] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2542,2543,2545,2569,2582,2581,2583,2890,2891,2892,2578,2587,2596,2428,2430,2338,2889] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        