
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
        
        load "data/Q9NR20.pdb", protein
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
 
        load "data/Q9NR20.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1928,2036,2032,2037,2040,2038,2042,2044,2035,1353,1903,1904,946,1061,1062,1058,1506,919,2043,923,1354,1524,943,945,1045,1501,1502,1503,1504,1505,1511,894,895,896,897,898,899,930,932,889,940,901,906,907,888,890,892,928,929,927,1550,1915,1547,1916,1943,1544,1528,1535,1942,1527,1529,1530] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [467,469,1404,486,482,1416,808,809,473,472,460,1406,1407,828,832,1387,1388,1389,999] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1567,1569,1571,1919,2206,2208,2221,1910,1911,1918,1920,2420,2470,2471] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [923,925,926,915,2065,2157,1885,1886,1887,1904,1878,2167,2173,2175,2177,2187,2166,2044,2182,2183] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        