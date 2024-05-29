
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
        
        load "data/6TG1.pdb", protein
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
 
        load "data/6TG1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3289,3270,3272,3240,699,3247,1198,573,576,578,695,696,549,552,2645,2639,1181,543,2699,2678,2680,2681,1149,2793,2794,2797,2789,1155,1156,1179,2634,528,581,582,584,585,586,533,538,540,2648,3246,2669,2672,2673,2674,2677,2787,2812] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2460,2319,2321,2458,2268,2269,2275,2276,2840,3190,3312,2841,2462,2771,3305,3306,3311,3316,3334,2788,2806,2810,2811,3223,3224,3304,2833,2836,2809,2786,2445,2792,2320,2454,2804,2270,2272,2273,3321,2671,2672,2787,2691,2769,3303,2609,3333,3323] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [690,1212,1214,1215,1220,1213,670,337,205,346,350,574,576,688,689,1221,354,352,711,734,735,738,1132,1133,203,204,160,162,163,159,165,712,742,510,1222,513,1225,1232,595,671,673,575,580,581,509,589,590,1231] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [536,537,538,4128,521,522,12,36,523,3,8,4126,528,584,585,586,539,2659,3024,3056,3269,3034,3258,2995,4097,4098,4096,15,2996,2997,3272] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2632,2633,2635,2624,2617,2618,964,2021,2022,932,1987,1990,1991,1989,931,933,1167,2151,2613,2150,2619,942,904,905,2019,2129,2013,2126,2680] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [54,2969,2970,2971,2972,2973,271,28,41,52,53,60,105,106,2941,2932,2931,289,2874,2876,2912] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [879,880,881,839,840,2155,2142,778,1162,2401,2165,2166,2167,2168,2161] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2643,3083,2650,3052,3053,3054,3055,3056,535,3085,3051,3076,3116] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [417,456,414,421,396,454,455,370,375,656,657] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        