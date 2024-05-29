
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
        
        load "data/4L00.pdb", protein
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
 
        load "data/4L00.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2516,3476,3765,3766,3724,3759,2515,3788,3446,3764,3762,3763,3794,3791,3793,3795,3796,3131,3134,4007,4060,4062,3751,3752,3753,3758,4144,3754,3755,3757,4061,3483,3471,3468,3472,3473,3474,3475,3634,3641,3646,3647,3447,3484,2499,2508,2511,2534,2553,3650,3653,2514,2694,3638,2690,2691,2692] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1166,1481,1167,1482,245,253,1196,1161,1171,1204,1179,1180,1192,1193,850,1195,236,1194,1480,1861,1446,1469,1471,1476,1505,1506,1508,1511,1512,1513,1778,1779,1724,248,251,1473,1472,1203,1369,1372,290,415,271] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3414,2834,2835,2814,2815,2817,2812,2838,2839,533,55,551,554,555,3402,2278,3393,1,560,562,1138,7,9,1117,556,2310,2311,2284,2866,2309,2833,2868,2287,535,538,2293,2299,2300,2301,2302,2303,2282,2285,3398,2277,564,1126,1139,2290,2832,3413,3394,3397,2865,27,38,56,3415,29,591,592,30,44,46,47,48,3419] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2803,2804,2805,2807,3035,2774,2775,2778,2773,528,750,751,3034,2748,2749,2780,2781,526,2991,2992,463,466,467,468,469,2344,2347,2979,2806,502,499,493,465,494,2342,2343,2348,2377,474,479,2381,2744,2755,707,112,110,107,108,109,111,708] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1203,858,289,290,414,223,224,225,229,230,1351,834,833,1191,782,396,397,398,227,801,803,228,1220,1222,1224,1352,825,807,1193] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4295,4296,3233,4021,4017,4019,3262,3264,4534,4537,4270,4538,3984,4269,3258,3259,3266,3296,3260,3265,4014,3271,3273,3275,3234,3274] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2676,2488,2490,2552,3499,3629,3630,3500,3071,3088,2675,2677,3085,3091,3087,3109,3118,2694,2693,3483,3471,3478,3473,3117,2487,2553,3141] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2921,3284,3311,3314,3299,3300,3301,2911,3585,3596,3598,3522,3575,2919,2910,3332,3333] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [978,1738,945,949,1986,939,944,980,1737,1980,1982,1734,1736] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        