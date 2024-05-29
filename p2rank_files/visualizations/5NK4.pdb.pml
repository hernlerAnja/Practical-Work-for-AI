
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
        
        load "data/5NK4.pdb", protein
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
 
        load "data/5NK4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [306,205,206,300,304,291,672,677,691,307,308,1239,1273,1268,1270,443,444,445,658,469,673,657,1274,1082,1091,1096,1192,1193,1194,1195,1198,1199,1200,542,1120,1121,699,544,700,698,695,1201,1281,1278,1279,155,153,149,150,1269,724,728,721] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [307,308,1238,1273,1270,1271,1272,178,188,322,180,183,383,206,312,414,415,1237,410,1235,418,380,382,420,1264,185,384,387,413,164,190,187,189] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [921,907,911,913,915,528,922,1164,1165,527,518,520,880,881,882,883,1146,1154,1160,909,2204] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1515,1516,1517,1518,1510,1511,1513,1519,1520,1523,1512,2055,988,987,995,2110,2107,2103,2114,2095,2098,2100,2101,2102] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [681,1134,1136,1150,1180,710,711,1142,1133,686,701,517,553,519] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1377,1782,1810,1811,1410,1419,1556,1447,1420,1423,1424,1444,1446,1453,1789,1785,1787,1788,1814,1815,1818,1821,1812] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1614,1647,1877,1886,2295,1642,1892,1896,1897,1714,2321,1898,1899,1669,1670,1671,1672,1644,1645] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        