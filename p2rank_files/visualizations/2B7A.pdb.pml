
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
        
        load "data/2B7A.pdb", protein
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
 
        load "data/2B7A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3628,3629,3630,3631,3622,3623,2715,2716,2516,2517,2519,2522,2515,2528,2554,2556,2520,2521,3542,3543,2565,2566,2567,2700,3084,2513,3102,2966,3080,3488,3515,3526,3137,3512,3653,3487,3825,2546,2548,2529,2532,2536,2539,3133,3138,3164,2509,2510,2511,3113,2514,3098,3130,3105] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [123,124,125,126,127,128,116,117,122,1133,1235,1236,135,136,1237,172,173,174,118,120,307,686,687,1230,705,121,703,740,744,1148,1149,1150,709,573,1128,1129,1130,1229,691,736,737,712,129,771,1120,1119,745] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [4614,4618,4619,4622,4624,3966,3960,4623,4653,3954,3953,872,4586,4603,4579,4581,3383,3411,3959,3961,3410,3412,4641,4639,3375,4635,3385,864,866,870,876,881,883,862,2356,2360,2358,4590,3727,3722,3723] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [147,151,154,158,398,400,427,138,1251,1252,1253,1261,1400,466,424,428,429,394,395,340,322,323,143,156] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3478,3779,3800,3796,3801,3648,3654,3799,3773,3776,3780,3669,2818,2819,2790,2817,2820,2549,2782,2792,2793,3670,3646,2548,2550,2534,2536,3808,3802,3803,3804,3805,2547,2535] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4553,4557,4558,4559,1725,1727,4560,4564,4381,2044,1726,1750,1742,4520,1751,4519,4379,4380,4541] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4543,4544,4545,4547,3999,4356,4391,4187,4189,3996,4029] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        