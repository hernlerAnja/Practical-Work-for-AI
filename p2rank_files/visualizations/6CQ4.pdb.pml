
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
        
        load "data/6CQ4.pdb", protein
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
 
        load "data/6CQ4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [160,174,176,300,301,640,128,129,130,131,134,141,122,123,121,124,127,126,175,284,689,715,1051,1074,1184,1073,1182,1183,664,665,666,1075,661,644,684,680,681,1189,1190,1191,142] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1813,1819,1822,2253,3110,3111,2678,2679,2680,2681,2682,3135,2816,2814,2815,1806,1807,1801,1805,3080,3081,3093,1824,1788,1830,1831,1855,2819,2820,2822,2241,2243,2233,2234,2227,2229,2807,2224,3146,3144,1829,2414,2823,1828] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [317,319,623,413,507,504,506,301,639,1203,411,487,1181,388,1191,1186,1196,390,351,156] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1845,839,1877,2101,2102,871] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1333,1924,1327,1940,1260,1262,1307,1257,1258,1259,1991,1949,1261,1964,1319,1315,1320,1317,1323] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1422,1400,1401,1424,707,1429,1434,1435,727,774,772,775,739,3006,3007] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [512,510,511,248,221,223,523,49,58,59,540,279,260,631,514,516] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1670,1463,1388,1390,1659,1658,1432,1782,2844,1779,1757,1765,1784,1756,1415,1427,1428,1417,1416,1783] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [999,983,989,1312,1313,1314,952,954,2014,2016,953,995,917,946,918,919,920] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1398,1400,1039,1040,707,1230,1232,1435,1436,1241,1243,705] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        