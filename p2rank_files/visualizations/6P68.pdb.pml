
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
        
        load "data/6P68.pdb", protein
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
 
        load "data/6P68.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [417,1310,1311,250,251,252,658,660,1321,1322,659,777,1226,1303,1304,1312,1323,547,1305,1333,1319,781,267,401,796,792,199,195,198,793,814,1227,400,404,409,413,759,415,776,416,579,580] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4923,4924,4773,4774,4935,5314,5318,5336,5337,4720,4721,4717,4789,5181,5182,5748,5825,5831,5832,5826,5827,4937,4938,4939,5069,5719,5733,5833,5298,5299,5101,5102,5834,5845,5749] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2670,2468,2536,2467,2519,2520,2521,3459,2684,3566,3567,3571,3572,3574,3585,2816,3586,2814,3573,2686,2685,3050,3488,3489,3057,3062,3065,3581,3583,3584,2929,3565,3045,3046,2678,2682,2813,2848,2849] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2829,2830,2831,2832,2833,1139,2331,2865,1127,2800,1340,2976,2858,572,1324,1315,1325,1326,1336,1339,1327,1330,571,1138,1134,1142,1146,1165,1163,1164,2311,2313,2314,2328,2807,2803,2775,2802,2776,537,538,515] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1572,1573,1347,1348,1359,1354,1159,1161,1163,1160,1571,1172,1173,1174,2312,2313,2314,1554,1375,1377,1379,1364,1456,1495,1496,1494,1521,1344] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3610,3620,3621,3639,3641,3606,3609,3422,3834,3835,3758,3756,3757,3423,3718,3626,3436,3717,3434,3435,3437,3813,3783,3816,3788] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [562,564,585,589,563,59,55,42,44,3427,3389,3405,3406,3408,62,3401] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1194,1701,1202,1486,1421,1425,1412,1437,840,824,1198,1200,1439] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4151,4164,4030,4321,3895,4318,4320,3925] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [5724,6008,6224,5961,5716,5720,5722,5362,5947,5934] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4391,4393,3849,3851,3848,3369,3853,3859,4401,4394,4398,4405,3340,3368,3370] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        