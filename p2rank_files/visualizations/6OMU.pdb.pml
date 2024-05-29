
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
        
        load "data/6OMU.pdb", protein
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
 
        load "data/6OMU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1250,333,334,335,1251,173,174,175,177,1271,1273,1274,186,557,1148,1244,1245,1246,555,1243,1260,1262,485,1146,1134,1144,1154,759,157,164,751,761,786,748,1169,1170,1171,729,730,726,747,158,160,212,213,214,165,331,689,318,703,708,704,688,161] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1109,1110,1112,1276,1279,1280,1416,1417,1418,1278,1347,1348,1351,1353,1395,1135,1136,1137,1138,1139,1154,1156,193,194,195,1310,1275,1308,180,181,182,1309,335,1251,177,1247] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1914,1917,1919,1920,1921,1941,1945,1946,1947,1948,1949,1950,1660,1696,1697,1716,1717,1759,1762,1935,1938,1657,1910,1749,1895,1904,1911,1782,1783,1784,1856,1857,1742,1743,1754] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [797,944,942,1207,906,875,907,1197,1204,1205,795,849,911,908,852,854,1198] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [259,261,291,293,295,297,260,584,586,582,312,583,256,67,69,580,581,257,258] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1135,1137,1139,778,815,1449,1432,1721,1727,1729,1433,1731,1733,1448,1670,1719] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1186,1200,1214,711,713,1230,527,1183,1193,717,710] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        