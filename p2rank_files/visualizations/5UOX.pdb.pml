
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
        
        load "data/5UOX.pdb", protein
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
 
        load "data/5UOX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [322,201,203,202,145,149,1232,740,1148,1149,724,148,147,460,1231,1233,1234,1237,305,706,721,725,570,701,702,1133,150,156,144,1122,747,163] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3178,3204,3288,2803,2804,3205,2796,2799,2415,2758,2295,2296,2249,2398,2769,2777,2240,2773,2775,2780,2256,3189,3293,3295,2237,2242,2243,2244,2823,2238,2241,2626,2762,2757,3289] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3421,3713,3716,3743,3745,3746,3780,3741,3425,3450,3400,3639,3431,3522,3525,3526,3436,3429,3435,3774,3776,3432,3434] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [867,816,818,819,924,821,891,892,1170,1161,1167,1169,914,926,1192,842] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1996,1954,1468,1470,1471,1475,1025,1472,1500,1992,1995,1023,1035,2008,1476,1479,1989] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3341,3342,3097,3099,3096,3117,2564,2566,1964,2562,2563,2565,2567,1438,1421,1422,1423,1447,1448,1449,1955,1956,1452,1453,1462] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2872,2874,2875,2877,3223,2871,2873,2898,2923,2968,2980,2982,3248,2947,2948] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1112,1124,1125,1569,1570,761,1126,1115,1358,1360,1349,1609,1608,1119] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        