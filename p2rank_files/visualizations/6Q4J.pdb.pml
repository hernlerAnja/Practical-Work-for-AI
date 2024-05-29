
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
        
        load "data/6Q4J.pdb", protein
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
 
        load "data/6Q4J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [113,116,152,1069,1073,151,150,100,138,127,1177,259,277,279,281,1185,1098,650,657,665,666,1096,1097,1067,1064,674,678,679,681,94,705,707,95,96,97,98,644,646,658,630,1079,121,1051,130,1076] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1027,1327,1328,1263,1007,1024,1025,1221,1254,1255,1256,1081,121,122,132,131,133,119,1296,1182,1185,1503,1012,1419,1257,1504,1385,1386] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2248,2272,1839,2070,2071,2072,1847,2225,2254,2260,2262,2226,2227,2263,2270,1890,1891,1892,1856,1851,1889,2310] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1958,1453,1478,2288,1405,2297,2295,2296,1910,1915,1917,1476,1506,1511,1510] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [588,538,318,317,324,342,344,1288,1244,1286,332,336,325] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [197,614,513,528,47,195,32,33,233,253,504,231,194,220,502,510,221] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [954,928,951,1518,949,957,958,2335,2336,2339,2340,2341,2345,2346,2350,1520,1523,2330,1517,1519,2319] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [946,429,431,397,471,472,1163,1178,1186,1190,1191,1216,477,625,490,494,396] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [16,266,594,597,599,46,20,24,544,17,527,528,36] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1057,1060,1065,695,696,697,698,1058,1059,1375,1376,1342,1362,1363,1364,1050,1338,1340,1622] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        