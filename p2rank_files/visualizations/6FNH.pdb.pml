
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
        
        load "data/6FNH.pdb", protein
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
 
        load "data/6FNH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1224,1227,708,709,336,335,472,450,167,473,334,157,160,164,176,169,448,319,142,143,144,146,197,198,199,148,149,151,153,154,1115,1231,1233,1129,731,735,1153,1154,725,727,734,757,1223,578,1225,764] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2993,3000,3382,2970,3381,2400,2403,2446,2448,2402,2405,2406,2398,3343,3452,3459,3460,3461,2709,2409,2413,2572,2571,2414,2424,2806,2944,2945,2967,2555,2570,2447,2971,2393,2395,2391,2397,2963,2965,2961,3462,3474,3475,2417,2426,2734] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4626,4640,4654,4656,4610,4611,4614,4617,4621,5670,4637,4639,4791,4630,5589,5590,5662,5216,5559,5573,5664,5667,5668,5669,4633,4635,4922,4923,4924,4624,4598,4599,5209,5212,4605,4608,4655,4603,4770,5156,5174,5168,5170,5177,4785,4787,5151,4901] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1020,1034,993,995,997,999,990,544,546,966,545,551,4168,4191,4203,4211,535,4207,534,4045,4167,4169,4170,4172,1036,1028,4141,4143,4144,4178,512,513,514,515,510,4047,4048,4004,4217,4218,4215,4216,4020,4026,4028,4025,986,987,988,943,967,4012,985,4137,4138,4135] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4080,3847,4083,4649,4084,4648,4804,4807,4812,4816,4086,4641,4638,3850,3874,3849,3876,4798,5111,5112,4667,4793,4064,3916,3819,3852,4595,3841,3848,3860,3862] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2409,2413,2572,2414,2424,3460,3461,2709,2406,3462,3474,3475,2417,2426,2708,2673,2705,2707] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2792,2782,3426,3155,3152,3153,3154,3156,3182,3183,3415,3177,2791] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4227,4228,553,1175,1183,1213,1169,1166,714,718,719,589,722,555] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [5007,4997,4999,5629,5634,5633,5368,5369,5370,5398,5399,5623,5393] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [6208,5954,6196,6205,5314,5975,5334,5358,5958] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        