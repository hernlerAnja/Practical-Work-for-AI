
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
        
        load "data/4L7S.pdb", protein
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
 
        load "data/4L7S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3059,3061,3041,3042,617,638,239,242,243,492,1093,606,609,612,2444,2445,511,512,614,230,2834,237,225,2455,235,2456,2479,2606,3078,2603,3077,2625,3026,3060,3029,3032,2632,1051,1048,1070,1041,1044,633,1092,631,1071,1074,1075,1063,1064,455,458,457,468,1076,2220,2499,1056,840,2213,2225,2608,2611,2498,2215,2218,2222,2208] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [109,115,116,117,119,110,111,112,114,629,630,1032,653,628,113,656,660,661,157,275,276,1106,1031,1113,1114,1003,598,601,608,599,600,602,604,259,274,156,155,625,620,622,624] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3099,3091,2988,3002,3017,2654,2655,2650,2602,2242,3016,2623,2616,2619,2622,2646,2647,2618,2593,2594,2596,2597,2598,2592,2471,2257,2258,2259,2125,2140,2092,2093,2098,2099,2100,2102,2677,2139,2097] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [276,138,382,1112,1113,1114,383,1136,355,317,318,585,274] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2266,2555,2557,2558,2545,2572,2062,2064,2524,2063,2060,2018,2020,2021,2265] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [276,382,1112,1113,585,355,274] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        