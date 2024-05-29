
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
        
        load "data/6Q4D.pdb", protein
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
 
        load "data/6Q4D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [86,105,102,139,140,141,88,91,112,116,103,114,124,1244,1261,94,95,89,90,92,258,259,1120,1128,242,87,593,1048,1049,628,1020,644,641,637,669,670,620,621,613,607,609,1008,984,1009,106,110,1268,1273,1260,964,1033,1021,1022,1025,1030] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [33,35,499,517,557,558,559,560,30,167,248,249,250,24,50,51,52,561,562,148,146,147,556,246,266,500,22,23] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1405,1406,1409,1389,1393,1385,1854,1856,1351,1352,1805,1808,1431,2179,2185,2186,2187,1430,1814,1819,1426] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [874,897,903,2228,895,896,2229,2235,2239,1440,899,1439,2225,2230,1436,1437,1438,1443,2208,2219,2224] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1795,1743,1966,1794,1793,2202,2173,2155,2161,2165,2146,2157,2159,2168,1744,1746,2160,1967,2121] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [476,482,483,577,578,36,186,485,209,473,474,236,219,220] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        