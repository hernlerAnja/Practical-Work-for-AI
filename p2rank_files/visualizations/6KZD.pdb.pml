
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
        
        load "data/6KZD.pdb", protein
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
 
        load "data/6KZD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [336,704,193,194,195,699,697,698,700,350,352,472,501,722,725,726,718,151,152,1245,159,163,1239,162,155,157,147,153,154,148,149,1115,1228,1230,753,757,760,1226,1227,1216,1217,1222,1225,1224,1143,1144,1229,1231,750,751,1213,578,749,1244,1235,1238,502] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2167,2218,2223,2227,2165,2166,2168,2169,2211,2210,2212,975,2131,2132,2133,925,927,946,947,2207,2214,549,561,562,563,542,543,544,1183,953,955,928,1164,1168,2228,2230,2231,2232,2233,2229] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1070,1072,1211,1213,578,494,1053,1054,1055,1210,1220,1066,1216,1217,502,570,524,571,470,472,469,500,501,465,468] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1305,1303,1304,775,812,813,1118,1244,1235,1314,1291,1297,1276,1286,1289,1115,1228,1116,759,773,774,776,758,760,1225,782,1245,1248,1676,1690] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1713,1844,1850,1855,1565,2002,2003,1595,1710,1562,1809,1856] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [342,113,115,114,357,66,96,97,99,67,672,674,657,206,658] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [621,625,26,477,633,665,666,638,445,447,455,458,20,24,4] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [49,63,67,68,69,55,70,628,629,45,635,61,62] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        