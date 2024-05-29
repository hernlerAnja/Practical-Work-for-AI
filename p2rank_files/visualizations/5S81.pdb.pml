
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
        
        load "data/5S81.pdb", protein
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
 
        load "data/5S81.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2429,2402,2428,2430,2420,2421,2424,2425,2426,2427,2607,3504,3507,3659,3660,3372,3506,3657,2605,2632,3658,2550,2449,2451,2548,2542,2546,2676,2631,2940,3388,3389,3679,3402,3666,2397,2400,2450,2534,2398,2399,3428,3427,2985,2995,2982,2963,2976,2978,2980,2677,2802,3499,3500,3501,2944,2958,2959,3400,3411,3399,3017,3018,3046,3013,3010,2590] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1278,255,253,99,104,125,131,152,126,128,130,254,297,299,1276,1277,251,247,150,151,239,100,102,673,675,101,641,637,1205,1208,1209,1210,1211,1204,1203,1099,1111,714,1100,715,750,710,363,509,655,1130,660,1132,707,679,682,656,1088,1089,1297,1072] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3771,3772,3773,4213,4215,988,2290,4225,4248,4250,4223,4224,919,937,2262,4222,946,990,457,442,458,459,484,936,972,944,935,917,3752,3758] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3766,3787,3745,3799,3798,3788,3848,3850,3748,3720,3747,4214,3667,3668,3670,3664,3718,3704,3714,3357,3671,3877,3674,3371,3677,3621,3361,3362,3622,3640,3655,3527,3358,3770,3772,3769] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1058,1061,1062,1412,1481,1057,1066,1071,1288,1289,1292,1342,1344,1295,1338,1519,1369,1394,1371,1848,1411,1372,1483,1427,1286,1273,1282,1285] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1087,1089,1298,1320,1321,1322,734,732,1749,1750,1751,1623,1758,1333,1095,1101,1102,730,1103,1104,1818,1812,1819,1833,1815,1820] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3680,3387,3389,3679,3402,3403,3404,3690,3696,3697,3709,3698,4115,4116,4198,4199,3681,2427,2429,3395,3711,3989,3033,3035,3037,3400,3396,3401] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2249,2247,2250,2248,2227,2238,2244,970,973,2261,2254,2255,2260,960,1499,1501,1489,1493,962,1491,1534,1457,1503,1508,1510,936,1461,1463] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3856,3264,3262,3832,3858,3859,3263,3860,3831,3266,4586,4592,4598,3829,3830,3866,3868,3869,4595,4597,4575,4607,3275,4610,4596] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2766,3442,2990,2774,2776,3444,2803,2804,2964,2965,2966,2967,2968,2790,2991] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [29,196,197,199,193,198,200,537,531,648,649,57,532] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [874,796,807,1169,838,840,1167,1139,762,705,792,761] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3819,3822,3824,3826,3832,3263,3860,3557,3554,3556,3571,3833,3285,3569,3330,3815] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        