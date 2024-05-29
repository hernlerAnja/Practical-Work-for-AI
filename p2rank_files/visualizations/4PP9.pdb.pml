
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
        
        load "data/4PP9.pdb", protein
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
 
        load "data/4PP9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2601,489,3026,3027,3028,3029,3030,1063,1064,1065,1066,1067,3025,3037,2476,478,3070,3071,2593,2596,2599,636,1108,1059,1062,1089,1090,1091,477,655,1107,656,2604,2605,2618,3022,2624,2627,2620,2440,2441,530,532,2451,3053,633,3052,3034,3035,3054,244,238,245,248,236,638,641,642,664,2208,2201,2211,2493,2495,2207,863] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [281,282,122,125,1129,141,685,707,106,112,163,117,121,649,1047,677,652,265,110,161,162,107,109,646,623,624,625,626,278,280,1128,1121,1018,1046,1120] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2126,2244,2245,2124,2069,2075,2070,2084,2085,2088,2981,2647,2648,2670,2995,3091,3092,2612,3009,3010,2640,2615,3083,3084,2590,2586,2591,2587,2243,2589,2241,2228,2125,2073,2611,2072] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2245,2336,2338,2366,2101,2103,2105,3088,3113,3089,3090,3092,2591,2395,2243,2572] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2039,2038,2040,2539,2036,2513,2548,2534,2565,2251,1996,1994,1997,2018,2021,2252,2550,2551] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [550,585,33,34,587,588,572,75,77] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1356,1760,1762,1763,1764,1467,1598,1761,1323,1324,1326,1562] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        