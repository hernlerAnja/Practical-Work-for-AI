
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
        
        load "data/8D7P.pdb", protein
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
 
        load "data/8D7P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3397,3399,4732,4734,3398,2492,2490,4777,4778,3080,3042,3043,3044,3045,4770,4733,4069,4730,3383,3384,3396,4767,3390,4768,4769,3772,100,108,3052,3028,3053,111,112,102,2478,2484,2485,2487,3395,3523,3027] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [170,172,278,280,610,1160,396,1161,171,263,629,625,2463,1159,647,2462,643,1158,1156,650] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2463,1034,1159,117,2469,2473,2470,691,692,2471,123,172,126,129,131,1037,1035,1036,1038,2474,681] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [10,13,1,2,5,8,3061,14,4717,3446,77,3447,85,3021,3022,3431,3060,3432,3472,4699,4719,3470,3471,4676,3438,3440] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3406,3523,3524,3425,2990,3528,2494,2533,2641,2757,3525,3529,3531,2986,102,2478,2484,2485,2487,2624,2531,2490] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2349,2353,2355,2335,1106,1107,1108,2362,2363,2366,2369,2350,2371,2375,699,1068,660,661,2446,2437,2438,1083,1067,1074] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [992,1386,1387,1384,1385,1504,1454,1396,1399,1427,1455,1424,1571,4862,1453,1463,1465,1371,1372,1373,991,1008,1011] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1408,4829,4836,4838,4837,1705,681,682,683,684,751,1629,1037,1038] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        