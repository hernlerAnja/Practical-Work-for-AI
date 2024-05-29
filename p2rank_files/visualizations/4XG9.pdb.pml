
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
        
        load "data/4XG9.pdb", protein
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
 
        load "data/4XG9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3177,3281,3282,2285,2286,2287,2238,3192,3193,3163,2779,2799,2807,2808,2235,2774,2231,2232,2233,2237,3273,3280,2410,2757,2758,2535,2776,2638,2762,2269,2268,2422,2423,2424] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [128,124,126,130,131,178,179,180,303,315,643,162,317,319,1165,1167,642,420,132,134,136,161,318,664,661,684,692,693,1078,1077,1048,1158,1166,1062,659,523,647,1160,1161,125] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3683,3905,3906,3907,3686,261,3761,3762,3773,3776,3794,3777,3748,3902,267,3909,3910,259,260,256,3850,3912,3911,3916,3920] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1026,1188,1189,1190,319,1167,1179,1180,1181,1183,1182,363,390,150,158,160] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3501,3530,3541,3539,1105,3867,1100,3537,3540,1108,1107,4064,4065,681,682,3500] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3294,3295,3296,2534,2425,2426,3297,2499,2500,3298,3303,2478,2505,2501,2263,2265,2267,3276,3279,2535,3282,3141] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3131,3412,3305,3413,3416,3425,3444,3486,3304,3484,3436,3438,3430] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        