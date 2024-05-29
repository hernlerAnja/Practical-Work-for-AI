
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
        
        load "data/4WD5.pdb", protein
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
 
        load "data/4WD5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3172,3147,3148,3508,3143,3169,3538,3140,3116,4661,4662,3124,3483,3484,3486,3510,3511,3512,3513,3522,3523,3616,3617,3618,3731,3737,2557,2558,2559,2563,2564,2565,2566,2560,2562,2608,2609,2734,3110,3111,3112,2546,2547,2561,2628,2629,2631,2630,2720,2567,3631,2610,3634,2596,3718,2569,2570,2574,2586,2589,2751,3629,3630,3638,3639] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1168,775,1139,1169,770,189,743,767,799,1248,1153,1249,1250,1254,1257,608,726,745,738,740,609,744,747,383,381,230,231,232,185,187,191,192,218,719,721,722,366] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2852,2787,2853,2788,2851,2847,2848,2849,2850,2886,2854,2858,2855,2594,2762,2765,2750,2861,3476,3645,2584,2585,2751,3639,3640,2580] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [529,555,44,556,4247,4248,4249,41,4553,4539,528,1302,1055,1060] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [570,610,614,730,2340,2342,2364,2367,727,1234,2349,2346,2347,617,618,83,616,635] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4307,4308,4457,4424,4421,4284,4458,4456,4274,498,501,503,502,504,471] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4336,461,4335,658,659,666,673,458,485,490,662,688,689,462,420,419,416,4349,4341,4344,487,489] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4247,4248,4249,41,4483,4553,4554,4541,20,4539,21] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        