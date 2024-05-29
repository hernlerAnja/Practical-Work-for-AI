
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
        
        load "data/3EFK.pdb", protein
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
 
        load "data/3EFK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2426,2427,2429,2431,3422,2583,2785,2448,2449,2579,2581,2425,2886,2899,2901,2902,2887,2567,2799,2798,3417,3423,3415,3430,3416,3332,3432,2710,2711,2708,3334,2926,2927,2925,2949,2950,2933,2397,2920,2906,2680,2681,2655,2657,2679,2682,2652,2685,2597,3247,3425,3426,2678,2703,2416,2428,2953,2959,2394,2399,2400,2403,2412,2422,2942,2985,2987] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [259,260,261,262,422,282,418,420,436,281,817,793,792,229,233,227,230,753,766,768,769,665,406,773,522,524,754,685,1288,1294,1286,264,1287,1292,652,1285,577,578,666,651,1203,1205,820,546,548,549,550,519,545,551,552,1296,1301,255,236,826,853,240] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1439,1440,1083,1082,1084,1992,1053,1449,1987,1990,2007,1448] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [3310,3468,3469,2975,3308,3309,2976,2977,3737,3725,3728,3454] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        