
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
        
        load "data/5OUL.pdb", protein
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
 
        load "data/5OUL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1429,1430,1434,1435,1436,1428,433,434,435,553,554,555,402,406,409,419,393,389,390,375,376,377,378,379,537,538,761,763,898,899,1427,539,903,923,925,1300,1312,1271,1272,1287,1288,1302,1433,1299,1328,1425,1326,1327,1437,654,655,1443,1452,1453,1455,1454,1460,1462,410,411,412,407,408,596,599,598,614,1461,940,938,370,372,369,922,455,918] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [963,965,1000,995,990,993,1028,1026,1336,1329,941,1333,958,961,994,1867,1002,1865,1855,1066,1070,1869,1831,1293,1827,1143,1871,1294,1099,1068,1112,1290,1292,1317,1318] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1742,47,48,1756,1757,1760,2617,1783,2665,2648,2659,2670,65,2671,2668,2680,2669,75,1206,1180,1751,1748] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1937,1938,2411,2047,2072,2071,2083,1931,2048,2050,1910,1911] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [823,545,336,337,338,806,314,289,288,313] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        