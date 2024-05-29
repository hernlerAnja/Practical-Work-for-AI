
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
        
        load "data/4I4F.pdb", protein
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
 
        load "data/4I4F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1063,1064,1065,1249,1248,1250,1251,1253,1472,1441,1440,935,1159,1086,1156,1158,1019,1021,1023,1046,1066,1067,1068,957,959,425,1020,1022,1018,453,1004,454,1468,1470,1471,1478,1222,1378,1069,1381,1382,1383,1914,931,1408,1409,1410,1411,1414,934,1380,1415,1418,1421,1412,1014,999,1072,1168,1161,1162,1163,1164,527,532,1155,1169,1170,1171,290,422,550,552,654,393,420,427,431,639,1077,1078,1075,711,714,1084,1525,715,716,719,722,723,749,1526] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [1171,141,145,156,158,290,422,287,288,286,150,164,154,384,393,427,431,639,1060,1167,137,138,179,1039,1041,424,425,417] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1435,1822,1236,1400,1820,1542,1544,1403,1635] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        