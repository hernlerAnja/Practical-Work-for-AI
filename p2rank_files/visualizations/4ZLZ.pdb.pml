
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
        
        load "data/4ZLZ.pdb", protein
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
 
        load "data/4ZLZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1224,335,212,213,214,332,733,160,736,740,157,158,161,183,185,193,166,168,169,173,174,767,175,177,182,186,190,197,156,162,163,200,188,1115,1116,1117,1118,1129,742,334,1143,1216,1217,1218,1222,1223,318,333,688,689,1144,1246,714,732,722,715,711] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1878,1879,1880,1881,1870,1855,1720,1864,1871,1753,1755,1756,1817,1816,1877,1874,1885,1886,1895,1726,1734,1695,1714,1715,1716,1731,1735,1634,1635,1637] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [778,854,856,1179,923,1180,888,925,887,948,913,914,833,835,830,889,892,1170,1177,1178,1171] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [312,580,581,583,585,69,582,584,586,579,259,261,260,302,291,292,293] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [555,1234,1235,485,572,334,1217,1218,333,688,689,1246] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1116,1118,1119,1120,1325,1368,1371,759,1422,1405,1406,1701,1386,1377,1703,1705,1770,1771,1421] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1251,1252,1320,1390,1391,1335,1332,1330,1333,1078,1079,1080,1081,1253,1082,1259,1382,1519,1516,1518,1520,1521] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        