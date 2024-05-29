
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
        
        load "data/4OT5.pdb", protein
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
 
        load "data/4OT5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [116,117,121,122,125,282,283,129,142,140,1153,1079,1080,1160,1081,1161,662,663,684,681,112,105,106,108,109,266,641,659,655,281,160,161,162,280,636,637,621,1052,1061,1066,688,689] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1154,1155,1170,1172,1161,1182,1183,1184,432,1165,1171,430,503,282,283,636,637,516,621,520,522,523,453,429] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [122,125,282,283,129,142,140,1220,1158,1159,1181,1160,281,162,1185,1027,1030,1186,1264,1052,1053,1054,1055,1056,1066,1067,132,1260,1262,1305,1157] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1015,1447,1449,1327,1328,1319,1321,1448,1450,1191,1192,1190,1187,1188,1189,1263,1264,1257,1269,1272,1267,1270,1018,1019,1196,1373,1366,1350,1475,1476,1477] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1117,724,793,829,773,771,774,776,778,791,825,860,862,824,1114,1115,1107,1108] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1800,1661,1663,1655,1802,1648,1657,1673,1675,1677,1678,1738,1674,1676,1777,1739,1786,1637,1643,1792,1636] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1646,1790,1791,1775,1785,1780,1935,1937] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        