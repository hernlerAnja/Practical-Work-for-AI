
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
        
        load "data/4BIC.pdb", protein
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
 
        load "data/4BIC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2333,2637,2656,2657,2214,2215,2216,2638,2352,2318,2335,3204,3205,2197,2415,2393,2396,2445,2447,2411,3195,3197,2412,2395,3185,3186,3183,3184,3193,3190,3191,3192,3085,3074,2524,3100,3101,2661,2169,2676,2679,2693,2165,2166,2167,2172,2170,2702,2695,2698] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [175,313,1168,1167,1169,155,156,162,163,194,312,1163,1166,1162,1160,1161,1051,153,143,144,149,150,677,1078,375,374,424,426,192,311,631,632,193,296,499,145,372,402,330,613,498,1077,636,655,643,651,654,147,1182,392,395,1173,1181,1170,1171,1172,1174,1177,391] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2795,2845,2878,2840,2843,2768,2769,2770,2771,2863,2865,2820,2844,3119,3121,3143,3144,2774,2879,2772,2867,2868] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2460,2461,2462,2463,2464,2466,1897,1898,1362,3230,2433,2431,2436,2428,3011,3013,2992,2995,2993,1377,1380,1382,1888,1889,1360,1361] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3912,3895,3898,3900,2943,2947,3911,3881,3857,2977,3395,3396,3399,3392,3394,3390,2975,2987] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1924,1925,1937,1907,1403,1405,1408,1431,954,1921,1930,1407,952,964,1409,1412] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [797,821,822,745,746,748,855,856,747,749,751,1098,1099,772] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3517,3278,3521,3525,3526,3527,2716,3077,3071,3487,3488,3490,3287,3289,3513,3514,3064,3076,3078,3261] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        