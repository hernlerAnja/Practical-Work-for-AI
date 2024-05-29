
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
        
        load "data/5NK2.pdb", protein
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
 
        load "data/5NK2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [339,451,1258,1261,1293,1294,1295,1296,1260,202,411,201,353,414,336,337,338,227,228,325,331,335,322,343,445,446,449,441,413,704,688,211,177,226,172,173,175,183,186,189,204,212,200,209,210,198,1113,1291,1292,1127,755,759,1144,722,729,752,730,171,1216,1217,1221,1224,1218,1222,1223,1262,1268,474,476,1215,1143,703,500,501,574,726,206,1290,418,444,415] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1183,1188,558,559,973,952,953,549,551,1177,1169,912,913,914,911,936,944,946,1187] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1511,1512,1516,1506,1507,1509,1513,1514,1515,1508,1019,1026,2099,2102,1519,2104,2105,2106,2058,2059,2061,2107,2111,2118,1018] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1881,1890,2299,2301,1873,1896,1901,1903,1641,1643,1666,1668,1710,1610] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1157,1159,1173,550,1203,548,1156,1165,717,712,584,742] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1443,1445,1446,1409,1418,1419,1457,1376,1778,1781,1784,1785,1807,1783,1806,1810,1552,1808,1422,1423,1812,1818,1822] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        