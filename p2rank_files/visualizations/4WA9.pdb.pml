
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
        
        load "data/4WA9.pdb", protein
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
 
        load "data/4WA9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [161,164,165,166,168,137,190,191,163,661,1189,1190,1198,314,662,541,542,1114,1115,683,1194,467,468,139,140,159,167,169,170,686,701,710,711,714,694,138,680,682,300,1100,1202,1205,721,745] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3096,3190,3191,3116,2570,2662,2663,3115,2569,2493,2667,3087,2715,2722,2746,2363,2335,2330,2331,2681,2683,3195,2684,2688,2687,2701,2702,2711,2712,2695,2507,2508,2359,2361,2383,2384,2328,3101,2357,2358,2360,3199,3202,3203,3204,3206,2505,2648] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [869,1851,1604,1889,1568,2104,1888,1600,865,866,867,871,1598,845,847,848,876,878,1863,1864] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2866,2867,2868,3604,2870,3607,3610,3609,3894,3895,3574,3870,3857,2846,2849,2848,2877,2879,3869] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2504,2638,2639,2612,2248,2251,2254,2255,2277,2278,2656,2499,2503,2641,2294,2295,2235] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [527,528,889,910,938,887,885,911,912,916,3253,3254,3236,2115,2114] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1361,1657,1658,1659,1520,1523,1954,1956,1957,1958,1959,1552] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        