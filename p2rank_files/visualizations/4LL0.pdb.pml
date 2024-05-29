
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
        
        load "data/4LL0.pdb", protein
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
 
        load "data/4LL0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1219,1229,225,179,172,173,176,177,178,524,374,491,1230,1228,698,700,701,705,1221,357,717,245,246,1141,1222,722,737,745,746,1142,747,749,1112,1126,1114,754,775,776,777,778,719,370,372,373,355,356,684,685,681,682,689] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3035,3393,3422,3423,3028,3030,2984,3000,3057,3058,3059,2456,2455,2457,2460,2444,2459,2445,3003,3026,3027,2998,2528,2529,3011,3508,3509,3510,3511,3407,3500,3502,3503,3056,2506,2507,2508,2638,2640,2639,2642,2643,2653,2807,2983,2806,2965,2649,2964,2655] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2892,2893,2895,2898,2897,4491,4507,2894,2899,2900,2345,2975,2363,2364,2347,4468,4470,4469,4492,2552,2554,2553,4495,4497,2365,2880] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [81,610,62,611,609,612,64,271,2275,2276,2277,692,269,2252,2274,2285,614,615] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1229,225,374,1230,1243,1228,205,184,185,188,189,182,1252,1254,1090,1126,1116,1117,1089,1127,212,210,200,373] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3535,3371,3398,3370,3396,3510,2483,2486,2488,2479,2475,2471,2472,2494,2493,2656,2657,3524] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [549,554,560,1190,1206,1207,1158,710,2259,597,2258,709,595] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2836,2837,2832,2877,2879,2880,3488,3438,3439,4475,2843,2846,2842,3471] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3785,3240,3792,3212] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        