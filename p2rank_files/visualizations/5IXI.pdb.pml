
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
        
        load "data/5IXI.pdb", protein
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
 
        load "data/5IXI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [186,452,2699,2700,2709,312,314,316,318,319,2734,2715,2736,2748,3232,3229,2774,2737,2738,2739,287,2950,288,2749,2716,2953,2956,2957,285,183,215,217,185,2706,2991,2993,2995,2958,2990,2741,3138,3095,3139,3140,3215,3220,3223,3225,3116,3118,3115,216,188,191,3004,187,2629,2735,2805,3491,2795,2796,2584,2586,2724,2620,2623,2722,2718,320,322,2581,2621,2554,2582,2618,2552] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [918,570,571,885,424,427,363,365,402,952,953,585,1792,1799,1801,1802,579,859,1781,1783,577,1779,1785,407,955,956,405,1788,1795,1798,1786,1766,1787,610] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1177,1182,1205,1206,1180,1279,1281,1265,838,839,868,1172,1174,1208,870,896,897,898,1150,62,876,67,74,75,894,875,46,899,76,835] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [314,316,318,319,451,452,602,603,453,2526,313,209,334,346,2552,2525] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [775,295,298,2819,3481,3484,2971,2969,2970] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2770,2933,2916,2918,3258,3259,3257,3291,2769,2768,3406,3234,3236,2773] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1806,1818,1820,2484,1802,2503,402,415,424] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        