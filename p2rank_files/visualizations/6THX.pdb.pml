
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
        
        load "data/6THX.pdb", protein
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
 
        load "data/6THX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2453,2455,2500,2601,3354,3378,3379,3455,2498,2499,2984,2450,2960,2963,2964,2954,2956,2965,2586,2944,3362,3343,3344,2457,2458,2464,2465,2468,2469,2452,3016,3055,3063,2444,2445,2446,2447,2971,2983,2448,2449,2958,2402,2991,2992,2987,3355,3592,3025,2977,3460,3461,3327,3462,3463,2602,2479,2481,2482,2600,3456,3457,2935,2937,2938,2939,2933,2934,3454] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [701,702,704,730,241,242,378,700,245,290,292,291,390,391,481,482,703,705,706,727,723,711,249,250,256,257,260,247,277,394,1230,1224,483,393,758,752,1146,751,1145,1221,1222,750,732,586,731,1121,1223,1119,1122,1129,244,759,783,822,238,830,239,240,792,738,744] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [258,259,260,261,1229,1230,273,274,1252,1111,1110,1094] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1604,1657,1656,3885,3887,3889,3886,3888,1596,1631,1611,1874,1844,1846,3870,3869] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        