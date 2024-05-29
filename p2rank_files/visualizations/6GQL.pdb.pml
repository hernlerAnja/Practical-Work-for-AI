
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
        
        load "data/6GQL.pdb", protein
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
 
        load "data/6GQL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1335,1336,1337,2631,792,793,2701,2702,2704,2708,2712,2713,2714,787,790,795,701,398,400,403,700,397,3100,3104,2711,3101,3089,3095,358,2707,3092,3002,3003,396,386,387,389,390,391,392,393,394,2986,647,684,1372,1373,794,682,2620,2622,2623,1355,1356,1357,2699,2697,2698,2700,2666,2632,2626,650,653,3119,1326,3605,3600,3608,3610,3611,405,3601,3628,3630,3646,3647,3629,2949,798] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [243,244,1405,295,296,1401,832,835,841,1311,1312,1406,1387,1402,1397,246,418,247,807,810,816,831,677,433,784,565,785,430,767,676,1386,1388,1391,789] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3137,3143,3586,3679,3680,3141,3675,3676,3662,3665,3670,3671,2555,3134,2551,2978,3585,3661,3660,3118,3109,3112,3133,2552,2554,2603,2604,2726,2729,2734,2738,2742,2866,2741,3105,3091,3103,3086,2979,3087,2898,3071] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1388,1392,1395,1234,558,562,561,1187,1383,1384,1385,1240,1232,1238,1226,677,597,595,596,669,1377,588,560,51,587,589,1188,622,1221,1222,1223,4,1,52,36] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2979,2862,2897,2899,2860,2924,2889,2890,2891,3496,2864,2865,2867,3506,3512,3514,3505,3499,3500,3650,3651,3656,3657,3658,3461,3462,3495,2971,3666,3508,3669,3662] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1338,1018,875,1347,1348,1349,877,1320,1342,1343,826,828,825,827,829,3127,1324,1015,3206,3207,3205,915,916,903] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3175,3177,3621,3622,3179,3217,3218,3623,903,3206,3207,3204,825,827,3131,3129,3128,3130,3127,3124,816,3612,3613,3616,1018] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1256,1257,1259,1499,1567,1568,1449,1450,1546,1407,1408,1409,1410,1411,1416,1418,1394,1395,1245] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3530,3531,3533,3668,3669,3841,3842,3681,3682,3706,3684,3723,3724,3773,3820,3683] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        