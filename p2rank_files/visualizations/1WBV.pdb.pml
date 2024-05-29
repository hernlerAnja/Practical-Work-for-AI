
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
        
        load "data/1WBV.pdb", protein
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
 
        load "data/1WBV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1334,1335,1256,863,866,869,847,1337,1340,1350,1352,1333,1353,1316,1318,665,841,842,843,848,661,664,1319,554,588,589,667,862,860,381,1348,1351,395,396,397,826,832,287,237,239,242,1366,288,393,873] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [541,547,550,579,581,551,554,552,666,588,1341,1184,1331,1330,1324,1337,1340,1342,1343,1344,553,1359,1172,1131,1130,1167,615,658,1195,1180,1327] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [704,714,695,707,45,162,179,181,339,161,26,27,693,694,2761,699,683,2802,2786,2782] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [612,669,1320,624,2808,2809,2821,2834,2814,852,853,687,672,675,628,636,637,641,623,621,618,619,626,622] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1205,1221,1222,1357,1242,1347,1349,1356,1243,1425,1360,1368,1372,1348,1474,1235] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1086,1052,1087,1088,2516,2520,2517,1024,2474,2476,2471,651,652,1060,1026,1062,1303,643] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1637,1136,1142,1143,1146,1106,1108,1644,2373,2376,2377,2378,2379,2384,2388,1138,2383,1104] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1497,1499,1778,901,902,932,1734,1468,1234,900,1230,1509,1511] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [949,966,997,998,999,918,1267,1290,1293,1294,1275,1273] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1316,1317,1318,1268,1256,863,847,857,865,1319,848,853,849,851,842] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2184,2185,1757,2194,2182,1918,1909,1786,1725,1755,1756,1776,1781,1765,1724,1783] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        