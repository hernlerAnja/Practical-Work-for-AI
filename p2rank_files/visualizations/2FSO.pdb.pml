
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
        
        load "data/2FSO.pdb", protein
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
 
        load "data/2FSO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1347,1773,1388,1389,1390,1392,1393,1371,2147,1795,1796,1372,1671,1704,1869,1646,1840,1837,1864,1867,2121,2138,2139,2132,2134,2146,1774,1808,1747,1877,1879,1703,1386,1387,1344,1345,1414,1406,1407,1346,1429,1425] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [819,820,821,822,1242,823,2612,2618,328,657,2628,2613,2614,639,640,641,638,642,582,588,592,645,818,827,838,607,1243,611,1225,1222,839,1194,599,626,596] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1266,812,817,832,836,837,835,257,258,350,351,363,256,830,230,635,636,558,559,637,796,795,813,523,367,798,365,1260,1256,1259,1258,1261,1267] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1263,1261,1262,1090,551,1095,1101,1103,1107,1104,1105,628,1054,1053,584,585,1250,1260,1254,2395,517,550,548,636,557,559] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1009,1010,1011,2320,2324,2321,947,949,983,984,985,621,613,1223,2278,973,975,2273,2275] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1435,1442,1437,1440,1448,1059,1061,2180,2183,2187,1027,2188,2192,1432,1031,2181,2182,1029,1057,1065] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1184,957,852,1186,863,1213,1190,922,1217,888,889,920,956] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [684,674,677,687,663,665,17,664,669,2567,18,36,172,170,2605,2606] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        