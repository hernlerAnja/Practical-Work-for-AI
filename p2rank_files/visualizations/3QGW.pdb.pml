
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
        
        load "data/3QGW.pdb", protein
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
 
        load "data/3QGW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1108,608,252,617,607,150,148,149,638,1033,1034,634,631,633,94,95,96,97,671,1014,1005,1019,93,416,417,265,266,267,268,595,609,611,612,613,384,284,1110,1113,1115,269,320,388,126,128,665,637,661,662,489,1015,1016,1109,1107,1128] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2107,2226,2106,2208,2225,2568,2218,2222,2051,2052,2053,2054,2050,2056,2059,2061,2062,2091,2092,2082,2080,2089,2090,2586,2588,2590,2594,2618,2989,2988,2209,2574,3063,2446,2565,2566,2567,2569,2570,2960,2974,3071,2619,2622,2646,2648,2626,2627,3069,3070] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [43,45,62,64,534,535,587,42,25,28,573,536,563,564,565,566,544,562,549,20,552,569,567,574,570] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2000,2003,2019,2492,1977,1982,1985,2233,2020,2021,2544,2529,2527,2523,2491,2509,1999] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2226,2225,2224,2341,2342,2304,2082,2085,2080,2081,2089,2090,2315,2317,2310,3067,3070,3066,2345] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [785,783,784,817,1691,1410,1662,1666,1667,1652,1953,1954,1932,1939,1940,1935,1938] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        