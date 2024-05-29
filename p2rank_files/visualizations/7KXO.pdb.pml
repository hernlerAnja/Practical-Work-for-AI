
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
        
        load "data/7KXO.pdb", protein
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
 
        load "data/7KXO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1156,166,271,631,1084,1157,1085,113,114,1158,1162,1164,1165,1185,148,285,286,288,146,284,657,676,116,117,119,121,122,110,126,127,130,134,143,165,167,109,111,115,157,510,632,658,654,1056,1057,1058,1060,1071,683,1069,1161,1031,1070,1034,1268,1189,1190,1224,1059,137,1264,1266,1309] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1017,1019,1022,1450,1451,1452,1453,1454,1434,1325,1028,1035,1355,1331,1193,1194,1192,1267,1268,1332,1323,1273,1275,1276,1480,1481,1354,1370,1377] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1660,1665,1669,1622,1623,1624,1668,1654,1649,1648,1650,1841,1844,1566,1603,1599,1602,1847,1816,1563,1820,1832,1817,1824,1826,1827,1825,1854,1855,1856,1801,1810,1689] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1169,1174,1175,1176,527,528,632,525,437,508,510,1158,1159,1164,1186,1187,616,1188,631,1157] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [535,537,214,245,246,248,250,539,265,534,536,538,533,206,207,209,211,212,213,532,20,22,255,244] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [864,1121,830,831,832,833,829,828,717,719,866,797,795,771,774,776,1111,1112,1118,1119,673] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1059,1363,700,137,1264,1266,1310,1311,1309,1318,1308,1307,1057,1060,1061,1071,1330,1070,1034] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        