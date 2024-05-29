
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
        
        load "data/7A6J.pdb", protein
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
 
        load "data/7A6J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3205,3204,2249,2296,2297,2298,2247,2250,2764,3289,3290,3326,3297,2745,2439,2441,2747,2789,2768,2782,2785,2765,2780,2426,2761,2762,2763,2812,2816,2809,2252,2253,2280,2246,3175,3298] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1112,1113,331,201,202,203,154,693,183,185,681,695,725,151,152,698,722,729,1083,730,1193,1192,1097,348,1200,1201,347,344,346,340,674,675,676,657] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1129,1159,1161,2773,2659,2770,2677,539,2658,2612,2647,2650,2651,2652,2655,2656,2769,2789,2768,2765,3270,2617] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [565,568,569,563,677,683,686,3221,3228,3253,572,3227,3251,529,536,2626,527,530,1176,1178,560,682,702,571,512,525,573] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [529,536,539,2623,2626,527,530,1178,3253,1129,1161,525,3270,2617] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [523,524,526,32,15,33,12,505,500,504,506,3030,2998,4069,4072,4073,4095,4071,3005,3008,2969,2970,2971] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2591,2658,2127,2596,906,907,917,944,2610,2611,2613,2014,1986,1988,2008,1989,1990,2110,2107,880,2009,2128,2595,2597,2602] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3234,2947,2908,269,2909,2888,2945,2946,283,49,50,48] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        