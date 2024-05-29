
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
        
        load "data/5DG5.pdb", protein
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
 
        load "data/5DG5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3107,3109,3111,3113,3118,3116,2976,3526,2641,3650,3713,3714,3693,3132,3133,3140,3141,3124,3651,3216,3077,3078,2730,3092,3076,2618,2619,2560,2562,2561,3618,3616,3621,3623,3625,3597,3604,3607,3609,3610,3611,3603,3606,2899,2929,2967,3398,2901,2902,3598,2927,3151,3174,3175,3600,2869,2867,2868,2870,2871,2875,2876,2744,2746,2745,2872,2873,2893,2894,3454,3456,3614,3437,3439,2640] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [436,266,267,268,324,346,347,1385,788,678,1298,1311,1313,1315,1317,607,608,1299,1301,1302,1308,1310,809,814,1218,812,836,837,1406,1342,1343,1405,871,1377,1357,803,820,805,807,828,829,870,912,325,773,576,450,452,574,575,581,582] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3499,4038,3828,3827,4084,4087,4096,3797,3739,3500,3502,3812,3813,3794,3646,3150,3166,3167,3168,3498,3660,3740,3724,3726,3642] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1295,1296,1299,1303,1301,1302,629,631,605,607,608,1090,669,1289,1290,1292,1306,1146,1148,1129,1131,573,576,577,452,599,600,574,575,581] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1192,1520,1519,864,1194,1489,1431,1190,846,862,1338,1352,874,1334,1416,1418,1432,1730,1776,1779,1788,863,1505,1486] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [580,543,544,545,1446,1454,295,465,292,298,302,1328,1425,304,306,578,579,452,518,1302,1310,1319,1440] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2480,2454,2464,2465,2474,2475,1547,1548,1549,1550,2452,2485,2486,1580,1581,2127,2135,2123,2110,1612,1551,1613,1595] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3733,2582,2586,2588,2592,2600,3636,2596,2598,2746,2872,2873,2874,3618,3627,3629,3610,3612,3754,3614] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1618,1626,1620,1619,1120,1629,2167,2168,2169,1066,1094,1095,1096,1097,2180,2184] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3926,3928,3937,4478,4479,3927,3428,3404,3405,3374,4491,4495,4480,3402,3403] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        