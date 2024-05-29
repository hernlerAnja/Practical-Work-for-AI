
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
        
        load "data/6B8U.pdb", protein
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
 
        load "data/6B8U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [470,457,465,2482,2483,1121,618,619,1071,2438,2446,2451,502,482,501,499,3048,3098,1073,3081,1078,1079,1067,3056,3050,1095,1097,1104] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2165,3122,2116,2164,3114,3120,3121,3123,3126,3001,2113,2115,2614,3029,3031,3032,3128,2604,2606,2607,2608,2609,2629,2636,2640,2641,2611,2586,2587,2246,2247,2259,2262,2569,2475,2616,2370,2395,2396] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [614,1054,609,246,121,163,630,631,632,244,245,493,494,1146,1149,1151,1143,663,664,610,1145,164,1163,162,258,261,1137,637,629,1055,652,659] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2472,2475,3101,3102,3108,3109,3111,2898,2953,3105,2951,2955,2367,2370,2941,2947,2949,2396,2423,2899,2936,2363,2387,2365,2386,2388,2395,2466,3114,3115,2954,2952] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [386,1137,1138,406,413,382,407,389,414,485,415,1131,1132,1134,922,959,921,976,977,978,970,972,964] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3049,3050,1104,3059,859,860,861,2592,2597,2600,2231,2225,2199,2228,2232,2233,2235,828,827,848,849,850,463,469,879,882,2217,477,470,468,1105,2625,2622] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2838,2827,1082,3081,645,3082,2458,2835,2836,2837,2858,230,231,234,648,227,232,623,1072,2450,2451,2805] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        