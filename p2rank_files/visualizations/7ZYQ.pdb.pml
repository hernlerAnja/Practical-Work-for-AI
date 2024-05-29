
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
        
        load "data/7ZYQ.pdb", protein
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
 
        load "data/7ZYQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1130,1160,1162,1136,531,534,1179,3201,2582,524,525,520,522,1137,2568,2615,2616,3217,3218,2573,2608,2612,2579,2611,2631,2720,2725,2724,2614,2555] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2402,2416,2406,2412,2291,2401,2403,2292,2249,2247,2250,2718,2719,2418,2700,2699,2764,2765,2767,2771,3152,3153,3232,3233,3234,3240,2253,2254,2246,2252,2420,3241,3123,2723,2737,2740,2735,2716,2717,2741,2742,2607] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [204,343,344,345,1201,202,203,337,341,658,1113,1193,1202,1114,1084,328,559,674,675,676,681,699,327,657,326,677,155,153,156,152,698,722,723,725,729] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3199,564,566,567,584,586,588,683,686,3168,3169,678,531,1179,3201,2582,524,525,520,522,555,558,563,674,702,560] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [519,520,504,518,521,2984,5,8,505,29,30,2922,2959,2962,4014,2924,2925,4038,2594,2952,4015,4016] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1217,1219,1221,1230,1231,361,440,442,644,494,463,464,661,441,660,393,399,465,468] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3301,3446,3447,3668,3857,3449,3669,3859,3588,3278,3587,3480] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        