
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
        
        load "data/6TG0.pdb", protein
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
 
        load "data/6TG0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [521,524,1179,1130,1160,1162,2714,667,668,671,3283,545,548,549,661,2829,1136,1137,2731,514,500,510,512,515,556,557,558,550,553,554,939,2664,2666,2667,2166,535,906,907,917,2167,879,880,908,1986,1982,1985,2145,2142,2010,2016,1984,2645,2656,2710,2712,2713,2649,2650,2651,2129,2138,2671,2668,2826,2706,2709,2821,2825,2844,2677,2680,3315,3332,3289,3313,3290,2729,2701,2704,2705,2819] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2335,2337,2295,2296,2297,2300,2301,2323,2291,2285,2284,3354,2478,2480,2481,2482,3383,2313,2872,2873,3237,3251,3348,3352,3353,3355,3242,3392,3356,3359,2820,2474,2838,2288,2463,2464,2465,2336,2836,2286,2289,2818,2819,2817,2801,2803,2641,2721,2723,3267,2841,3266,2868,2865,2704,3346,3347,2703,3364,3366,3362,2635,2638,2304,2309,2316,2708,2709,2824,2637,2717,2718] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1195,661,662,1113,1193,1194,336,338,323,191,642,332,340,1098,1201,339,660,548,1114,1084,683,710,714,715,189,190,145,146,148,149,151,678,707,546,547,481,485,1206,567,643,645,552,561,1196,1203,482,1212,1213] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [494,508,509,511,510,22,23,495,1,556,3092,3060,4186,4187,4188,3067,3301,3031,3070,3032,5,4210,2998,3033,4209,3059] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2403,788,2183,2184,2182,1143,2421,749,750,785,786,855,856,854,811,821,812,2177] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [40,257,3007,3008,3009,275,2967,2944,2968,2971,46,14,38,27,39,91,92] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2635,2639,2659,3365,3363,2631,2632,3178,3179,2604,3173,3180,2608,3367,3368,3183,3360] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3091,3092,3088,3089,3090,3149,2682,2663,2675,3121,3119,4154,3112,3087,519,513,526,507] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3757,4035,4037,3615,4034,4036,3840,3841,3618,4033,3470] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1553,1414,1633,1671,1825,1827] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        