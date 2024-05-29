
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
        
        load "data/5CF4.pdb", protein
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
 
        load "data/5CF4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3543,3524,3528,3514,3140,3525,3630,3135,3139,3545,3631,3632,3633,3490,3519,3517,2516,2517,2520,2528,2539,2507,2509,2510,2527,2703,2704,2540,2541,2542,2555,2954,3086,3625,3082,3104,3132,3107,2501,2688,3100,3544,2499,2502,2554,2498,2503,2504,2553,2505,2506,3167,2809,2810,2536,2538,2847,3646,3648,2537,2775,3654,3655,3656] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [123,124,125,172,173,174,307,135,160,161,162,1236,1237,1239,136,138,145,687,688,1238,322,323,117,118,120,121,741,745,1151,737,738,1120,1134,1150,1231,692,710,685,569,706,713,704,129,746,773] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [863,867,4570,3725,3729,871,872,874,2346,2067,2348,3724,3414,4611,3952,3953,3954,4604,4623,4615,4619,3946,3412,3413,3377,3385,3387,4583,4594,4598,4599,4566,3959,4559,3955,4602,4603,2048,2049,4633,4561,3947] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1254,1262,462,419,143,159,322,323,430,1397,1277,1278,1266,420,421,422,423,390,417,424,425,147,148,149,151,154,158,340,428,1395,156,1394] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3650,3652,2771,3671,3672,3656,3787,3788,3790,3798,3799,3480,3775,3777,2538,3648,2537,2781,2808,3801] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4539,1719,2033,4538,1718,1720,1743,1744,2032,4540,4544,4359,4360,4361,1735,4533,4499,4521] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4524,4523,4525,4527,3989,4177,4178,4372,4377,3992] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1998,1999,1789,2143,2141,2144,1993] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        