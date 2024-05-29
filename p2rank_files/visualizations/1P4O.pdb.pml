
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
        
        load "data/1P4O.pdb", protein
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
 
        load "data/1P4O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3746,2749,2702,2751,3848,3852,2694,3312,3318,3285,3293,3308,3309,2901,3861,3865,3866,2700,2701,2705,2706,3828,2887,3280,3282,3287,3145,3261,3268,3262,3829,2697,2693,2695,2698,2699,2771] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [1384,237,1401,1402,230,681,823,423,804,818,1388,1282,848,1397,854,287,241,242,1364,285,236,238,231,233,234,816,827,821,829,307,844,845] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [11,13,18,20,21,3042,3670,3692,3693,3695,23,25,3857,3858,3859,3991,3992,3994,3930,3928,3929,3931,3932,3933,3899,3900,3681,3856,3863,2717,2732,2721,2731,3842,2720,3841] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [1228,1229,1231,2484,2487,2489,1206,1394,1377,256,257,1393,1464,1465,1466,1467,1468,1469,1530,1440,1436,1395,1435,1439,253,1392,1399,2477,2480,2481,2482,1527,1528,1217] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3792,3793,3559,3132,3534,4793,4795,4796,4797,3121,3122,4807,4808,4809,4806,4810,4845,4846,3771,3773,3775] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3623,4690,3628,3595,3597,3631,4706,4707,4688,4689,4918,4940,4137,4138,4139,3626,4147,4149] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [657,1328,1329,668,1070,1095,2332,2333,1309,1310,2343,2345,2329,2342,2381,2382,2344,2346,658,1307] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [3007,3004,3032,3033,3034,3031,2513,2514,2518,2527,1220,1221,2967,2968,1219,2460,2508,2509,2510,1,7] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [1315,1041,1042,1043,888,1078,1077,1015,922,923,1044,1045,1316,1318,1320,1322,887,889] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [3507,3508,3509,3782,3505,3506,3779,3530,3780,3542,3353,3784,3541,3386,3387,3479,3351,3531,3786] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [808,657,1328,1344,1345,1309,1310,1311,658,806,1295,1294,1299,813] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [3773,3774,3809,3775,3270,3271,3272,3273,3277,3758,3759,3792,3121] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [1131,1133,1159,2226,2242,2243,1675,1161,1673,1674,2224,2225,1685,1683] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [1643,2968,1640,1641,1515,1497,1502,1538,1537,1539,1586,1499,1659,1517,2965] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [4146,4647,4148,4646,4114,4103,4068,4069,4113,493,59,69,4131,4132] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [731,732,733,743,746,768,522,75,77,561,520,71,534,74,495,494] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [2535,2539,2998,2541,3025,3196,3197,3232,2959,2984,2986,2538,3195] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [4184,4607,4608,4453,4321,4446,4444,4214,4459,4181] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1720,1857,1982,2143,2144,1989,1980,1750,1995] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [2729,2726,2736,3844,3016,2900,2902,2908] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [438,436,552,1380,444,272,265,262] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        