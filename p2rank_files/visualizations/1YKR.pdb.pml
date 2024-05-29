
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
        
        load "data/1YKR.pdb", protein
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
 
        load "data/1YKR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [141,1153,1157,1158,1159,140,1064,1152,502,634,644,635,636,102,259,257,637,1156,1160,111,120,122,105,109,110,1052,1059,692,1080,1081,1054,695,1053,681,688,679,680,242,87,82,83,84,85,86,664,661,671,672,1005,1021,1024,1040,1065,1041,1184,1185,1188,1226,1056,101,103,1295,104,1292,1258,92,89,1305,1300] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1464,1465,1468,2178,1462,2236,2237,2235,2222,1455,1456,1463,1489,2224,2213,2219,2202,925,948,950,947,2228] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1838,1860,1864,1865,1856,1873,2187,2188,2189,1822,1831,1836,1837,1380,1417,1866,1430,1440,1443,1451,1455,1456,2180,2181,2179,1383] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [2152,1970,1760,1968,1969,2154,2162,1810,2150,2196,1811,1812,1813,2140,2155,1998,2000,1761,2146,2149,2117,2118] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        