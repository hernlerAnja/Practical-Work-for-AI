
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
        
        load "data/6B16.pdb", protein
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
 
        load "data/6B16.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [262,1093,694,1162,356,711,693,699,354,355,369,371,263,373,365,720,717,214,220,261,217,216,735,713,1094,1077,1163,1164,245,1168,1165] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3298,2974,3402,3395,3325,3326,2952,2967,2407,2413,2411,2943,2945,2562,2563,2926,3394,2453,2559,2795,2796,2931,2546,2949,2452,2555,3397,3400] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1657,1658,3483,3574,3868,3869,3846,1329,1328,3466,3480,3481,3482,3507,3541,3506,3572,3870,3590,3592,3593,3420,3428,3432,3433,3431,3440,3542,3567,3569] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [430,432,1169,1170,1171,466,1165,239,242,245,1077,244,370,371,372,373,439,465,656,680,440,395,441,3488,3489,1195,3473,3490,3469,3472,3474] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2664,2665,2435,2579,2686,2580,2561,2563,2720,2910,2911,2912,2927,2691,2696,3407,2690] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3479,3485,3488,3489,1194,1196,1310,3831,1188,1309,1189,1190,3491,3837,3838,432,433,1186,407] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [382,269,271,273,274,133,186,187,188,268,363,361,670,671,672] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3876,3877,3878,3879,3880,3881,1414,1400,1304,1688,1303,1412,1395,1397,1686,1692,1693,1724,1405] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2712,2719,2746,2747,2745,3413,3417,3234,3215] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        