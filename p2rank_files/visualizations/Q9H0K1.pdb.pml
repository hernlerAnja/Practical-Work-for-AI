
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
        
        load "data/Q9H0K1.pdb", protein
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
 
        load "data/Q9H0K1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5706,5711,5712,5704,5705,841,870,871,872,1710,1712,900,1686,1714,1711,1716,1718,1721,1723,4841,5678,876,877,879,844,846,847,5744,5746,5748,1474,1725,1724,5740,5742,845] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [5813,5814,5816,5851,236,238,460,464,226,227,1315,1316,1317,1324,1326,1327,1328,485,488,1200,1177,1178,1448,1187,1189,5782,5784,5781,232,243,379,380,530,1301,1302,496,498] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1215,1216,825,1188,827,1293,378,1298,1300,1302,1295,1296,637,202,789,791,794,777,375,372,362,771,772,203,198,199,200,205,257,258,817,798,1200] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1280,778,779,780,781,1281,642,665,667,2725,2726,2727,2728,2756,645,341,2723,2724,2751,2757,2760,2762,786,347,1228,1232,1230,1233,1236,1248,2758,2789,806,609,610,600,607,594] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2696,2582,2694,2403,2579,2584,646,647,2692,2401,2405,2623,2682,2685,2718,2719,567,2624,2605,2606,2626,584,591,593,595,559,2366,2607] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [133,134,144,675,690,146,7172,137,687,689,2642,7185,7186,7190,7191,7192] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2643,2644,2653,2655,7147,7149,2673,2641,2507,7151,2503,2508,147] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1293,1291,378,1298,529,561,1295,1296,562,637,634,375,372,771,772,257,258] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [132,113,174,266,265,267,7204,7205,747,750,387,728,729,730,388] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        