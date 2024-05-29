
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
        
        load "data/4AT5.pdb", protein
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
 
        load "data/4AT5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1310,1314,348,1305,1311,1322,197,1324,1214,1346,1347,1151,1155,1173,1306,1307,1309,1138,1139,1140,1210,1211,1300,1301,585,586,1293,1299,1302,1227,1228,1200,1317,1319,227,174,770,773,798,1229,766,729,731,724,735,733,738,763,171,172,175,579,1098,1099,481,480,347,205,207,511,510,503,533,601,710,711,332,707,708,709,717,584,530] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1080,1081,1084,1078,2232,2234,2235,2267,561,572,1032,1033,1057,1060,551,552,553,1059] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [757,759,761,758,760,1251,1258,1242,1250,807,809,843,2355,2357,2367,2370,1264,2358,2354,2351,805] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1041,1272,562,571,572,1010,1011,1031,1032,1033,1039,1040,1060,1257,2288,1008,2287,2289,2310,2313,2316,2319,2290] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1203,1214,1331,1332,1371,1373,1374,1375,1369,1370,1372,1314,1315,1320,1201,1317,1319,773,797,798,171,1200,1397] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1935,1940,1949,1953,1955,1816,1669,1670,1672,2104,1699,2106,2109,2110,2105,2108] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        