
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
        
        load "data/6X3P.pdb", protein
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
 
        load "data/6X3P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [661,666,283,662,539,540,636,637,638,393,395,423,426,688,680,687,177,178,179,125,123,126,298,299,300,296,316,129,130,133,134,138,139,121,122,1115,709,713,737,146,1193,1194,1195,352,142,706,705,1114,1186,1187,1188,1189,1205,1199,1217,1218,1113,1086,1095,1096,1097,714,1100] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1847,1848,1850,1851,1849,1679,1684,1840,1825,1786,1787,1699,1703,1704,1705,1719,1715,1716,1720,1593,1841,1844,1865,1855,1856,1834,1680,1690,1695,1696,1652,1653,1654,1698,1678,1596] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [730,1089,1297,1339,1342,150,1090,1091,147,146,1735,1393,1348,1606,1392,1669,767,1677,1376,1377,1734,1657] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [827,801,804,863,860,896,1151,749,1149,1150,747,1142,806,859] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [277,545,34,544,223,224,225,226,267,256,257,258,260,262,550,548,547,549,551,546] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1361,1353,1355,1303,1049,1479,1481,1482,1483,1484,1400,1052,1053,1224,1230,1223,1291] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [149,1194,1195,1215,352,1217,637,155,316,298,299,300] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [668,675,1127,498,669,671,1174,1130,1137,1144,499] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        