
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
        
        load "data/5U9D.pdb", protein
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
 
        load "data/5U9D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [228,229,230,802,165,167,166,347,1369,206,209,211,365,794,170,355,169,175,189,190,173,171,172,215,217,204,205,213,350,351,1254,1326,1327,746,334,1253,1255,1334,1335,732,773,790,772,780,791,769,751,1235,1226,804,1240] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1336,1342,1354,1356,523,622,625,525,605,607,747,1328,1329,1334,1363,452,732,1368,731,351] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1886,1794,2055,1856,1858,2093,2094,2095,1885,1891,1906,1910,1887,1897,1902,1905,1791,2056,2059,1831,2080,2083,2086,2049,1994,1926,1927,1993,2064,2066,2062,2065,2040,1830] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1281,1288,1289,1274,1282,838,789,788,840,1014,1016,1291,969,901,938,974,970,1001,999,904,906] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1239,1240,1241,1230,1201,1202,1204,1455,1459,1370,1371,1374,1445,1447,1451,1229,211,212,1405,1332,1331] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [328,630,633,635,76,78,631,632,634,636,272,274,275,276,277,318,307,308,309,311,313] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1189,1374,1375,1373,1445,1467,1469,1466,1673,1516,1524,1525,1674,1670,1672,1190,1192,1193,1381,1669] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [760,1267,756,1270,1314,575,581,1277,1298,1284,753,754] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        