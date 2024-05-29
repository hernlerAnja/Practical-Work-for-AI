
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
        
        load "data/5UIR.pdb", protein
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
 
        load "data/5UIR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [207,254,201,208,211,214,220,221,242,256,202,1217,227,354,356,357,358,241,237,224,225,698,689,691,255,342,203,204,205,200,817,714,718,719,1132,1133,1108,717,737,738,741,745,725,731,779,746,770,1208,1209,1210,1109,1098,769,1116,1214,1081] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2843,2844,2863,2864,3262,2871,2872,3237,3238,3261,3245,2857,2893,2905,2895,2896,2943,3337,3338,3339,3346,2371,2372,2373,2374,2416,2417,2368,2370,2418,2376,2377,2379,2481,2495,2813,2814,2816,2818,2496,2493,2494,2382,2391,2840,2851] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [608,3012,3016,699,700,701,3004,705,728,727,1154,1158,323,702,327,709,3041,556,606,3297,569,1195,3299,2960,1146,1147,1149,1150,3291,605,588,600,604,721,550,553,554,560,561,558,2965,2977,2978,2981,2982,3008,4024,4021,4022,4015,4014,4016,2959] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [4319,4322,4324,4313,4320,3000,3033,3065,3034,322,3001,2998,2989,2991,4055,4056,307,4036,4020,3005,321,323,336,621,623,3003,297,38,299,298,3002,620,18,12,16,17,19] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [978,2071,2072,1015,1016,2095,2096,2097,955,956,957,958,2835,2852,2853,2854,2831,2826,567,3285,3287,3286,566,954,3275,3283] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1180,2960,1162,575,576,2861,1181,583,584,2961,2851,2954,958] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        