
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
        
        load "data/5BQ0.pdb", protein
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
 
        load "data/5BQ0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1153,1154,1227,1234,1235,1155,171,172,176,177,180,185,188,196,198,1258,708,725,726,729,734,681,321,216,334,336,337,338,359,666,667,215,217,193,707,715,698,704,161,163,164,160,1126,1140] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1226,1228,1234,1229,1258,682,338,666,667,431,556,1244,558,1246,486,573,575] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1839,1841,1842,1843,1778,1779,1717,1718,1826,1833,1848,1817,1832,1594,1836,1597,1676,1677,1678,1688,1697,1693,1694,1847,1856,1857,1653,1654,1696,1682] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [585,264,73,75,262,257,259,263,581,584,582,583,315,256,294,295,296,586,587,305] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [859,833,891,887,924,922,912,886,836,913,1191,1182,1189,770,772,838] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1089,1263,1264,1348,1474,1476,1477,1108,1378,1098,1099,1102,1354,1355,1346,1324,1539,1511,1504,1105,1087,1090,1091,1092,1088,1097,1377,1389,1393,1400,1501,1502,1503] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1089,1264,1473,1475,1476,1477,1346,1344,1323,1324,1090,1091,1092,1456,1457] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1129,1386,753,1667,1385,1607,1131,790,1657,1661,1663] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        