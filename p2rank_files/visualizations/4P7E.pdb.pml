
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
        
        load "data/4P7E.pdb", protein
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
 
        load "data/4P7E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3623,3624,3607,3609,3622,2526,2527,2528,2837,2693,2711,3608,2694,3504,2514,3490,2507,2510,2518,2545,2529,2530,2531,2532,3464,3465,3466,3493,3494,3802,3803,3804,2515,2516,2517,3791,3630,3631,3632,3786] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [136,135,149,151,158,159,160,161,1133,1235,1238,162,340,174,323,1236,1237,322,123,124,125,128,163,1122,1123,1124,156,154,1253,1261,396,398,400,395,1095,1259,1260,1251,1252,466,394,424,428,429,392,1094,1432,1433,1415,1398,427,1400] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [117,118,123,172,125,121,120,173,703,705,307,740,736,737,771,744,1150,720,691,709,712,1148,174,1149,1229,1230,573,686,687,684,1119,1128,1129,1130,1235] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3520,3601,2944,3108,3521,2491,3080,3083,2543,2544,2545,2488,2489,2492,2678,3062,3504,3111,3115,3490,3091,3142,3600,3608,3606] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3937,3938,4584,4589,3939,3932,3931,3361,3388,3389,3390,3353,3359,4608,4587,4588,3363,4600,4604,3705,3700,3701,2336,3663,4593,871,883,862,866,4551,4555,4544,4546,870,872,2038,2337,2338,864,4583,4618,3944,4579,4568,4617] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3632,3767,3779,3780,3797,3781,3786,3631,2517,2768,2770,2527,2528,3626,3624,3647,3648,3757,3761,3628,3778,2797,2796,2798,2757,3753,3751,3768,3456] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [332,662,182,183,77,81,36,37,38,63] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1988,2133,1796,1987,2130,2132] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        