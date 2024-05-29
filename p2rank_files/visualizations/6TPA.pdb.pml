
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
        
        load "data/6TPA.pdb", protein
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
 
        load "data/6TPA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1333,1336,1337,1338,1339,274,276,828,221,222,223,2604,1327,491,520,745,1323,521,593,594,743,249,250,252,254,398,396,251,253,1335,225,744,739,740,742,381,275,1219,766,795,769,797,2605,2606,762,749,760,1195] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3897,4192,4193,2695,4197,4198,4199,4200,4201,4202,4203,3891,3892,3893,3898,3922,3896,3861,3858,3934,2684,2690,2692,2693,2663,2664,2659,2662,3853,2673,2677,2678,2679,3850] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [812,1618,814,850,844,847,1180,1191,1409,1411,1190,1182,1374,817,1375,807,809,1397,1399,1662,882] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2950,2952,2953,2955,2948,2949,2951,2954,2956,2912,2914,2916,4481,4123,4129,4126,4128,4482,2804,4133,2850,4136,2848,2983,4165,4505] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1328,489,491,520,1320,1321,1324,519,521,593,512,548,1350,1352,1086,585,1314,1129,1134,1331,1146,1322,1140,1085] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3309,3311,4689,4711,4,3310,3312,3630,4703,4704,3325,3631,3632,3324,3326,3013,4667,3615,4666,4664,3613,3607,3623,3604,4663] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1355,1359,464,466,468,469,472,452,453,492,245,398,243,491,415,413,414,425] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1510,1440,1441,1444,2320,2321,1485,1474,1477,2329,1917,1902,1951,1899,1939,2314,1918,1940] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2304,2305,1841,2105,2288,2101,2264,2267,2299,2300,1845,1848,1849,1858,1837,1890,2099,1887,1888,2262] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1634,2180,2206,2207,945,2173,2176,2181,2435,2437,2221,2465,2470,944,2182,976,942,974,943,2481] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [374,375,313,314,613,612,734,166,622,640,176,178,164] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3873,3874,4145,4146,4149,4191,4219,4097,3849] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        