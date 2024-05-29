
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
        
        load "data/6F3D.pdb", protein
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
 
        load "data/6F3D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2448,2496,2497,2498,2447,2584,2979,2455,2456,2462,2484,3377,3385,3014,3008,3009,3401,3402,2983,2986,2987,2988,2841,3477,3478,2840,3479,2959,2737,2739,2961,2967,3480,3483,3484,3486,3485,2598,2957,2958,2960,2962,2943,2956,2599,2600,2617,2735,2697,3499,2443,2444,2450,2445,2401,2517,3007,3015,3039,2981,2994,3006] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [250,290,291,292,1150,1134,245,249,247,256,278,788,238,237,591,1228,487,710,1229,1232,1233,1234,1235,709,711,394,392,393,241,242,730,732,735,728,378,706,707,708,716,705,239,240,311,313,194,763,764,1126,759,1151,1226,1227,755,756,736,737,590,589,743,257] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3905,3851,3852,4094,4092,4096,4081,3904,3879,3913,3844,3859,1602,1629,1628,1643,1644,1645,1647] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1602,1601,1609,1594,1654,1655,3892,3893,1842,1844,1629,3858,3878,3879,3852] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3350,3484,3486,3485,2600,2477,3508,3507,3595,2479,3366,3367,3385,3601] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        