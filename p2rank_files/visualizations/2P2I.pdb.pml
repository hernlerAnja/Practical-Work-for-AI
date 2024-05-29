
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
        
        load "data/2P2I.pdb", protein
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
 
        load "data/2P2I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [756,764,765,1290,1385,1386,768,775,741,1289,738,747,1366,1367,1368,602,203,204,733,735,737,258,368,367,601,716,717,721,1371,383,384,489,600,521,201,200,376,699,701,380] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [3555,3556,3557,3558,2519,3543,2661,2658,2487,2488,3046,3049,2490,2646,3011,3019,3465,2645,2995,2654,2879,2994,2880,3538,2767,2491,3013,3015,3466,3038,3039,3042,3016] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1374,1372,486,487,488,489,1403,600,521,522,1402,1204,514,1199,511,513,482,1218,1216,1162,1163,1360,594,1363,1364,1368,1357,1210,1212] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2799,2800,2872,3529,3532,3535,2764,2765,3544,3546,2766,3536,3400,3382,3381,3383,2789,2791,2792,2826,3348,3349,3398,3386,3391,3392,3394,3385,2880,2767] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3226,3228,3502,3080,3192,3079,3081,3115,3116,3178,3179,3187,3188,3035,3037,3495,3474] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        