
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
        
        load "data/7B5O.pdb", protein
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
 
        load "data/7B5O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1799,3746,3991,3992,405,520,1797,1798,3772,3774,3987,1852,1813,1808,1820,1836,1844,1848,435,436,437,1849,1850,1851,4034,4035,4037,4012,4013,4028,4025,3246,514,3245,1815,3757,3747,1444,1446,1137,1162,1138,1823,1440,1443,1442,1452,3214,1821,1800,1803,1817] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [167,175,4976,4977,4975,4978,4250,4955,4996,4997,4998,3727,3762,3765,4003,375,3728,3730,4249,4244,4251,159,157,393,395,427,428,3764,425,426,396,354,355,334,336,4942,4937,4938,4944,4240,332,66,3738,3739,3740,3741,3742,80,83,3698,3700,4987,4988,4989,3702,5020,59,137,140,141,143,133,158,3734,3735,3737,429,542,543,424,102,103,521] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2900,3811,3946,3947,3948,3949,3827,3828,3840,3850,3964,3197,3963,3810,3970,3971,3972,4102,3070,3071,3425,2894,3423,2947,2889,3198,3302,3941,2888,3866,3867,3476,3419,3429,3304,3054,2891,2892,3448,3456,3839,3462,3463,3464,3465,3069,3088,2933,2934,2948,2899,2895,2897,2908,2910,2930,2906,2907,2923,2926,2928,2929,3164,3165,2917] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1174,2138,1150,1151,1033,1034,2111,2112,2113,1154,1842,1125,1127,1840,1152,1123,2176] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [804,803,827,2799,2796,2797,2800,851,865,874,876,2772,2774,2776,772,773] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2620,964,2613,2625,2631,2634,966,905,933,934,935,936,963,714,902,683,686,652,653,655,2161,682,2142,2148,2151,2154,2160,2589,2615,2617,2623,1214] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1366,1373,1374,1547,1051,1012,1046,1049,1013,1074,1544,1535,1567,1337,1339,1340,1016,1017] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [5118,5101,5102,5107,5112,3619,3650,3622,3682,3288,3911,3287,3681,3656,3657,3904,3278] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3492,3525,4125,4127,4343,3826,3842,4103,4139,4137] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        