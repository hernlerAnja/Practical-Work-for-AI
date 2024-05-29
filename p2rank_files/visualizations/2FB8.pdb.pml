
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
        
        load "data/2FB8.pdb", protein
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
 
        load "data/2FB8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [252,169,650,652,651,712,117,120,121,514,629,630,679,1074,1076,1078,1079,1077,683,684,1048,710,709,513,1158,123,129,170,133,264,266,612,260,615,1165,1162,1163,1059,434,435,1159,409,657,672,674,678,658,654] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2726,2722,2320,2581,2582,2702,3142,3144,3146,3147,2237,3143,3145,2238,2332,2334,3231,3232,3233,3226,3227,3234,3127,3230,2725,2197,3116,2740,2742,2745,2747,2751,2752,2697,2698,2502,2683,2477,2503,2188,2318,2321,2187,2719,2720,2328,2323,2324,2319,2680] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [485,487,2590,2706,2707,2587,1145,1128,3213,639,1094,1096,2545,2570,638,522,3162,3164,3195,3197,1102,3187,3188,3196,3169,3170] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2550,2551,2565,236,222,230,2971,2972,2973,233,2557,2558,2566,643,1097,237,238,240,646,667,204,239,644,1105,2953,2919,2920,2941,2942,3196,3197,2951,2952] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [490,497,903,904,905,2290,2298,2301,482,483,883,884,885,874,882,2304,2708,2733,2305,2306,2308,3173,488,489,1128,1129,2711,3165] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [608,258,89,275,591,585,75,563,55,56,586,72,74,71] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3730,3766,3772,3775,3728,3621,3622,3731,3783,3340,3960,3493,3494,3495,3325,3303] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [217,3003,37,216,46,537,19,21,3005,543,3036,4,3038,33,12] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2676,2140,2142,2143,2631,2658,2344,2123,2653,2654,2136,2139,2157] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        