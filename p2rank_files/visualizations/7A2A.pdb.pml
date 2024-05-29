
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
        
        load "data/7A2A.pdb", protein
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
 
        load "data/7A2A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [647,650,3188,3195,3218,3220,536,3194,553,554,1136,529,532,533,493,494,500,503,2581,491,2570,1086,1087,1093,1094,1117,1119,2621,2622,2565,535,537,551,484,489,479,3217,2572,2575,3237,2617,2638,2740,2734,2732,2614,2618,2560,2620] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2725,2631,2398,2400,2706,2707,2709,2710,2632,2396,2209,2253,2255,2235,2237,2210,2203,2383,2206,2254,2204,2416,2726,2753,3171,2780,2784,2785,3135,3172,2777,3269,3251,3252,3253,3254,3259,3260,3271,3264,2507,2514,2515,2542,2543,2510,2545,2486,2487,2484,2212,2719,2724,2750,2611,2754] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [329,325,327,328,346,624,166,1150,1151,1152,1160,1055,1153,1158,1159,1180,1181,1182,639,628,634,546,620,621,622,310,311,321,525,526,531,540,640,641,1166,1168,662,663,1070,1071,693,1041,312,186,187,188,137,139,657,168,170,686,689,428,433,434,625,406,1163,461,462,464,429,463,345,407,1170] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2568,2569,2571,869,870,880,901,902,1963,1935,1931,1934,1933,2088,2089,2068,2071,841,842,843,1957,2553,2554,2555,2560] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [487,488,489,490,2997,479,473,472,25,26,468,474,1,2,7,3206,2936,2972,2975,2937,2938,4039,2965,4015,4016,4017] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2104,2105,2106,2099,2321,2338,761,778,2315,818,1099,1100,729,819,777,817,2080,2093,2109,2112] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2912,2913,2914,3201,268,254,17,36,39,40,42,43,18,2872,2885] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3322,3464,3467,3689,3690,3606,3498,3868,3869] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        