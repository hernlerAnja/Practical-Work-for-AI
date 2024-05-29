
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
        
        load "data/4FZF.pdb", protein
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
 
        load "data/4FZF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [655,676,685,653,679,712,713,715,519,482,484,825,480,425,714,443,446,447,449,450,445,323,324,887,888,689,839,853,657,687,516,518,471,472,475,511,512,504,520,540,274,539,658,517,66,67,68,473,470,463,444,12,13,292,293,294,316,36,9,804,805,691,841] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2804,2805,2768,2784,3686,3772,3775,3346,3347,3678,2763,2764,2766,2770,2771,2772,3368,3788,3785,3790,2908,3304,3311,3316,3322,3162,3701,3163,3326,3297,3298,3318,3325,3342,3702,3339,3333] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [884,887,689,839,923,687,519,540,516,896,691,841,1129,840,895] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1702,1703,1323,1325,1327,3047,1720,1721,1320,1350,1728,1348,1349,1352,3219,3223,3222,1307,2658,2652,2655,1309,2656] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3909,3651,3913,3669,3668,3884,3885,3891,3893,3892,3900,3889,2784,2785,2783,3686,3649,3650,3652,3667,3783,3784,3785,3792,3793] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [649,651,298,299,650,641,638,640,616,637,639,644,280,670,672,671,3612,329,330,332,620,3600,3591,3592,3596] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        