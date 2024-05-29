
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
        
        load "data/1WBS.pdb", protein
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
 
        load "data/1WBS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [588,589,661,664,665,667,1318,847,848,841,842,843,851,1340,554,1333,1334,1335,1336,1256,1316,863,866,857,869,1346,860,862,870,239,287,1351,1353,1367,288,381,826,380,825,393,395,396,397,832,837] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1344,511,1337,1340,1341,1342,552,554,541,547,551,579,581,540,546,588,1324,666,1331,1343,1330,1357,397,1359,615,1167,1180,1172,1184,1327] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [669,672,675,2808,2809,2828,2834,1319,851,852,853,1320,641,612,618,626,624,621,622,623] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1205,1221,1222,1474,1357,1242,1243,1349,1356,1234,1235,1344,1360,1368,1371,1372,1347,1348,1425,1424,1391,1468] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [693,694,2786,2802,26,27,45,162,695,339,179,181,2761,704,2763,699,707,714,2782] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1086,1024,1087,1052,2474,1088,2516,2517,2520,2471,2494,651,652,1060,1026,1062,1303,643] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1468,1509,1497,1499,1778,899,900,901,902,1227,1229,932,1228,1511,1734] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1256,1316,863,1271,857,1268,1318,847,848,1319,842,851,852,853,1320,850] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2376,2377,2379,2384,2388,1644,2378,1636,1136,1142,1106,1104,1108,1138,2383] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1786,1918,2184,2185,1757,2194,2182,1909,1919,1776,1781,1783,1765,1755,1756] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        