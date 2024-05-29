
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
        
        load "data/4EBW.pdb", protein
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
 
        load "data/4EBW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1061,1062,1199,1201,978,1002,1202,1000,567,1003,1065,1105,1108,1066,1109,1110,1111,1112,1447,1448,1089,1449,1259,1505,1509,1451,1452,1476,1477,1478,1507,1129,1458,1515,1508,1284,1285,1286,1287,1288,1290,1291,1415,1418,1417,1951,1952,1419,1420,1421,974,1004,1106,1107,1115,1206,1116,1117,1198,1203,1204,1118,1097,1207,1211,1212,1213,1205,572,1103,1121,1123,1127,758,759,762,754,757,792,765,766,1562,1563,1057,1063,1067,1078,523,1047,1049,1045,521,519,1042,459,463,466,1214,461,484,486,487,491,494,488,492,518,485,1084,1082] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.702,0.278,0.533]
select surf_pocket2, protein and id [1440,1581,1697,1855,1856,1857,1858,1859,1709,1704,1714,1720,1579,1719] 
set surface_color,  pcol2, surf_pocket2 
   
        
        deselect
        
        orient
        