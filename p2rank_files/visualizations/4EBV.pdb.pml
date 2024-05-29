
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
        
        load "data/4EBV.pdb", protein
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
 
        load "data/4EBV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1141,1098,1099,1095,1096,1097,1142,1143,1144,1145,1100,1011,1078,1080,1094,590,1035,1036,1234,541,506,507,508,1082,543,545,1115,1111,1122,1317,1318,1319,1320,1321,1484,1544,1513,1512,1235,1543,1542,1540,1550,1292,1322,1324,1289,1323,1483,1482,1452,1453,1986,1454,1455,1033,1075,1090,1480,1481,1486,1490,1487,1244,1245,1130,1237,1238,1239,1240,589,594,1231,1232,488,485,483,516,1247,509,510,513,514,512,540,539,1139,1140,1148,1154,1151,1156,1160,1162,791,1597,784,785,788,1580,818,792,783,1598] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [1306,1472,1475,1614,1754,1755,1507,1892,1894,1707,1616,1329,1744] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1444,1482,1327,1330,1331,1334,1485,1456,1125,1360,1417,1419] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        