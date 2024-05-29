
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
        
        load "data/6GQK.pdb", protein
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
 
        load "data/6GQK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2807,3203,2803,3194,3221,3718,3719,3202,3206,3730,413,3720,3724,3728,400,401,404,408,395,397,398,331,332,399,366,3105,3195,394,3051,3055,3749,3764,3765,3766,3088,3197,3058,3748,2808,2809,2798,2804,2727,2728,2795,1390,1391,1392,2716,1396,1411,1427,1428,1410,1412,646,647,654,655,657,658,661,407,411,801,798,708,709,2762,2794,2796,2797,2800,2793,3729,806,692,2625] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3209,3220,3235,3236,3705,3796,3798,3799,3205,3207,2651,2650,2648,2699,2822,2825,2830,2700,2647,3780,3781,3784,2834,2838,2968,2969,3211,3214,3193,3704,3776,3779,3000,3080,3189,3188,3245,3239,1393,1394,2715] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1367,254,426,1366,1460,1461,303,304,438,1458,1443,1446,442,1442,1441,684,792,793,604,605,775,573,811,813,815,818,843,849,251,824,839,840,252,255] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [4,16,18,17,19,1293,1287,1289,1281,1276,1277,1432,677,1241,1242,1243,571,572,568,569,570,541,595,596,630,605,603,1448,1450,1463,1443,1447,1295,1438,1439] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [836,837,833,835,3229,3231,1069,1071,834,1375,881,883,885,1379,1403,824,3233,1068,1070,1404,3319,3320,913,3402,923,924,3228,3309,3230,3232,3713,3717,3731,3735,3277,3279,3305,3307,3281,3740,3741,3742,3722,3220] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3579,3581,3625,3631,3611,3614,3616,3618,3619,3026,3615,2991,2992,2993,2964,3580,2999,3000,3001,3073,3769,3770,3773,3775,3776,3777,3781,3785,3633,3788,2966,2962] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1449,1450,1312,1314,1463,1464,1465,1466,1467,1471,1473,1623,1311,1622,1300,1554,1505,1504] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        