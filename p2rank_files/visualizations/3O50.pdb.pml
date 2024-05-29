
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
        
        load "data/3O50.pdb", protein
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
 
        load "data/3O50.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2116,2278,2153,2109,2123,2295,2119,2122,2280,3092,3080,2105,2151,2097,2098,2100,2102,2152,2103,2104,2726,2732,3109,2731,2723,2710,2722,2756,2759,2760,2679,3174,3194,2538,3175,3108,2263,2684,2702,2697,2705,2436,3184,3188,3191,3193,2643,2294,2662,2664,2368,2399,2337,2400,2401,2404,2403,2395,2425,2428,2644] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [131,134,293,294,295,1205,684,1204,137,138,146,148,310,412,417,448,456,384,386,411,111,112,113,166,167,168,278,699,704,116,115,716,718,124,1100,1105,1187,1188,1203,1190,1202,1093,1197,1201,743,746,752,1122,722,1121,558,725,730,742,776,777,751] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3767,3887,837,839,844,1680,1681,843,1455,1683,860,1459,852,853,856,3911,3910,3912,3907,3927,3928,3929,1677,1678,1679,865,866,868,1698,3919,3922,3710,3733,3734,3735,3736,3883] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [583,585,587,582,691,581,23,26,254,256,273,211,212,213] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3854,3857,3861,3869,3865,3873,3867,2989,2959,3866,3870,3902,2962,2963,3328,2988,2990,2991,3331,3364,3859,3340,3858,3339] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1439,1470,1486,1238,1248,1250,1513,1485,766,768,1098] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3127,3161,2688,3162,3143,3144,3132,3141,3119,3120,3122,3128] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        