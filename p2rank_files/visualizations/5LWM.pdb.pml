
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
        
        load "data/5LWM.pdb", protein
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
 
        load "data/5LWM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [185,1228,1229,1230,324,325,326,1227,1223,1224,1231,463,464,1222,708,709,343,135,137,139,140,146,147,169,170,171,172,173,174,183,131,184,1146,1147,132,734,731,134,127,128,129,133,310,1116,1119,1131,760,761,788,756,753,1251,1252,1253,1245,1094,1243,421,391,426,425,393,389,392,156,1401,150,154,158,162,165,1418,1419,424] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1423,1456,1950,1951,1602,2131,2132,1603,1605,1994,1977,1984,1985,1820,2135,1819,1918,1917,1431,1999,2000,1432,1434,1759,1635,2133,2134,1787,2001,1783,1784,1429] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [777,778,1671,1719,1720,1718,1734,1754,1755,1716,1120,1121,1417,1449,1450,1451,1446,1448,1762,1763,1767,1768] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1551,1569,2203,1027,1552,1553,1554,1555,990,2205,2209,2212,2214,996,2216,2221,998,1024,1025,1026] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        