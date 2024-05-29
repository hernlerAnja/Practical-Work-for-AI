
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
        
        load "data/6SFI.pdb", protein
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
 
        load "data/6SFI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1350,1351,1357,675,1371,1373,1375,877,1276,1353,1356,1344,676,591,593,668,587,580,581,586,618,620,1374,267,268,269,266,876,872,885,874,875,882,884,1361,1388,1389,1360,1379,582,584,1392,585,835,852,853,397,393,385,384,558,399,400,401,551,555,553,262,290,289,237,239,857,870,238,1196,1199,1347,1141,1193,1182,1140,893,889,886,1195,1364,1393,1187] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1525,1544,1548,1941,1532,1526,1527,2296,2301,2308,2309,1547,1919,2294,1942,1944,1952] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [861,863,1340,633,632,616,622,630,625,626,678,679,862,697,685,2774,2775,682,641] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [714,704,709,2752,2729,2727,724,705,717,175,158,23,41,157,22,11,730,727] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1589,2339,2342,2343,2344,2345,2350,2354,1578,1146,1148,1581,2349,1144,1152,1153,1116,1118,1156] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1070,2440,1060,1062,2437,1097,1071,1034,1036,1320,2486,1098,1072,2435] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [858,859,861,863,1339,1340,878,879,867,1288,1322,1291,860,862,1319,1318] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1035,1314,1033,1004,1005,1007,1009,1006,1008,1304,1313,1295,1001] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        