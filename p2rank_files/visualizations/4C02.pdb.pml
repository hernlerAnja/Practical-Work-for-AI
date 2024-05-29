
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
        
        load "data/4C02.pdb", protein
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
 
        load "data/4C02.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [830,831,834,1258,247,867,806,246,248,250,816,249,1241,838,839,1229,1230,1232,779,300,301,302,797,799,393,643,784,807,1257,803,1330,1331,1329,1337,407,409,1335,1336,515,251,252,276,279,278,280,281,405] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [469,470,1357,1475,453,452,275,276,271,278,280,427,1331,1334,409,1335,1336,1332,1241,1229,1230,1232,514,1199,1242,1202,1356,1481,1219,1488,1482,1333,1346,1347,1348,1350,1354,1355] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [646,647,651,49,47,48,664,666,787,46,372,17,21,22,25,644,645,585,601,603,604,631,80,591,594,595,596,597,648,782,786,788,789,612,1274,790,598] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1217,1219,1518,1505,1489,1506,1507,1935,1936,854,856,1804,1234,1231,1232,1233,1225,2006,2010,2024] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [39,40,41,137,138,2873,1,2,165,2889,2895,2887,196,197,2894,2877,2882,2898,2899,2897,2892,2896,359,349,360,4] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1072,1677,1678,1075,1674,2429,1684,1710,2423,2426,2428,2427,1650,1686,1687,1073,2438,1086,1080] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [108,110,3219,3162,3164,130] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        