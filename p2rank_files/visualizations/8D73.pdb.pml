
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
        
        load "data/8D73.pdb", protein
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
 
        load "data/8D73.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [178,2920,2951,2952,2953,362,347,3742,3744,3820,3745,3746,3822,3823,3824,102,103,105,3829,3841,3846,100,101,194,196,104,358,360,352,647,649,642,3794,59,60,61,346,106,348,2975,2977,3751,3736,3747,3750,3840,3844,3845,3853,130,2898,2919,2928,3721,3727,2950,2922,2926,3556] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1215,1216,1222,1224,480,512,1136,712,1135,711,576,575,577,339,337,338,688,689,686,322,693,707,690,694,580,741,725,734,737,184,185,186,140,141,142,143,135,137,710,172,1106,134] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2810,3170,3171,3168,3172,3175,3617,3697,3058,3618,3698,3194,2962,2827,3704,3705,3706,2650,2825,2826,2622,2623,2672,2673,3588,3219,3223,2628,2629,2630,2674,3189,3192,3193,3207,3216,3217,2625,2660,2994,3059,3057,3062] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [600,602,680,225,42,88,226,227,229,230,231,232,302,316,228,599,43,598] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3081,3082,3084,2530,2531,2715,2717,2719,2718,2720,2790,2804,3162,2713] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        