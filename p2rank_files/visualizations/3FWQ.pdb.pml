
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
        
        load "data/3FWQ.pdb", protein
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
 
        load "data/3FWQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1173,1174,754,755,1169,1171,1199,1202,1204,753,1197,1194,1141,5498,5474,2656,2680,2676,2686,2655,1175,1108,1110,1138,1140,1151,2752,2757,2776,1149,1150,1176,2761,5472,5473,5495,5504,5507,2759,744,3562,3560,762,1426,742,743,745,1393,1402,1406,3551,1408,1409,3987,3990,3989,4020,3571,3572,3573,4022,4024,4026,4015,4048,4049,2779,1383,2812,4057,2793,4056,2775,2900,3991,3967,3968,3969,3992,3993,3994,3926,3928,3580,3924,5570,5575,5577,5594,5593,5597,1206,1208,1238,4211,5630,4201,4223,733,1239,177,717,82,1230,1231,5611,5608,139,3574,4244,4225,4243,4227,3741,3953,3956,3958,3959,5494,5579,4212,5629,4202,4205,136,4203] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [796,798,799,3321,807,324,322,3604,3608,738,921,922,923,924,3617,3614,3554,3556,524,535,925,3616,3624,3142,494,3131,313,493,3312,516,517,518,519,480,503,500,501,3615,3353,3298,3337,3338,3739] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4161,3774,4162,3256,3191,3756,3194,4139,3207,3208,3787,3790,4133,4138,3204,3257,3198,4259,4262,4269,3375,3730,3732,3360,3361,4261,3595,3597,3757,3759] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [940,542,438,558,557,957,388,1344,779,912,914,915,1441,1443,1444,1445,1459,559,1453,671] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1408,1409,932,934,1384,1385,1386,1387,1388,1389,1360,3553,3554,3526,1407,2957,4056,2993,2995,3538,1383,3535,3533,3506,2988] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1913,1916,1629,1631,1923,992,1318,1320,989,990,991,1310,1311,1643,1644,1302,1304,1609,1610,1611,1622,1312,1316,1317,1319] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [559,1451,1450,1452,1467,670,1468,1470,1471,576,581,582,597,598,1447,1448,1449,1288,1476,1477,1478,414,422,416,629,569,557] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [742,743,767,785,786,737,744,748,3566,3560,1426,3604,3552,3559,3603,4244,3585,4243] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [831,884,274,611,641,642,609,612,613,648,253] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [710,711,3337,3331,3334,3335,3336,713,258,259,3317,257,688,239,712,709,3318,736,737,792,794,789,790,815,797,798,801,805,806,808,738] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3633,3531,3619,3076,517,520,3527,3056,3529,3530,3057,3079,3078,3080,3556] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3031,3009,3011,3029,3041,4363,4315,4343,4308,4310,4362,3002,4317] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1793,1771,2595,1766,1767,1752,1770,2637,2620,2642,2631,1222,2643,1758,54,58,65,81,68,71,1760] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4509,4513,4971,5066,5027,5030,5034,5033,5068,5101] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3393,3415,3488,3397,3227,3394,3398,3233,3229,3231,3416,4286,4287,4288,3234,3232,3448] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        