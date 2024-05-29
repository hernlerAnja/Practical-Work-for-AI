
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
        
        load "data/6MWE.pdb", protein
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
 
        load "data/6MWE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1067,1068,550,554,1157,1153,1155,1138,306,1139,1142,411,553,573,576,583,111,1220,1212,1215,275,544,546,548,258,526,527,115,157,158,271,273,532] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2776,3272,3370,2348,2354,3425,2487,3368,2389,2390,2748,2753,2773,2750,2746,3271,2349,2351,2352,2522,3355,3361,3362,3363,3366,3424,2626,2391,2502,3426,2486,2725,2727,2732,2726,2728,2549,2550,2780,2783,3351,3352,2807] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [568,570,571,614,616,618,1099,1100,1101,1102,1103,774,775,786,647,611,640,642,3290,2759,2760,2768,2770,2771,3289,776,777,3295,641,2979,2990,3020,816,2980,2981,2840,2841,2847,2842,2982,2818,3306,3310,3312,3314,2814,2816] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2618,3342,3348,3349,3352,3341,3356,3359,2541,3181,3182,3397,3198,3345,3137,3194,3138,2550,2548,2519,2542,2522,3355,2626] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1139,1142,1143,300,304,1146,325,326,327,975,335,403,411,1129,356,354,1184,933,988,992,994,981,982,972,990] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [535,537,1084,1125,386,383,536,361,365,375,1111,534,240,420,436,541,2900,2901,2902,2891,2922] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3338,2734,2735,2736,2737,3287,3288,2741,696,698,697,3324,2598,2601] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4390,3929,3934,3941,3780,3768,3783,3705,3925,3926,3922,4387,4391,4392,3785,3757,3784] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2239,2236,2237,1038,1297,1260,1039,1040,1042,1513,599,1550] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        