
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
        
        load "data/1FAP.pdb", protein
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
 
        load "data/1FAP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1259,350,1256,1258,1260,1254,1255,1849,1876,1822,1851,457,448,450,452,402,243,245,1888,1889,1848,1893,1895,1894,400,337,339,941,870,244,863,348,349,838,840,862,1925,1926,1960,1961,1963,1874,1875,1921,1924,1928,1929,1930,1927,1973,1968,1972,1170,1206,1207,1257,1882,1884,1962,1964,1965,532,530,538,534,533,535,471,541,542,551,552,801,802,584,545,550,585,587,943,1252,1253,800,798,1181] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [1372,1379,1380,1409,1677,1678,1343,1384,1385,1386,1374,1412,1414,1346,1721,1766,1767,1341,1344,1345,1916,1672,1674,1675,1676,1713,1714,1377] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1437,1440,1569,1570,1436,1435,1442,1443,1640,1639,1646,1650,1652,1653,1411,1679,1607,1608,1609,1611] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        