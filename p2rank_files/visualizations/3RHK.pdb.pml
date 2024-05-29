
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
        
        load "data/3RHK.pdb", protein
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
 
        load "data/3RHK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3201,3202,3205,3209,3212,3238,3557,3584,3585,3586,3676,2625,2644,2646,2628,2632,2634,3738,3700,3701,3703,3776,2615,2614,2613,2785,3151,2663,2664,2665,3153,3673,3675,3677,2642,2643,2645,2647,2648,2798,3672,2799,3692,3693,3694,3177,3178,3179,3168,3158,3174,2610,2616,3033,3671,3211,3558,3227,3559,3560,3764,3239,3766,3741] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [287,304,306,1351,1348,1349,1320,1321,1322,1324,291,294,817,841,842,845,1225,1226,672,1323,1325,818,819,307,323,324,436,450,451,452,794,437,778,791,793,301,302,1341,1342,814,266,438,798,879,867,1197,1198,869,1200,1389,1410,1412,1414,1425,1386,850,851,878,275,284,269] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2012,2013,2599,2686,2685,2687,2771,2684,2773,2774,3171,3172,919,921,933,2697,946,2569,2571,2772,922,2682,2683,1783,1782,1781,2597,2598,2770,2759,2760,2765,2766,2769,2691,2698] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [684,686,588,586,607,608,602,794,792,793,779,558,560,556,578,579,585,1342,1326,1327,468,1330,467,1335,1336,676,680,1321,1307,1310,1316,1313,1314,1138,672,669] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [889,890,1016,1269,1270,1271,1265,1266,1267,1268,1014,1264,829,830,837,839,825,832,929,934,937,938,939,916,942,948,949,943,2590,2588,984,983,985,940] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3047,3029,3035,3040,3662,3665,3666,3670,3682,3686,2964,2929,2930,2968,2963,3694,3673,3045,2935,3046,2933,2909,3689,2932,3138,3139] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [3250,3286,3622,3623,3297,3299,3294,3248,3249,3621,3302,3308,3309,3312,3374,3376,3617,3618,3620,3619,3342,3343,3344,3345,3199] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2676,2674,2657,2806,2807,2821,2822,2823,2656,2802,2339,2650,2651,2653,3713] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3661,3667,3660,3515,3663,3532,3533,3534,3572,3510,3835,3832,3836,3837,3669,3670,3678,3679,3680,3681,3682,3662,3666,2968,3571,3731,3732,3855] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [2791,2656,2806,2807,2822,3131,3090,3132,2560,2580,2582,2672,2674,2342] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [233,235,331,333,444,455,448,771,772,459,730,442,441,446,447] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [2188,2187,2204,1649,2183,2186,1648,1074,1102,1104,1105,1640,1638] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [3434,3462,3463,3464,4548,4537,3986,3988,3994,4553,3995,3996,3997,4535,3466,3469,3465] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [3560,3764,3765,3883,3884,3763,3750,3558,3227,3228,3559,4156,4153,3869,3766,3229,4147,3755] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2963,2983,2985,2964,3029,3035,3665,3650,3024,3458,3659,3663] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1200,1409,1411,1412,1413,1414,1202,867,868,1198,869,1796,1799,1808,1535] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [2114,2115,1679,1712,1968,2112,1819,1682,1967] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4465,4167,4027,4463,4030,4468,4305] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        