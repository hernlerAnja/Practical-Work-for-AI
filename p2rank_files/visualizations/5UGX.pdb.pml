
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
        
        load "data/5UGX.pdb", protein
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
 
        load "data/5UGX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2375,2980,2984,2987,3497,3498,2959,2977,2956,2581,3468,3584,2821,3574,3575,3582,3586,2712,3576,2424,2426,2425,2579,2937,2938,2565,2744,2922,2376,2379,2378,2952,2942,2381] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [174,215,170,171,173,163,164,165,168,614,1245,749,752,374,1324,1328,505,1323,538,537,175,213,214,358,370,372,730,731,166,167,1246,773,777,780,1330,1216,1230,1327,1322,770] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [373,374,472,473,1329,1343,504,1344,1345,174,215,186,191,195,475,175,182,183,196,199,470,471,1330,1219,1220,1230,1412,1194,1352,1397,1351,1353,2622,2618,2634] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2397,3746,3747,2386,2394,427,411,3763,415,3471,3472,3742,3609,3445,3599,3600,3608,3610,3601,3602,2581,3482,3584,3580,2393,2402,2407,2410,2409,2412,2413,2580,2406,2677,2679,2680,2682,2678,2385,2711,2426] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3730,3739,3744,3736,3827,3719,3699,3717,3698,3857,3703,3745,3747,3436,3623,3624,3680,3756,3434,3678,3701,3702,3858,3859,3870,3878,3881] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3910,4453,4443,4445,4446,4450,4457,4461,3900,3377,3378,3379,3645,3650,3403,3351,3893,3897,3903,3908,3669,3890,3891,3892,3657,3658] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3560,3561,2829,2797,2947,3510,3511,3512,3529,2943,2944,2830] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3533,3534,3535,3537,3281,3253,3251,3252,3248,3250,3275,3219,3218,3026] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [968,997,999,1000,967,1001,1002,1003,1032,1024,1282,1283,1285,819,1281,1061] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        