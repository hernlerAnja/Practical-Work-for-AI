
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
        
        load "data/6THW.pdb", protein
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
 
        load "data/6THW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3385,3384,2423,2424,2430,2476,2477,2478,2425,2969,2977,2989,2990,2426,2427,2428,2960,2962,2966,2970,2971,2564,2950,2964,2443,2444,3368,2435,2436,2446,3360,2993,2983,2984,2997,2998,3069,2382,3019,3061,3022,3031,3460,2945,2823,2824,2939,3468,3461,3462,2579,2580,2576,2578,2944,2942,2926] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [250,257,258,244,245,247,290,291,1161,1177,1254,1261,737,259,292,392,393,394,762,763,783,759,239,240,241,242,757,735,378,732,743,764,733,1255,514,738,734,784,790,791,617,1178,776,782,1153,1154,238,812,815,854,862,195,193,194,196,229,236,824,770,260,261] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3369,3467,3468,3469,3333,3490,3491,2580,2457,2459,2684,2460,2444,3368,2446,2447,3350,2445,3349,3544] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1126,1285,1284,261,273,477,264,263,271,274,260,1142,1143,1331,1324,1325,1161,1261,1260,1262,1162] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3846,3847,3848,3822,3794,4035,4037,3787,4074,3795,3802,1608,1609,1622,1623,1625] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        