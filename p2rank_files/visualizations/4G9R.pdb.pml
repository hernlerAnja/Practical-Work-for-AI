
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
        
        load "data/4G9R.pdb", protein
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
 
        load "data/4G9R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2587,3240,3224,3189,3223,2589,2979,3000,2977,2978,2980,2969,1098,1100,1101,1106,1107,1109,668,669,248,2946,527,530,2588,643,647,1148,1149,244,644,650,241,245,529,2618,2581,485,496,497,498,2621,504,506,510,888,1131,1133,2734,2738,3191,3192,2741,889,1126,1132,3200,2739,887,877,878,886,2329,2332,2336,2339,2335,907,909,505,3186,3217,3197,2762,3198,3199,3201] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1165,1174,1175,1176,1177,1179,1171,1173,1191,129,177,178,128,130,131,522,633,634,274,260,272,442,619,276,417,688,1056,1079,678,683,661,676,1081,1083,654,655,656,713,658,663,662,687] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2219,2268,2747,2269,2267,2222,3282,2752,2767,2746,3172,3143,3265,3266,3267,3268,2778,2779,3146,3147,3262,3264,3174,2774,2769,2772,2729,2753,2754,2350,2351,2724,2745,2359,2363,2365,2725,2710,2707,2612,2613,3270,2508,3256] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2505,2506,2508,2533,3253,3256,3257,3311,3259,3083,3089,3095,3091,3096,3097,3310,2604,2613,3244,3250,3251,3040,3041,2532,2534,2501,2525,3078] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1159,1160,1162,513,1004,1006,1153,1166,470,950,433,434,435,1000,1168,519,1165,441,443,442,414,417,1220,1218,410,992,998,987,949] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [82,97,79,284,612,63,56,61,80,83,570,571,599,590] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [227,237,210,208,235,3021,4074,4075,4101,4099,4102,4071,4073,4103,4128,4129,70] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [28,478,2538,25,2569,447,2119] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        