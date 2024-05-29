
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
        
        load "data/2RFN.pdb", protein
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
 
        load "data/2RFN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3360,3361,3362,2620,2621,2622,2623,2624,2651,2652,3358,2726,3355,2619,2649,2650,2618,2625,2626,2740,3273,3192,3186,3187,3188,3363,3151,3203,469,3214,3213,2677,3152,2717,2641,2643,2644,2679,437,3359,3199,2344,2343,2345,2508,2509,2339,2340,2341,2342,2494,2495,2496,2510,2868,2894,3275,2891,2866,2362,2361,2861,2330,2333,2843,2842,2480,2840,2593,2596,2598,2826,2827,2828,2739,2758,2760,2335,2900] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [219,723,724,215,216,217,218,220,751,1160,235,237,373,236,361,204,206,721,772,775,747,755,208,748,742,377,375,607,1240,1243,1244,1158,781,205,214] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1240,1241,1243,1244,1247,1248,1232,532,500,507,530,531,533,2586,2589,498,501,502,503,504,505,474,477,479,709,708,390,375,391,621,723,724,1071,1072,1073,1032,598,525,2546,2556,1098,1099,2545,1077,1084] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1935,1938,1939,1940,1393,1383,1384,1391,1392,1038,1039,1008,1955,1956,1037] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        