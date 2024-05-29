
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
        
        load "data/4I24.pdb", protein
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
 
        load "data/4I24.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2966,3605,3606,3496,3497,3498,3511,2581,2582,2535,2536,2580,2537,2538,2539,2540,2542,2965,2970,3079,3076,3077,3078,2717,2727,3059,2721,3499,3607,3608,3614,3635,3636,2733,2568,2731,2902,2563,2564,2541,2545,2546,3097,3100,2718,2533,2531,2534,3591,3103,3083,3101,3525,3526,3124,3127,3131,3132,2529,2530,3080] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [537,1177,1178,1186,1185,359,190,155,156,157,207,206,208,162,163,165,189,167,168,171,1083,1068,1069,648,649,632,650,344,343,357,631,1097,699,703,1098,687,696,704,727,655,669,672,667,159,160,676,652,656] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2666,2648,802,835,836,837,838,839,840,2162,811,2152,798,2642,2645,1137,2181,2245,2247,1126,738,739,804,808,775,2178,2651,2653,2421,2473,2650,2208,2209,2211] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2704,2705,2706,4735,4738,2297,4715,4716,4717,4718,4730,3110,3111,1111,1113,2276,2277,2274,2280,2699,682,2268,2698,2703,2294,3088,3092,3093,3096,660,4709,329,330,331,324,325,332,674,683,664,665,658] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [4686,3266,3268,3554,3555,3565,4622,4623,4619,265,268,274,292,3263,3265,3267,4603,3226,3203,3227,253,4688,47,4649,4652,271,275,99,277,278,4609,3236,3237,3166,3167] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2261,2263,2264,2253,2221,2260,2296,3087,4743,3084,3080,3591,4747,2931,4745,4746,2937,2293,2974,2975,2991,2992,2993,2222,2973,2957,2971,2926,2917,2922,2928,2929,2932,2927,2962,2965,2967,2970,2223,2224,2404] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [656,4704,4737,4702,4705,499,4693,2305,504,529,498,500,501,659,1163,542,539,489,543,545,565,546,547,4731,4733,4735,2302] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        