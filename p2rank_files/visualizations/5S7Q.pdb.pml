
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
        
        load "data/5S7Q.pdb", protein
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
 
        load "data/5S7Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [506,627,1192,1193,1194,1197,1199,1119,1121,696,700,701,736,693,641,642,505,243,646,665,659,668,661,1101,1198,1200,1088,1089,1100,1213,1196,1078,1061,1219,1259,1272,1077,1058,1218,329,1255,125,307,308,309,128,130,131,255,257,259,623,251,150,152,151,104,102,99,100,101] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3659,3660,2426,2427,2429,3371,3504,3506,2430,2431,2432,2404,2609,3658,2592,2544,2548,2550,2551,2552,2678,2451,2453,3388,3679,3401,3403,3666,3399,3410,3398,3427,3042,3009,3013,3014,3006,3503,3500,2679,2936,2940,3498,3499,2955,2536,2399,2400,2402,2452,2401,2959,2978,2981,2972,2974,2798,2954,3426] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [926,2243,2271,4243,924,4218,4219,4220,906,4245,876,908,878,474,925,959,961,3773,4208,4210,4217,933,463,465,481,1166,935,3752,4283] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3720,3745,3747,4209,3668,3667,3787,3799,3714,3718,3880,3356,3670,3671,3674,3704,3788,3851,3748,3853,3360,3361,3621,3622,3640,3655,3624,3770,3772] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3681,3690,3696,3697,3698,4111,3386,3388,3680,3401,3402,3403,4194,4181,4193,4110,3984,3394,3029,3031,4112,3033,3709,3400,3395] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1076,1078,718,720,1092,1093,1273,1308,1310,1295,1582,1716,1717,1725,1090,1091,1084,716,1808,1296,1297,1795,1790,1794] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1342,1344,1347,1386,1346,1317,1047,1050,1051,1448,1450,1261,1046,1263,1264,1387,1486,1403] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [534,634,57,34,196,197,199,192,193,194,195,198,237,528,200] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1466,1468,2230,2228,2229,2219,2225,1477,962,2242,2241,947,948,949,951,1456,1460,1501,1470,1475] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3832,3862,3863,3834,3836,3269,3267,3265,3266,3859,3861,4581,3869,3871,3872,4598,3278,4602,4587,4593,4590,4591,4592] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4245,876,908,878,1167,846,850,853,1165,1166,4282,4283,2297] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [2786,2986,2987,3485,2772,3441,2762,2962,2960,2961,3443,2799,2800] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [467,469,1136,1138,459,489,648,649,651,652,647,650,656,507,508,674,673,671] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [861,863,747,796,827,748,829,1156,1158,691,1128] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        