
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
        
        load "data/5V5Y.pdb", protein
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
 
        load "data/5V5Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2229,2230,210,211,214,309,310,528,271,272,274,276,227,1322,559,561,850,1285,267,270,603,604,613,1320,527,557,526,1282,1350,1352,213,1365,1368,2225,2227,2228,1332,1056,1319,1354,2179,2181,2193,2435,2437,2430,2431,2436,781,790,793,734,2115,2116,2148,782,2475,2477,780,2635,779,732,735,738,1451,1450,1397,1398] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1646,1648,1517,1457,1500,1501,1459,1709,1713,1706,1710,2247,2372,1777,1708,1460,1768,2246,2276,2278,2333,2334,2335] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [3145,3146,3147,3206,1533,3183,3210,3209,1437,1472,2166,2167,2176,2168,2719,2721,2695,2693,2180,1435,1438,2181,2146,3219] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [3964,3954,3957,3958,3974,3978,2944,1992,2945,2946,2947,1988,1990,1987,2962,1923,1925,1986,2001] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        