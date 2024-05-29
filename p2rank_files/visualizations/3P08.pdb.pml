
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
        
        load "data/3P08.pdb", protein
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
 
        load "data/3P08.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3314,708,709,731,733,165,166,137,138,142,139,701,690,732,2666,2680,145,149,730,1082,1083,1084,725,2399,2402,3331,2391,3315,3322,140,172,177,182,1110,1109,682,676,679,1095,1189,1190,1081,1182,2375,2376,2679,161,154,2662,153,3316,3317,3324,300,302,303,3349,3351,290,656,661,286,3327] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2774,3175,2773,2796,2797,2798,2204,2205,2766,2203,3146,3160,3254,3147,3149,2790,3337,3338,3339,3340,2234,310,311,2202,2231,614,337,326,3174,3173,2747,3247,2237,2246,2247,3323,3306,3311,3319,3330,2368,3284,2367,3246,3255,2726,2733,2744,2351,2741,3253] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3331,1058,2393,3315,1095,1187,1189,1096,1084,1251,1217,1221,1222,1223,1224] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [336,2790,3622,3147,3148,3149,3151,3407,3408,333,3677] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2397,2398,1082,1083,1084,1281,725,1496,724,1545,2401,1550] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        