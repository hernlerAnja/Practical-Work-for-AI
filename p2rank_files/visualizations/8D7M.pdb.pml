
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
        
        load "data/8D7M.pdb", protein
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
 
        load "data/8D7M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2481,2487,2490,3387,3398,3399,3402,2534,101,102,3526,2627,2986,2987,2993,3409,3531,3523,2862,3525,2794,2861,98,3030,3056,3428,3429,3007,3011,3012,3013,3031,3045,3055,108,112,113,2493,2497,2536,2640,2630,2636,4806,4807,4808,2644,3532,3534,2510,2513,2643,2642,2974,2760,2793] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [123,1035,1037,1045,666,667,692,1034,1064,2472,117,1162,2464,2466,1065,126,128,129,1023,4758,4759,172,276,278,279,170,272,262,263,629,622,643,280,1168,396,1164,1167,1159,430,1163,623,1161,625,649,497,498,610,132,133,146,2476,681,691,2477,4744] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3473,3475,4720,4722,10,2,5,9,76,77,14,4716,4717,85,3483,3024,3025,3434,3441] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2667,2948,2950,714,715,721,2654,2658,2662,2526,2527,2528,2649,2547,2517,2518,2521,2508,2509,2648,716,720] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2440,2441,2449,1077,1085,1086,1109,1110,1111,2369,2372,660,661,699,2356,2358,2374,2377,2366,2378,700] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3208,3209,3211,4572,4574,4568,4604,4601,4599,4600,4662,4664,4602,3190,4682,4684,3178,4603,4570,4598] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4793,4791,4792,3775,3401,3046,3047,3048,3996,4072,3115] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4737,684,681,682,4745,1411,683,751,1630,1632,1708,1037] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1452,2059,2042,2075,2079,1533,2065,1489,1324,1325] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        