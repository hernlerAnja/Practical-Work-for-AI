
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
        
        load "data/6DI0.pdb", protein
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
 
        load "data/6DI0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1281,1283,1205,1204,1206,569,1285,1301,1291,1292,1286,1320,485,1303,1322,736,735,753,754,709,714,318,726,732,743,710,333,694,695,586,1186,212,213,214,757,765,158,160,161,335,331,332,185,195,190,193,168,169,174,175,177,200,197,181,186,166,164,165,157,163,339,1169,1191,767,797] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1974,1976,1912,1804,1838,1911,1835,1837,1839,1822,1836,1834,1966,1969,1980,1981,1972,1973,1975,1950,1959,1797,1798,1709,1771,1772,1809,1814,1815,1817,1965,1706,1751,1990] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1142,1144,1325,1328,1396,1467,1400,1402,1175,1177,1191,1192,185,195,1359,181,184,1324,1141,1292,1288,1289,1322] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [921,925,863,866,868,809,811,958,889,1242,1232,1233,1239,1240] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [256,258,259,312,67,69,261,260,291,292,293,295,296,297,600,597,599,598,594,595,596,593] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1171,1175,1177,1179,1497,1444,1453,1402,784,1719,829,1498,1481,1774,1776,1482,1853,1854,1784,1788,1782] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1328,1396,1458,1466,1467,1327,1408,1129,1130,1329,1132,1133,1335,1588,1584,1585,1587,1589] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [719,723,1228,716,717,1218,1221,1249,537,538,540,1235,1265] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        