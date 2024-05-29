
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
        
        load "data/2J90.pdb", protein
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
 
        load "data/2J90.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [138,142,3423,130,131,134,135,125,126,128,129,760,1108,1109,1248,118,119,124,734,737,1136,1137,161,162,291,292,176,177,712,279,717,731,120,122,123,147,149,151,3409,3410,3412,3422,3424,3426,3411,1080,1096,1097,1256,1253,1120,414,415,1269,1255,293,479,480,1249,1250,510,584,585,1245,1247,1270,1278,3342,1271,3398,3405,156,157,3430,154,3428,408,3345,3346,441,442,443,1112,3432,402] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [3245,3247,3248,2726,2600,2187,2236,2237,2238,2731,2304,2181,2182,2183,2184,3256,3249,3119,3253,3254,3107,2774,2179,2180,2186,3135,2771,2748,2751,3136,2745,2599,2195,2191,2318,2317,2316] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2196,2197,2223,1321,1322,2192,2318,2497,3269,3271,3272,3278,2317,2335,2215,2336,2433,2434,2203,2199,2208,2459,2460,3255,3256,3079,3254,3096,3279,3078,3277,3077] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3383,3381,2455,1438,1441,3361,3362,1292,3320,3317,3363,3292,3294,1419,1435,1420,3298] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3245,3248,2726,2600,3249,3257,2318,2498,2316] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        