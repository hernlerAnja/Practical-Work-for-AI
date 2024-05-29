
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
        
        load "data/6GY2.pdb", protein
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
 
        load "data/6GY2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [69,70,103,105,45,43,71,74,77,2980,2204,2205,2982,2203,2969,2974,2977,2331,2333,2979,2187,3004,2989,2983,3002,73,75,76,2366,2348,100,2346,2349,2350,2351,2337] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [867,907,418,420,421,933,383,385,386,381,382,384,3739,3740,3736,931,887,888,3735,889,890,891,892,894,903,905] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2701,2702,2703,2705,2679,2704,2706,2707,2743,2700,2739,2699,3643,2196,2198,2232,2233,2195,2197,2717,3651,3653,2747,2745,2740] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1428,1430,1431,1416,296,1094,309,299,1438,1437,1439,1098,1276,1277,1279,1275,1288,289,300,292] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2112,2115,2101,2098,2104,2111,3228,3249,3250,3251,3088,3091,3242,3243,3240,2906,2119] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [295,288,1029,1030,322,323,1022,1025,472,473,471,475,478,1034,1035,1038,1039,996,1005,1009,1071] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3327,3328,3325,2797,2803,2814,2830,2818,2822,3330,2798,2799,2813,2810,3294,3198,3703] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1149,1147,1148,11,1257,3020,3021,9,1145,1146,1158,3022] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2107,2285,2287,2283,2284,2808,2850,2851,2834,2837,2852,2847,2846,2821,2290] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2416,2453,2454,2458,2551,2552,2553,2554,2556,2417,2418,2419,2550] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        