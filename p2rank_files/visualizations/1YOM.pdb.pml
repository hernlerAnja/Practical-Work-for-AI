
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
        
        load "data/1YOM.pdb", protein
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
 
        load "data/1YOM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3177,2395,2399,2738,2739,3255,3249,2722,2724,2764,2765,2757,2759,2761,2386,3250,3251,2725,2509,2475,3248,2537,2538,3257,3261,2508,2617,2618,2790,3178,3256,2788,2786,2787,2245,2278,2288,2290,2238,2289,2240,2241,2271,2272,2273,2275,2264,2267,2449,2403,2485,2487] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [460,459,451,452,485,458,1007,431,1173,1164,531,1167,963,1024,1026,1028,1171,962,1004,1014,1015,1020,1022] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [206,207,208,156,709,158,161,160,539,688,1099,1100,304,660,665,1178,1172,1176,1177,319,321,1174,687,686,708,159,679,683,661,716,1075,741,712] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2813,2816,2818,2846,2847,2817,2815,2849,1896,1927,1997,1708,1929,1998,1894,1732,1764,1765,1766,1707,1705,1735] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1989,2811,1982,1985,2013,2012,3309,3140,3142,3274,3154,3308] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        