
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
        
        load "data/1SHY.pdb", protein
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
 
        load "data/1SHY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3187,3188,3262,3263,3260,3205,3206,148,177,179,180,2791,3282,3280,3281,3276,3278,342,2821,2822,2837,2776,2777,2795,2799,2800,2790,3322,3264,3267,3268,3270,194,1387,1389,1363,1366,1368,1369,198,195,196,184,192,314,2974,2976] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1541,1544,1349,1558,1529,1348,1351,1352,1615,1618,1295,1298,1611,1612,1629,1566,1339,1100,1599,1570,1198,1596,1605,1606,1607,1550,1536,1622,1621,1542,3215,3216,1549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2381,2541,2550,2569,2572,2543,2547,2260,2267,2271,2255,2261,2248,2254,2526,2527,2382,2166,2165,2164,2378,2185,2392,2398,2395,2519,2584,2585,2586,2587,2736,2735,2167] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2907,3476,2915,3477,3473,5148,5158,5159,5160,2901,2917,5161,5164,1902,3470,3472,3963,3971,3482,5167,3973] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [179,180,1362,958,188,1027,478,194,1361,1363,1368,1369,184,192] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [5683,5706,5717,5721,5723,5715,5720,5445,5559,5561,5736,5541,5544,5546,5558,5662] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3155,3434,3328,3331,3341,4459,3454,3824] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        