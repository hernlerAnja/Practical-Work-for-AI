
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
        
        load "data/5KX7.pdb", protein
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
 
        load "data/5KX7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2673,2674,2666,2669,3061,2695,2698,2119,2113,2114,2115,2116,2118,2166,2737,2745,2070,3060,3136,3137,2501,2267,2616,2617,2618,2619,2620,2621,2168,2167,2665,2642,2645,2646,2653,2117,2636,2626,2647,2254,2615,3026,3036,3037,2697,3044,3142,3145,3138,2120,2123,2125,2126,2132,2133,2268,2269,2270,2707] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [56,57,350,352,331,874,875,876,877,33,42,43,44,870,871,105,358,348,347,6,7,8,377,62,61,71,72,75,374,368,370,12,14,58,128,129,130,334,332,792,793,868,869,378,233,776,769,768] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1088,3633,3634,3636,3644,3435,3434,3669,3671,3970,3972,3950,1720,1721,1722,1707,1715,1700,1058,1059,1062,1065,1103,1055] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1368,1376,1403,1400,1401,1056,1702,1704,3323,3356,1352,3371,1167,1166,1366,1682,1683,1686,1365,3326,3333,3968,3327,3330,3983,3989,3990,3988,3975] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [158,648,177,178,179,153,225,151,230,885,887,223,888,159,161,125,156,351] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1695,1696,1705,3982,3981,1713,1740,3963,3964,3973,4008,1714] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3025,3026,3037,3009,3044,3145,2135,2133,2134,2140,2148] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1723,3597,937,1722,1103,955,3595,3596,940,932,933,3602,3599,3680,3642,3645] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3662,3962,3963,3964,1714,3696,3695,3697,3929,3933,3931,1713] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        