
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
        
        load "data/6BBV.pdb", protein
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
 
        load "data/6BBV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [128,129,135,136,139,144,145,146,1292,151,154,156,398,400,1420,1427,424,425,426,427,387,390,1421,1422,1164,1269,1282,1125,1126,1283,1290,1291,1296,1307,1284,1308,1154,1155,1454,1455,1456,1116,1404,1438,1419,160,158,340,161,163,124,126,125,123,323,322,466,434,423,428,429,432,422,1268,174] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [768,771,1180,1181,1268,1261,172,174,124,126,125,116,117,123,734,736,738,722,740,743,120,307,717,718,173,118,121,573,751,767,1150,776,775,1152,1153,1164,1266,129,803] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1487,1488,1772,1775,1776,1454,1451,1789,1443,1694,1735,1139,1151,1154,1155,792,793,1740] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1590,1617,2255,2246,2248,2252,2243,1589,1591,1365,1023,2259,2263,1592,1585,1361,1021,1049,1050,1019,1013,1048,1593,2238] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        