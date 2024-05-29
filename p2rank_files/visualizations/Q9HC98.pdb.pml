
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
        
        load "data/Q9HC98.pdb", protein
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
 
        load "data/Q9HC98.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1512,1384,1385,1386,1372,1382,1536,1537,1538,1565,1567,1569,1539,1564,1566,1573,426,1571,1513,1514,1515,404,405,408,431,433,417,420,424,568,567,1402,1403,1731,1646,1650,1698,1423] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [983,1439,1440,1441,1508,966,977,979,1008,1415,1423,1509,1511,1513,1514,1515,550,446,448,449,563,566,568,960,385,388,390,384] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1403,1731,1728,1646,1698,1632,1597,1600,1725,1757,1635,1652,1639,1661,1694,1697,1384,1385,1386,1372,1382,1537,1538,1540,1539,1576,1578,1577,1541,1777,1779,1371] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1906,1688,1690,1935,1943,1974,1055,1056,1930,1407,1409,1410,1398,1414,1020,1022,1046,1653,1656,1657,1659,1674,1676,1401] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [285,288,298,863,488,510,512,532,545,530,854,851,855,852,859,952] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        