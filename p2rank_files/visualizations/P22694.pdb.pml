
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
        
        load "data/P22694.pdb", protein
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
 
        load "data/P22694.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1401,1428,1510,1511,1515,1519,1429,1032,1033,1400,1034,394,448,558,391,392,397,446,449,2679,2681,426,427,574,575,576,1517,1518,982,433,592,1413,1372,1532,1543,1004,398,400,408,402,404,407,2709,1402,411,416,417,425,431,428,429,430,1389,1544,1545,676,674] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [108,2482,2486,2487,2488,73,75,86,74,79,130,132,133,107,2505,2507,2508,2509,2510,135,2511,2513,1243,1270,1246,1271,1273,2386,2388,2387,2383,2470,2473,2363,2394,1274,1277,145,810,811] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1670,1052,1404,1405,1665,1667,1678,1680,1668,1669,1088,1891,1892,1932,1933,1653,1955,1396] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        