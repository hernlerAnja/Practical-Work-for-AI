
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
        
        load "data/3LQ8.pdb", protein
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
 
        load "data/3LQ8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1279,1280,1281,1282,1267,1275,1155,1154,1264,1181,1263,656,745,1260,744,751,580,581,549,548,582,1326,1183,795,798,803,804,805,832,772,767,770,820,1317,1323,1324,1325,1316,1318,303,1298,441,443,302,439,747,427,731,550,553,555,556,1311,242,239,245,246,247,1315,243,761,763,831,765] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1271,1110,1107,1121,1267,1261,1264,1111,1113,1112,1268,609,580,581,549,573,574,1096,547,607,652,582,1263,653,656,1255,1260,550,551,1109] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1271,1116,1125,1107,1118,1121,1122,1276,1308,1270,1283,1284,1285,1286,1129,1269,1304,1305,1307,1132,1364,1366,1367,1117,1362,1383,1384,554,1294,1287] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2103,2110,2092,2090,1543,1544,1545,1059,1060,1061,1062,1063,1029,2096,1033,1031,1536,1534] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [971,973,1224,1222,1223,1225,843,895,896,1227,1228,940,942,941] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1715,1575,1578,2013,2011] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        