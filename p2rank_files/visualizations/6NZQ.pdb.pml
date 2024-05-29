
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
        
        load "data/6NZQ.pdb", protein
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
 
        load "data/6NZQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2683,2684,2115,2172,2273,2651,2653,2655,2693,3032,3063,2692,3035,3492,3034,2709,3033,3327,2112,2113,2116,2118,2121,3037,3565,2660,3062,2639,2675,2676,2667,3046,3047,3177,3181,3193,3189,3194,3010,3023,3024,3011,3326,2634,2272,2287,2289,2290,3185,2124,2131,2134,2137,2138,2139,3295,3328,3286,2171,2173,2123,2157,2389,3197] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [136,143,169,183,185,170,146,123,124,184,127,125,128,1043,1302,151,150,1576,1631,1574,1577,696,1069,712,695,1035,1038,1039,1040,1041,1052,1193,1197,1016,1017,1030,1053,1209,1205,1210,1316,282,642,660,657,664,1068,280,300,299,1506,1345,1344,1346,1313,687,670,658,663,678,686,1546] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [2720,2796,2731,2738,2723,2721,3070,2719,2826,2828,2829,2700,3098,3101,2803] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        