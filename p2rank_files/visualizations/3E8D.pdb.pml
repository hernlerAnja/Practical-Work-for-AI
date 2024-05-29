
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
        
        load "data/3E8D.pdb", protein
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
 
        load "data/3E8D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1222,136,118,119,125,126,113,116,2411,2440,107,134,365,367,1101,1214,730,732,1134,1135,2405,2397,2403,2407,2387,1216,1219,1221,1118,1215,1212,1243,1235,1236,1237,381,382,383,401,2593,154,160,106,114,115,680,158,159,268,108,110,285,300,412,435,436,467,408,283,284,301,679,681,685,703,697,544,546,141,117,143,144,146,339,343,380,140,336,379,399,400,407,1110,1106,1104,731,748,751,750,753,756,758,2414,760,1244,1088,1087,5246,5249,5250,5251,5235,5240,1108,5228,2413,5229,5253,5254,5243,5256,5263,785,786] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2870,2871,2730,2872,2873,2874,3810,2889,2890,3025,2749,2732,2734,2735,2747,2748,2703,2704,2695,2696,2697,2699,2702,2996,3024,3826,2997,3001,2934,2988,5325,5330,2726,2729,5328,2714,2715,2705,2706,2707,2708,5031,5029,3834,5333,2969,2970,2972,2971,2956,2954,2928,2932,3801,3803,3809,3804,3805,3808,3818,3820,3723,3724,4994,4976,4986,3690,3693,3695,3697,3699,3321,3319,3320,5309,5002,3342,3345,4996,3811,3707,3832,5315,5320,5332,3268,3269,3270,2857,3056,3135,3133,3274,3292] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3167,3168,3166,2604,2605,5266,5257,5258,5256,5263,5260,2792,2632,2797,2802,2806,5243,5244,5259,5261,5253,5262,5242,5249,5167,5166,5271,1713,1715,3156,3157,5178,2791,2813,1373,5177,365,367,2633,2634,2635,2636,2630,134,135,2593,2600,2647] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1500,1504,1294,1297,2038,1421,1311,1474,1485,1486,1299,1303,1296,1489,1494,1999,2002,1995,1991,1992,1990] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4627,4581,4591,4588,4093,4580,4074,4083,3885,3886,3883,3900,4075,4078,3888] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [5309,5002,3342,3345,3347,3344,5001,3349,5003,5020,5307,5306,3374,3339,3340,5286,3375] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        