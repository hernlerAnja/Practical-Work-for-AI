
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
        
        load "data/5XGN.pdb", protein
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
 
        load "data/5XGN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2565,3566,3568,2563,2564,3033,3049,2687,2520,2521,2522,2523,2584,3050,2508,2586,3412,3565,3564,3573,3574,3576,2703,2704,2822,2824,2820,2821,2531,2518,2519,2524,2525,2526,2528,3650,3657,2535,3667,3663,3580,2552,2553,2546,2551,2789,2790,2791,2787,3418,3456,3458,3552,3553,3457,3443,3444,3085,3086,3110,4621,3081,3473,4623,3419,3421,3407,3682,3446,3447,3448,3408] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1145,1227,1228,1231,1146,1225,1226,357,723,180,178,181,720,706,747,750,754,227,228,229,701,702,373,374,495,372,1233,177,183,184,186,209,210,211,223,1130,1116,755,778,189] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [205,206,207,208,210,211,459,1249,462,1232,1233,1248,1255,1256,1257,1234,1094,1130,1119,1121,1371,1372,1373,189,1374,1375,1385,373,374,471,496,391,1247,388] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3187,3188,3213,3215,3176,3177,3182,3183,3186,4572,4573,3124,3129,3253,3254,3120,3121,4574,4575,3157,3153,3154] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [790,789,823,1174,1175,887,889,853,860,861] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [630,631,639,642,4127,78,4252,4254,668,4270,4271] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        