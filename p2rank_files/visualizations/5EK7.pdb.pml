
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
        
        load "data/5EK7.pdb", protein
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
 
        load "data/5EK7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1212,1221,1222,1226,1241,1243,865,869,1242,1315,861,862,840,836,839,1316,1317,1223,1314,1320,1322,276,278,329,330,331,274,275,277,280,432,830,832,289,447,448,449,586,813,814,292,297,300] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3527,3528,3125,3147,2717,3121,3103,3150,3115,3124,3607,3599,3600,2733,2734,2871,3098,2895,3511,3506,3507,2614,2615,2616,2565,2574,2582,3154,3497,2559,3177,2560,2563] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [517,518,552,1342,3880,519,551,554,1339,299,309,311,296,528,525,526,500,3878,1354,1370,1471,1358,1361,1336,1469,1350,1369,3667,3674,3676,3788,4179,501,3660,3663,3656,3659,3677,3901] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1451,1445,1449,885,922,1494,1455,1457,1456,1527,1215,1216,1217,1526,1213,1738,1794,1791,1792,1790,1787,1803] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3498,3499,3500,3501,3502,3170,3746,3734,3736,3739,3730,3811,3812,4023,4061,4088,4076,3207,4075,4065,3720,4077,4079,3740,3742,3778,3779,3760,3738,3743] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2584,2802,2803,2804,2839,3636,1382,1381,1389,1391,1392,2785,2810,2811,2813,3649,3655,1395,3765,3754,3756,3762,2581,3639,3637,3635,1374] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1288,1275,1276,1282,1287,1023,1268,1277,668,1047,1048,1051,1052,669,1021,1022,1046,659,661] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3336,3337,3306,3307,3308,3309,3331,3332,3573,2944,2946,2953,2954,3571,4569,3561,3567,3572] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3627,2326,2327,2328,2311,3623,2888,3436,2309,3463,3464,3465,3443,3423,3444,3440] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3911,3403,3915,3916,3908,3909,3910,3917,3914,4429,3921,4427,4428,4474,4475,4425,3942,4463,4468,4471,4472,4473,4424,4433,4434,3402,4476,4483] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1628,1629,1657,1626,1630,1631,1632,1633,1636,2191,1118,1161,1620,1623,1624,1625,2178,2188,2189,2190,2183,2186] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1165,1338,1158,1151,1153,26,27,1178,1179,1180,1347,1348,43,41,42,1352,1345] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1255,1258,1269,1272,822,851,852,658,660,1302,694,819,827,1287] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3540,3543,3572,3112,3136,3107,3587,2979,2943,2945] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3985,4386,4387,4388,4389,4390,3954,4239,4099] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        