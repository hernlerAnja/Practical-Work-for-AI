
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
        
        load "data/8A66.pdb", protein
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
 
        load "data/8A66.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [77,83,101,2160,78,80,81,82,120,597,591,593,595,600,606,122,1010,1011,579,1084,430,431,987,100,102,201,574,216,218,575,613,609,610,612,639,640,641,642,677,2156,2157,2128,2132,621,994,1081,1085,1100,1086,1089,1090,1092] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2863,3261,3260,2892,2871,2847,2330,2331,2332,2335,2336,2337,2850,2856,2862,2843,2845,3334,3237,3239,3244,2822,2825,2829,2824,2359,2360,2361,2338,2339,2475,2681,2460,2334,2836,2841,3335,3336,3339,3340,3342,2477] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [4181,4184,3422,3415,3628,3629,3630,3642,4199,3123,3124,3093,3095,3131,3132,3125,3127,3635,3636,3155,3395,3407,3134,3419,4179,4180,4189,4194] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2058,4386,4387,2089,2953,2954,2955,4388,2086,2936,2090,2120,686,2121,742,745,2056,2059,2062,728,727,751,754,3003,3004,2061,2977,2959,2032,4385,4361] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [875,1161,881,873,874,877,1367,1368,1363,1369,1360,1361,1362,882,904,1157,1160,1139,1919,1374,1921] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1773,1988,737,1757,1770,1991,1993,2017,744,767,733,2016,4323,4328,4318,4319,4321] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2400,2401,2402,2403,2454,2284,2286,2428,2708,2709,2710,2711,2706,2707,2716,2717,2734,2736,2438,2439,2440,2712,2714] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        