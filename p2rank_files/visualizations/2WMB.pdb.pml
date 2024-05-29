
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
        
        load "data/2WMB.pdb", protein
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
 
        load "data/2WMB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5538,4981,5559,5631,5560,5531,5543,5123,5140,5143,4566,4721,5135,4619,4620,4563,4567,5171,5172,5173,4562,4565,5159,5162,5167,5151,4738,5632,5633,5636,5637,5115,5117,5119,4737,5113,5114,5116,5118,4736,4574,4581,5639,4571,4573,4580,4569,4568] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1058,1065,1070,1159,1163,1166,96,98,101,147,264,100,107,108,265,93,664,91,92,145,146,89,95,698,1087,687,694,701,670,686,726,727,508,1158,509,641,644,650,643,662,248,1086] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3545,3575,4362,4364,2848,3690,3691,2840,2842,2847,2850,2846,3510,3511,1251,1252,1253,1223,1236,3546,3544,2854,4376,3661,3664,3671,4350] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2563,3786,3798,3815,2569,2570,3837,3838,3486,3491,3496,2877,3746,2904,2905,2908,2911,2878,2902,2939,3801,3785,3796,3797,2880,3497,3503,3859,3740,3738,3735,3736,2552,2553,2556] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2191,2197,2198,2199,1427,1835,1876,1441,1444,2183,1832,1440,1450,2189,2190,1841,1848] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [7969,8090,8068,8069,7722,7734,7111,8046,7971,7977,8032,6800,7133,7170,7108,6801,7142,7135,7136,7139,7717,7727,8018,8016,8017,8027,7967,7973,6929,6787,6790,6791,8029] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [7894,7895,7896,7741,7073,5709,5724,5725,5726,7921,7922,7923,7890,7897,7898,7902,7808,7892,7080,8593,8595,7777,5711,7806] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3150,3151,2854,2855,2856,3520,1275,1210,1213,1214,1222,3517,3518,3519,1252,1253,1223,1236,3546,3544,1255,3511,3545] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [5748,7382,5728,5746,5725,5726,7085,7086,7742,7071,7776,7777,7748,7087,7088,5687,5686,5695,5696] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        