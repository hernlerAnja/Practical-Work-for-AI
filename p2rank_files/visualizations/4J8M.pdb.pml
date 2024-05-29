
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
        
        load "data/4J8M.pdb", protein
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
 
        load "data/4J8M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2490,2496,2513,2515,2503,2345,2344,245,246,248,249,1497,1495,2497,2508,2528,2529,2530,2531,2501,2502,2607,631,632,244,262,364,365,366,2619,2570,2573,2574,1554,1513,2514,2517,1027,1028,2516,2518,1461,1179,599,1423,894,959,962,2563,975,1477,2631,2293,2294,1560,1565,1566,1616,1618] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1598,2657,2701,2702,2703,2704,3236,3301,1657,1677,1674,3382,2800,3306,3309,3332,3333,3383,2714] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2261,2262,2592,2593,2594,2595,2632,2630,2293,2295,2298,2205,2206,2500,2607,2207,2603,2312,2765,2203,2223,2766,2547,2745,2653,2764] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2774,2778,2781,2753,2754,2726,2729,2746,2747,3486,3428,3429,3432,3435,2713,2714,2715,2727,3504,3505,2798,2799,2800] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [895,1385,1386,1269,1271,1310,1312,756,847,840,842,914,907,976,908,911,912] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        