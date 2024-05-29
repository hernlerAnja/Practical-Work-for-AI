
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
        
        load "data/3BKB.pdb", protein
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
 
        load "data/3BKB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2000,2001,2002,2003,2016,2017,2019,2020,2024,2025,986,1263,1264,1265,1994,1995,1996,1372,2130,2123,2127,2128,2133,1131,1132,975,976,1001,1129,1130,1015,1017,1504,1016,1501,1503,1116,993,979,983,1904,1883,1899,1900,1901,1918,2138,950,952,953,948,1550,941,943,947,1525,1543,1546,1919,1522,945,1520,1851,995,2018,997,1204,1226,1228,1205,2041] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [173,174,195,1279,1276,1277,832,1305,1304,815,816,817,818,1306,1246,144,1423,848,1432,203,811,194,172,201,202,125,127,1244,1270,1272,1275,1410,1409,1411,1247] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [150,151,1447,1448,1449,1464,1468,1216,1143,1462,1144,1208,1209,1458,1461,1142,1452,1215,1210,1212,1213,1157,1214] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [662,787,660,99,659,627,629,630,23,633,635,13,83,101] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2286,2287,1794,1797,2280,2282,2288,2293,2076,1814,1792,2078] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        