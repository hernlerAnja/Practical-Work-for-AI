
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
        
        load "data/4WOV.pdb", protein
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
 
        load "data/4WOV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2926,2940,2963,2948,2949,2950,2951,2962,2095,2102,2089,2090,2084,2143,2144,2927,3109,3113,3114,3117,3101,3104,2128,2129,2246,2247,2248,2647,3479,3480,3482,3406,2082,2083,3244,3243,3245,3528,3208,3211,3212,3204,3205,3178,3206,2110,3215,2105,2108,2109,3214,3096,2605,2979,2230,2602,2581,2086,2231,2593,2595,2630,2631,2621,2622,2087] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [137,138,145,130,177,179,127,117,123,124,125,1280,991,992,1282,1283,1027,1028,1169,289,290,1162,1164,621,626,178,273,119,121,140,143,144,163,1185,1188,1182,164,288,1173,1177,1181,696,1018,1475,679,1010,1013,1014,1015,1016,680,118,1311,1312,1005,662,663,671,1043,1044,644,647,122,641,642,1276,1541,1593,1313,1542,1272,1273,1275,1246,1274,1279] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1577,1579,1607,1581,1553,1580,1582,1584,3544,3517,3542,3543,1554,1669,1671,1620,3473,3555,1609,1608,1537,3493,3494,3519,3515,3516,3518,1611,1612] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1521,1524,3587,3608,1527,3588,1530,1531,1547,1543,3546,3585,3586,3609,1555,1556,3547,1553] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [969,1388,968,967,1200,1204,1193,1196,974,413,418,439,411,408,982] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3707,3754,3737,1778,1774,1777,1750,1749,3726,3732,3735,3738,3705,1680,3744,3750,1702,1686,3616] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2335,2337,3125,2366,2909,2917,3319,2905,3128,3132,3136,3137,3138,3127,2338,3140,3144,2334,3126] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3466,3487,3488,1611,1612,1648,1649,3467,3493,3494,1647,1670,1671,3473,3457,3460] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        