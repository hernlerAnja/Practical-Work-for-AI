
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
        
        load "data/4L3J.pdb", protein
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
 
        load "data/4L3J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1030,1038,1051,1052,1053,1054,1055,1214,1424,1312,1317,1318,1325,1326,1330,1396,1328,1472,1469,1471,1443,1446,1447,1210,1064,1082,1105,1245,1246,1062,1256,1349,1350,1356,1209,1206,1212,1213,419,420,421,422,1233,443,389,391,392,1314,1315,1319,1322,1228,1229,1234,1235,1238,1239,1225] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1201,1121,1122,1202,103,105,718,106,711,564,693,715,719,720,721,1199,1200,1209,1246,1244,745,1093,1248,102,157,158,159,295,296,297,298,313,281,692,108,111,113,114,143,1229,1241] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1357,1359,1386,1387,1375,762,797,760,1095,1078,1083,1088,1089,1090,1096,1097,822,1625,1636,1637,1598,1627,1630,1597,786,789] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1323,1324,400,1311,1304,1293,1295,1298,1300,1296,375,378,1277,1279,1276,138,136,340] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        