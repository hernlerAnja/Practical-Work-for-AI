
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
        
        load "data/4NKS.pdb", protein
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
 
        load "data/4NKS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3161,3162,3243,2283,2405,2245,2241,2242,2247,2775,2792,3132,2793,2794,2796,3235,3236,3253,2528,3241,3242,2633,2754,2749,2750,2734,2404,2244,2768,2389,2282,2401,2403,2560,3254,2561] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1712,1716,1717,1718,1719,1691,3635,3662,3645,3660,3663,3615,1723,3790,3797,3798,3799,3800,3801,3651,3653,3773,3575,3576,3578,3791,3805,3809,3812,1532,1709,1492,1495,1552,1579,1580,1562,1563,1568,1730] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [622,398,431,280,283,284,505,506,504,430,623,159,161,177,157,163,176,178,627,634,645,648,649,267,268,276,605,1051,1052,1129,1023,1130,1136,164,165,166,158,1053,666] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1704,1686,1699,1437,1571,1572,1660,1467,1434,1272,1295,1711,1694] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3355,3654,3791,3793,3550,3354,3655,3786,3928,3768,3925,3927,3520,3746,3930,3926,3517,3378] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2259,2264,2265,2405,2256,2266,2268,2261,2263,2474,2473,3265,3266,2497,2527,2499,2502,2404,2504,2494,2498,2471,2403,2421,2472] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        