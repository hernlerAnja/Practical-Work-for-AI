
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
        
        load "data/Q9BWU1.pdb", protein
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
 
        load "data/Q9BWU1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1418,257,1419,256,286,428,430,431,432,433,1414,1416,1413,283,285,415,261,263,258,532,639,791,244,230,232,234,243,269,229,225,227,1293,1285,846,1308,1309,2925,2928,815,819,877,2924,1411] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1604,1593,1636,1638,1639,1623,1625,1633,1634,1727,1671,1578,1580,1581,1565,1439,1730,1556,1606,2002,2004,2028,1640,1643,1988,1989,1991,1995,1997,2001,2007,1527,1530,1528,1255,1250,1242] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1844,861,865,898,896,935,1616,1619,1620,1280,1630,1632,1592,1594,1595,863,867,1271,1284] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1698,1709,1715,1713,1736,1694,1696,1661,1659,2185,2627,2632,2634,2641,2248,2240,2227,2229,2228,2201,2205,1701,1737] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        