
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
        
        load "data/6N77.pdb", protein
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
 
        load "data/6N77.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1108,1201,1202,1207,1124,202,203,204,148,143,145,146,1123,694,691,1209,673,573,677,339,719,723,716,697,748,749,1094,142] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3005,3009,3035,3400,2499,3399,2983,3001,3002,2631,2963,2991,2439,2441,2442,3477,3478,2959,2980,3370,2443,2444,2445,2446,2438,2498,2500,3485,3483] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1209,1210,354,355,369,458,187,186,189,190,181,183,400,174,178,185,421,398,422,424,397,1231,1223,1225,1233,1249,1355,1359,1062,1248,153,160,161,164,188,1108,1208,1207,204,149,150,151,152,1072,1071,1232,1382,1097,1099] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2460,2464,2470,2474,2477,2456,2457,2481,2482,3662,3507,3508,3509,3347,2661,2698,2699,2701,2483,2484,2646,2647,2500,3485,2735,3484,3486,3499,3501,3373,3375,3384,2449,3348,2479,3663] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1858,1921,1482,1888,1896,4138,4139,1481,4172,4134,4136,4163,4164,4197,1862,1863,3761,3762] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3815,3817,3811,3818,4420,3844,4452,3819,3820,3823,4460,4462,4457,4469,3803,3806] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [4460,4462,3249,4457,4469,3238,3272,3273,3275,3274,3276,3817,3818,4471] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1760,2105,2107,1612,1576] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3856,4040,3892,4039,4381,4383] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1515,1548,1589] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        