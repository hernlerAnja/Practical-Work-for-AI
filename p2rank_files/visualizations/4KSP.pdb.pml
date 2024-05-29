
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
        
        load "data/4KSP.pdb", protein
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
 
        load "data/4KSP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [125,128,131,176,177,178,634,619,260,268,633,275,272,1179,1162,1165,1166,1177,1171,1174,1175,1176,1173,276,1056,522,417,658,661,662,638,654,656,655,1083,129,676,663,683,1081,687,688,714,716] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1149,485,527,529,642,643,3203,1133,1098,1100,1131,1132,3202,2581,2584,2697,530,2551,505,506,493,496,497,498,888,2298,2299,3163,2725,2701,2702,2704,3160,3161,3180,3186,1106,3152,3154,3155,3185,3187] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2705,2708,2709,2710,2712,2715,2231,2183,2232,3242,2230,3216,3219,3228,3231,3233,3225,3226,3227,2717,3133,3135,3137,2732,2735,2737,2741,2767,2730,2742,3106,3241,2182,2768,2770,2314,2670,2687,2312,2313,2322,2326,2328,2692,2575,2576,2688,2330,2471,2496] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1153,1156,1004,1006,1161,992,1000,513,949,950,434,987,435,443,1159,414,417,410,1160,1162,1166,1168] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2488,3003,3004,3041,3052,3058,2489,3046,3054,2566,2567,3207,2468,2469,2471,2496,2497,2576,3059,3060,3216,3220,3213] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2550,2551,2552,2559,244,241,2963,2964,668,671,1101,245,246,248,647,1100,3176,3187,2940,2941,2942,2943,1109,2932,3186] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2151,2133,2338,2134,2137,2624,2115,2117,2118,2644,2648,2643,2135] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [25,28,2079,2058,2501,5,8,447,448,449,2505,2506,451,452,2056,2061,2062,2057] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4061,4062,208,4032,212,237,227,228,210,2984,233,235,4034,70] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3027,3028,34,54,224,3026,12,74,75,2991,236,3019,3018,3025,2993] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        