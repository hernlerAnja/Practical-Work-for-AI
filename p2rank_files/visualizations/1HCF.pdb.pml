
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
        
        load "data/1HCF.pdb", protein
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
 
        load "data/1HCF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [123,126,127,1915,1916,112,1920,101,102,1750,1931,98,129,134,139,133,135,431,140,1528,1529,1533,1526,1530,1745,1746,1933,1519,831,828,2344,1535,1536,1537,2345,1941,1943,1944,1934,1513,1514,2351,2352,2353,2346,2347,2357,2584,1951,1953,1956,1926,1928,88,2569] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [629,634,635,3159,627,625,983,998,994,2730,2738,839,840,838,972,2741,2743,618,621,610,1010,1011,3158,3393,1009,996,997,1000,1004,1006,2726,2763,2766,3150,3151,2751,2753,3152,3153,2761,636,612,614,2744,2754,613,1297,1734,1737] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1258,3417,233,3183,773,775,3418,745,757,3190,1256,671] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1679,1681,1107,1108,2377,2384,2609,1571,1651,1663,2385,390,1572,392,2607,2608,391] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1110,1112,2393,2381,2103,2105,2192,2139,2163,2144] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2943,2944,2906,3229,3230,2910,2912,2908,2909,2911,2947,2940,2950,2998,3199,235,237,3187] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2748,2749,2773,2734,948,951,947,959,3134,3117,3037,3118] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        