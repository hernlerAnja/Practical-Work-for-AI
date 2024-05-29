
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
        
        load "data/4TWC.pdb", protein
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
 
        load "data/4TWC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2621,2726,3638,3641,3642,2713,3092,2886,3079,3640,3098,3118,2953,2954,3094,3091,3122,3123,3131,3135,3538,3539,3115,2569,2571,3110,3161,2567,2573,2576,2579,2620,2622,3136,2583,3649,2730,2728,3519,3504,2849,3643] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [132,285,1202,174,175,177,283,401,1196,1199,1195,125,118,119,124,1061,719,693,1072,1194,1193,1191,651,670,120,121,123,176,268,668,438,630,643,644,689,681,1090,1091,1092,673,676] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [96,97,99,105,106,3204,4833,4834,90,4865,4869,4852,4857,82,4872,4835,4836,3198,3199,3203] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2818,3068,3015,3016,3017,3013,3014,3012,3018,2824,2828,2829,2831,2855,2857,2896,2817,2823,2827,3061,3062,3064,2820] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4846,4844,3592,3593,4876,4882,4887,4856,4853,4861,4890,4892,4896,4898,3584,3585,3583,3563,4900] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1267,1558,2140,957,1269,2142,965,2143,2144,1309,1311] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        