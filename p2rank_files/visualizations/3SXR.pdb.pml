
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
        
        load "data/3SXR.pdb", protein
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
 
        load "data/3SXR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [156,157,158,256,131,1059,1060,1061,496,630,635,133,134,649,656,1150,1151,1152,1137,1138,424,425,268,270,271,272,1154,613,616,631,676,679,683,1032,129,130,136,1169,1051,1041,1046,1168,1042,1043] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [386,3309,3310,3312,3313,3314,3315,439,440,1173,1175,2503,415,416,417,1194,1196,442,947,973,1188,1192,1193,971,387,410,375,377,3301,393,395,383,384,343,1158,2501,2502,2504,2533,2510,2513,344,345,347,3305,3311,3298,3299,3290,3292,3295,3088,3089,3090,3117,2526,1195,1197,1198,2558,2559,2557] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2770,3177,3178,2800,2793,2275,2258,2260,2273,2274,2373,2764,2256,2257,2613,2747,2752,3286,3255,3149,3159,3269,3268,2542,3254,2385,2387,2388,2733,2748,3271,2730] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1257,2149,1259,2128,2129,2130,1431,1260,1263,2148,2527,2522,1213,2132,2550,2146,2549,2150,2154] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [201,524,526,527,528,229,230,231,233,234,235] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1526,1935,1495,1498,1932,1933,1934,1936,1771,1638] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        