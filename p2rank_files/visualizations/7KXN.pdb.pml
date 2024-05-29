
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
        
        load "data/7KXN.pdb", protein
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
 
        load "data/7KXN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1218,680,1145,703,707,1146,314,315,1219,1223,1224,1225,1226,1220,1222,1246,1248,1250,298,706,725,547,549,1235,681,1237,564,477,685,148,149,153,154,732,157,161,175,1285,173,728,144,146,192,193,194,143,313,138,140,141,136,137,142,1126,1117,1118,1119,1120,1130,1131,1132,1121,1092,1095,1370,1251,1325,1327,1329] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1712,1880,1627,1686,1917,1919,1920,1713,1714,1724,1688,1690,1718,1729,1733,1732,1884,1624,1664,1905,1908,1916,1918,1874,1753,1754,1889,1891,1865,1881,1887,1890,1663] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1080,1255,1254,1328,1329,1322,1253,1332,1336,1337,1512,1514,1392,1515,1513,1382,1384,1334,1393,1081,1083] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [820,846,888,884,921,823,1180,1181,1182,1173,768,825] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [292,572,573,575,577,37,574,576,578,236,238,239,240,241,35,571,282,271,272,273,275,276,277] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [90,91,92,93,94,95,323,657,658,656,638,639,49,50,51,73] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        