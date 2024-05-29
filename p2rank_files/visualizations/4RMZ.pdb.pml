
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
        
        load "data/4RMZ.pdb", protein
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
 
        load "data/4RMZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [764,767,231,233,234,282,283,232,775,188,229,230,867,748,370,738,740,742,820,859,235,236,237,239,242,1267,385,386,249,284,252,769,1182,768,1183,787,788,829,622,1258,795,796,1159,817,1259,1166,1158] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [631,3198,1199,3201,3202,3203,3204,750,3171,3172,777,1205,1206,1207,1208,351,751,4209,355,4200,352,356,357,4201,3478,3484,630,3230,3228,3150,3151,3487,600,3488,3489,3490,3155,3168,4187,3166,4207,4206,3148,582,585,1244,1245,612,1243,624,770,577,749,752,755,759,629,628,1229,1230,1231,584,596,593] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3054,3057,2495,2497,2498,2499,2500,2501,2548,2549,3034,3449,2496,3133,3061,3062,2502,3424,3425,2508,2515,2503,2504,3086,3033,3041,3028,3030,2452,2888,2636,3003,3005,3448,3004,3007,3009,2550,2651,2652,3524,3525,3432,2516,2517,2518,3533,3526,3095] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3025,3027,3042,3043,3041,1028,2185,2209,1005,1006,1007,1008,2243,2622,2623,2571,2612,2617,2618,2606,2616,1064,1066,3471,3472,3473,590,591,1037,599,1230,1231,607,608,963,964,962,1004,988,1035,1029,1033,1065,3474,598,600,3051] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3195,19,4506,648,3193,351,647,349,350,3188,3191,325,333,3220,3221,4240,4507,4509,4498,4504,4205,3179,4241,332,336,4221,4508,3222,644,645,16] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [648,3193,351,364,647,349,350,325,327,333,19,336,645,37,38,36,731] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3424,3425,2508,2515,3432,2518,2519,2522,3397,3414,2529,2530,2532,2531,2527,2528] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        