
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
        
        load "data/4MNF.pdb", protein
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
 
        load "data/4MNF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3150,3151,3153,3238,2759,3152,3154,3155,3124,3135,3239,3241,2202,2205,2209,2734,2748,2730,2733,3149,2750,2755,2726,2728,2195,2727,2245,2246,2196,2199,2200,2244,2193,2753,2760,2785,2788,2706,2485,2691,2340,3234,3235,2343,2590,2705,2710,2510,2328,2688,2331,2336] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [117,120,122,168,169,657,123,124,126,129,170,635,634,250,251,252,620,260,617,266,267,264,1080,1064,1081,1082,1083,1084,689,1053,1167,1168,1170,133,440,519,1163,439,414,1164,659,663,655,656,662,678,677,518,679,680,681,684,1078,1079,688] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2715,3221,3170,3172,494,1132,1133,1134,1100,3203,1102,3204,1150,2598,490,2595,644,527,2566] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2573,2958,2959,2960,2961,1101,1102,1108,1111,3204,669,2981,2950,2979,665,648,649,651,233,237,240,236,230,222,2566,2565,2928] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [495,2312,908,911,2306,2309,2313,2314,889,502,856,857,878,879,888,890,3172,3173,493,494,2719,1133,3182,2716,2741,2742,2743,2744,2316,3179] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [475,17,444,2093,2096,2546,445,448,449,20,2515,2518,2519,1,2077] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2095,972,973,974,975,2292,2613,2080,2087,2088,2109,2113,2102,966,964,965,2142,2143,2304,2122] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [567,568,595,592,590,591,68,71,72,74,75,89,275,613,55] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3043,228,3036,66,67,216,46,4,37,3046,26,3037] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        