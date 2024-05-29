
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
        
        load "data/6TFW.pdb", protein
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
 
        load "data/6TFW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1136,1153,3186,1101,1102,1103,1104,2696,3140,3141,3148,3139,650,2553,3169,493,498,3167,488,542,538,3147,544,545,546,561,541,1111,2602,2604,2605,2350,2712,2700,2689,2692,2693,512,523,1135,1137,2539,2538,1132,1133,1134,897,1122,2587,1110,500,502,503,509,2544,2550,2579,2582,2583,2585,2586] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [650,1087,648,649,654,1167,630,326,671,673,317,192,144,666,142,333,334,1175,1176,332,330,191,193,147,149,702,703,1058,698,1088,1168,1169,1198,472,633,540,549,550,555,631,535,694,695,141,145] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3200,3201,3202,3209,3208,3124,3095,2733,2735,2739,3125,2740,2732,2387,2379,2383,2385,2252,2209,2250,2251,2214,2207,2205,2206,2690,2691,2695,2705,2708,2688,2370,2369,2213,3203,3210,2674,2576,3218,2514,2511,2672,2590] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3168,496,497,498,499,3166,481,482,488,3165,477,544,545,546,3159,25,26,8,2564,2931,2934,2924,2923,4000,2897,2956,2955,3977,3978] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [919,1957,886,887,1956,1953,918,2074,2091,2071,859,860,1979,523,2539,2537,2538,2540,897,894,2092,2523,2524,2518,2529] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [771,794,795,1116,1117,834,836,736,738,804,835,2107,2108,2314,774,2325,2308,2157,2328,2293] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2548,2555,2952,2956,2953,2954,2955,2983,2985,2976,3012,2951,507,514,2536,495,499,2563] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3446,3682,3683,3827,3554,3412,3415,3638,3823,3824,3825,3826] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        