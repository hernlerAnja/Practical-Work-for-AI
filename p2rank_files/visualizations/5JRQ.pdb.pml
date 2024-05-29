
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
        
        load "data/5JRQ.pdb", protein
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
 
        load "data/5JRQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [173,174,175,253,261,265,268,269,621,622,607,283,285,608,1153,433,1152,114,132,133,642,643,644,194,525,662,665,666,667,671,1045,1047,1049,1046,1048,1050,1125,1126,1132,1127,1133,1128,1144,1145,1146,1147,649,655,510,646,650,509,1142,1140,507,434,1143,506,523,128,129,700,134,135,136,145,1131,140,144,157,672,1019,698,697,2594,701,702,2069] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2983,2583,2581,2585,2589,2590,2582,2588,2594,2600,2601,2602,2603,2604,2605,2639,2610,2611,2636,2085,2081,2087,2090,2079,2084,701,2073,2069,2138,2217,2449,2985,2986,3061,3068,3078,2448,2446,2560,2565,3079,2561,2462,2117,2118,2119,2213,2215,2216,2231,2201,2546,3083,2381,2382,3080,3081,3082,3091,2547,2093,2097,3066,3067,2955,2966,2105,655] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [709,711,753,2065,2061,2138,2139,2140,2069,2058,2059,2137,2142,2143,655,657,658,1055,654,656,1070,1062,1072,712,1058,766,768,1088] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2596,113,2650,2597,2651,2991,2993,2707,2705,2733,2736,2998,3024,2594,2648,103,104,106,110,2692] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2207,2056,2224,2225,2509,2517,2497,2038,2041,2017,2498,2018] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        