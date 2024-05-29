
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
        
        load "data/3NNW.pdb", protein
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
 
        load "data/3NNW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1176,545,584,585,582,544,593,618,619,662,670,1346,1348,1184,1341,1345,1188,1328,1331,1334,1335,517,512,514,551,554,401,550,1363,1344,556,558,555,591,1199,1135,1134,1171] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1344,1350,558,1340,1356,1357,1358,1359,592,671,870,851,866,868,869,847,846,401,291,243,864,292,397,399,385,1337,1341,1256,872,1260,1257,593,670,887,1237,881,877,1250,1251] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1225,1226,1472,1238,1239,1397,1361,1364,1352,1247,1353,1376,1209,1479,1425,1427,1428,1395,1380,1389] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [697,698,699,703,711,45,26,162,27,343,179,181,341,708,718,2770,721,2810,2793,2768,2789,2808,2809] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2383,1641,2385,2384,2391,2395,1112,2374,2380,2386,2363,1648,1142,2390,1140,1108,1110,1147,1150,1643,1646,1638] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1066,1056,1064,1028,1030,2482,2484,1090,1091,1092,2523,2527,655,656,647,2478,1307] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1501,1503,1780,1785,1741,1513,1472,905,906] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [672,673,674,633,660,622,2815,2816,616,1323,1324,675,691,855,857] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1783,1788,1790,1793,1923,2189,2191,1772,2202,1762,1763,1764,1802,1804,2152,2153,2192,1925,1887,1914,1916] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        