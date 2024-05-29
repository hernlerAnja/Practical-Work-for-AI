
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
        
        load "data/5VC6.pdb", protein
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
 
        load "data/5VC6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [561,2389,2395,2399,560,1056,1321,273,275,276,559,913,850,1054,1320,1322,1332,214,309,528,212,308,310,233,1365,1368,1398,209,210,226,227,211,1352,1354,1370,2179,1408,1409,2225,2227,2229,1449,1451,2228,2230,1450,2193,2402,2412] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [792,2427,790,780,781,782,732,734,735,737,779,659,793,2193,2401,2402,2115,2116,2441,2442,2181,2147,2148,849,603,604,1247,1248,1249,1250,269,660,1284,1286,862,863,271,267,270,272,559,273,561,560,1246,1181,1147,1153,1154,1155,1156,2629] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1459,1517,1713,1646,1644,1709,1710,1518,1648,1620,2276,2246,2299,2300,2247,1460,1393,2335,2337] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1437,1473,2167,3111,3112,1470,3148,3171,3174,3175,3110,1472,1531,2180,2181,2684,2166,2168,2686,2658,2660,1438,3184,3187] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3944,1988,1990,2511,2910,2911,1987,3946,3929,3933,3922,3923,2874,2876,2925,2927,2928,1923,1986,2002] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1780,1643,1646,1644,1709,1645,1647,1648] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        