
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
        
        load "data/5H3Q.pdb", protein
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
 
        load "data/5H3Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [31,42,43,46,1360,48,49,562,584,1194,561,74,1285,1351,1354,1357,1373,1370,1372,1364,436,636,637,635,771,772,773,774,776,1212,1214,1348,1345,1159,630,1206,1201,1208] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [824,825,859,860,277,271,272,275,327,274,794,422,801,802,796,832,1257,1390,1358,1285,1286,1353,1355,1362,1369,1371,1372,1384,326,1415,1417,835,1416,1425,1427] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [302,303,304,1374,1375,1376,530,531,532,757,37,38,39,40,41,301,448,450,467,469,22,29,1361,31,32,33,46,1360,48,500,502,561,18,305,306,307,308,1233,1399,1391,1397,492,1364,436,437,438,445,444,1357,1373,1363,1385,1389] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [370,371,378,379,380,381,212,367,402,664,665,173,153,155,666,667,171,172] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1553,2006,1713,1716,2005,1992,2000,1983,1996,2146,2148,2150,2145,1860] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [908,965,822,981,984,972,977,958,964,989,817,820,869,907,898] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [91,95,98,103,110,112,71,78,80,81,554,575,577,1194,1195,1197,1176,1192,1172] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        