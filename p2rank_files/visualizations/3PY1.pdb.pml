
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
        
        load "data/3PY1.pdb", protein
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
 
        load "data/3PY1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [535,1190,1118,528,533,459,458,464,466,292,1192,1196,1198,1191,1195,1197,135,725,728,1090,1119,714,668,670,671,672,673,654,655,550,553,288,289,290,174,173,275,116,117,118,120,694,697,754,692,411,412,438,439,440,436,468,469,1250,309,1253,635,634,575,576,594,1199,1202,1219,1220,1203,1206,1208,461,1089,1091,122,125,127,128] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1464,1466,1908,1912,1921,1469,1478,1470,1427,1428,1873,1870,1914,2230,2231,2223,2229,2238,1884,1885,1886,1904,1879] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [299,86,87,84,182,184,164,278,280,41,282,297,644,38,63,62,293,279,646] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [988,986,2269,2272,2273,2283,2286,2287,2274,2279,1516,1510,1512,2263,1504,985,992,984,963,2228,2252] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [67,219,243,20,69,19,22,661,269,255,558,560,557,566,569] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1214,1218,144,1230,1239,1242,1243,1061,1062,1217,155,1327,1328,1266,1269] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2016,2017,1860,1861,2205,2212,2190,1808,2202,2167,2196,2201,2203,2204,2018,2168] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1475,1476,1481,1483,1497,1487,1490,1495,1494,1496,1223,1226,1051,1052] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        