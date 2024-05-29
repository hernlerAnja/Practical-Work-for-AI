
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
        
        load "data/8P4Z.pdb", protein
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
 
        load "data/8P4Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [111,255,1053,1057,1058,1059,960,1052,1051,1072,363,364,535,1060,1070,1071,1074,1078,949,976,977,435,437,555,559,529,530,533,433,436,446,531,360,566,558,253,254,130,131,132,534,516,337,550,238,532,73,552,75,106,272,1093,1094,1096,270] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2752,2754,2748,2749,2751,2753,2663,2667,3279,3280,3283,3285,3287,3290,2585,3314,2453,2454,2455,3320,2584,3294,2657,3278,2654,3296,3297,2656,2758,2311,2284,2277,2278,2330,2331,2332,2271,2272,2273,2276,2275,2438,2769,2313,3284,3286,2805,3204,3203,2793,2794,2777,2778,3187,3176] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1952,1960,1950,1951,1955,1956,1953,1179,1236,1247,1248,1251,1258,1257] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [689,691,715,2060,726,2106,727,1853,1856,717,1829,1847,1366,692,693,1822] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3472,3412,3469,3409,4185,4186,3491,3492,3480,3481,3484,4184,3490,4193] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1685,1633,1634,1678,1680,1560,1556,1206,1694] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3472,3469,3448,3409,3463,4185,4186,3855,3856,3887,3839,3879,3480,4187,4179,4193,3848] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2819,2820,2822,2853,3582,3583,3581,3171,3172,3377,3365,3367,3379,3631,3335] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        