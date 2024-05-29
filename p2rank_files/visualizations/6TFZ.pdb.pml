
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
        
        load "data/6TFZ.pdb", protein
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
 
        load "data/6TFZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3257,3287,3289,3306,3264,670,544,547,549,1189,552,572,666,667,660,1140,1147,2795,2796,2799,2791,523,2643,2668,2649,1172,514,513,520,1173,2628,2637,2638,2640,2636,2639,534,2682,2684,2685,2686,2678,2681,1170,1146,2617,2150,2151,2621,2622,927,2703,2814,2788,2790,509,2652,511,499,556,557,3263,555,553] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3328,2323,2325,2468,2470,2288,2289,2274,2272,2273,2279,2280,2281,2282,2284,2285,2311,2466,3203,3213,3225,3329,2842,2843,3333,3354,3322,2453,2787,2789,2790,2794,2324,3320,2451,2452,2808,2806,2276,2277,2770,2813,3240,3241,3321,2811,2835,2838,3338,3340,2674,2675,2613,2689,2690,2695,2773,2771,2680] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1108,1123,1203,1204,1205,1211,1212,353,354,355,178,176,659,660,661,338,198,347,351,640,641,196,197,180,146,147,149,150,152,154,153,677,713,1124,706,709,1094,714,682,484,1234,644,481,551,560,561,564,566,642,1223,1216,546] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2617,2130,2150,2151,2621,2622,2623,927,916,890,2133,2012,2014,2038,2684,2628,2637,2638,2636,2639,534,949,948,917,2015,2016] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [507,508,509,510,3033,3055,491,492,493,4117,15,2995,2997,5,2961,2996,4140,556,3275,557,3276,3277,555,488,4118,4119,3022,3023,4115,4141,2994] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [865,866,825,2166,2167,2168,2143,862,864,828,829,815,2391,2406,2409,792] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [90,38,28,29,32,25,35,9,2972,19,2933,2934,2878,272,290,3269,3270,2970,266] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3586,3968,3970,3966,3967,3969,3822,3823,3411,3552,3555,3773,3694] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        