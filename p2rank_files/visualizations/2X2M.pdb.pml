
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
        
        load "data/2X2M.pdb", protein
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
 
        load "data/2X2M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [228,239,231,236,222,255,1400,215,216,217,218,221,219,254,220,402,404,510,533,235,503,1269,1270,498,500,499,1260,1261,809,810,1139,1241,1242,1243,1247,802,803,805,388,757,775,778,1168,1169,1170,779,534,753,641,642,1154,1116,1248,238,505,504] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3327,2556,2808,2924,2942,3326,3325,2920,2394,2396,2945,2968,2969,2972,2938,2936,2397,3296,3406,3399,3407,2809,2976,2392,2398,2399,2393,2421,2422,2423,2404,2400,2401,2572,2569,2570] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2641,2671,3428,3429,2639,2666,2668,3420,3423,3560,3403,3273,3419,2404,2597,2408,2571,2572,2667,2672,2673,2676,2678,2594,2596,2589,2576,2588,3311,3406,3404,3405,3407,2701] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3445,2661,3508,3524,1382,3525,1383,3523,3561,3546,2635,2671,3430,2670,2659,1384,1387,1388,3264] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1353,1369,1370,1368,502,1271,1286,1107,491,493,3541,467,1404,1405,3546] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3755,4159,4161,4015,3886,3888] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        