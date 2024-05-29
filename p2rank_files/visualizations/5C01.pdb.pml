
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
        
        load "data/5C01.pdb", protein
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
 
        load "data/5C01.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1057,1058,1059,1060,1061,1048,709,710,1056,1087,701,1034,1071,1035,1070,1215,1210,1211,1086,531,1334,1335,1323,154,158,159,157,178,177,193,304,306,305,289,290,288,307,1222,1223,1227,1228,1218,650,651,656,150,151,152,153,139,143,144,138,133,135,136,191,192,131,132,137,672,1365,1367,1359] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [3128,3127,3267,3268,3110,3113,3144,3143,2734,2588,2731,2725,2783,2821,3116,3117,3118,2766,3114,3115,2727,2741,2757,2758,2767,3664,3667,3725,3379,3380,3387,3422,3424,3423,3596,3105,3092,3391,3633,3647,3670,2215,3091,3279,3280,3285,2235,3284,2200,2201,2207,2198,2208,2211,2234,2195,2196,2248,2250,2363,2364,3269,3275,2188,2189,2190,2192,2193,2249,2347,2346,2708,2713,2729,3353,2216,3393,3381,3384,3354] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [3309,3311,3307,3308,3296,3297,3299,3483,3064,3068,3070,3303,3315,2454,2484,2485,2482,2512,3067,2487,3074,2488,2492,3282,3082] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [3426,3427,3414,3415,3509,3084,3542,3083,3085,3086,3093,3097,3516,3505] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        