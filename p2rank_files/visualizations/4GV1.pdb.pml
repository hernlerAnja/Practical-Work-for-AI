
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
        
        load "data/4GV1.pdb", protein
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
 
        load "data/4GV1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [136,123,1144,124,126,127,128,129,135,761,762,763,1145,117,2538,2539,1256,1255,1257,1171,1172,1265,1155,760,1143,452,400,1263,1264,1293,299,146,157,160,153,155,150,1258,1262,1275,1278,453,1277,2498,787,779,2507,2493,2503,1130,1131,1414,1114,1295,781,159,174,175,176,125,705,706,570,487,298,297,314,315,116,118,2500,2502,122,711,734,282] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2114,2117,2118,1351,1353,2077,2078,2119,2120,1558,2067,2068,1528,1529,1539,1540,1365,2076,1345,1350,1548,1550,1541,1543,1554] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2297,2320,2321,2323,2319,1051,2278,2277,982,984,1008,537,1012,1009,986,985,1007,2186,2279,2285] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1138,1662,1421,1435,1436,1446,1448,778,780,1148,1665,808,809,811,1661,812,817,806,775,1434,1716,1717,1690,1691,1692,1693,1711] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [159,167,168,169,134,158,316,321,322,324,323,303,2584,2586,2601] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [718,1241,1186,1188,1239,2343,2344,716,720,1185,1197,1194,1205,542,539] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [800,834,802,2488,791,793,824,822,2486,837,2390,2392,2388,825] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        