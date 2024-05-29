
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
        
        load "data/4IZA.pdb", protein
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
 
        load "data/4IZA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1273,1267,1269,340,495,766,1270,1192,600,763,771,323,784,338,494,337,357,1274,1275,1276,1453,1459,451,452,456,209,224,170,223,169,171,783,208,207,336,355,332,192,203,202,204,206,1176,1268,1167,1168,815,802,803,844,787,801,804,1193,1460] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4033,4008,4034,4108,4109,3600,3192,3196,3599,3584,3039,3084,3049,3046,3047,3054,3069,3211,3213,3200,3648,4009,3637,3083,3183,3617,3620,3628,3082,3030,3677,3033,3034,3036,3604,3636,3298,3299,3332,3334,3336,4130,3335,3305,3302,3303,3308,3300,3053,3061,3063,4111,4114,4115,4116,4117,4017,4110] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [830,832,1501,1503,1515,1513,1163,1722,1152,1156,1154,1471,1169,1168] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [987,2508,2510,2512,930,932,952,954,956,957,1228,955,918,585,1021,1022,1023,578,2554,586,995,996,997,1236] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1128,1129,1316,1312,1314,1309,1325,1334,1602,1109,1375,1383,1369,1370,1377,1337,1360,1361,1584,1606,1604,1410,1433,1432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [852,969,851,882,931,1229,929,881,1205,1224,1211,1212,1213,807] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1590,1595,1596,1580,2004,1597,1545,1986,1987,2349,2359,2360,1544,2348,2003] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4182,4204,4206,3993,3995,4216,4218,4426,4473,4005,4010,3663,4009,3665] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3428,3798,3836,3837,3838,4077,3796,3420,5191,5193,3828,5188,5238,3864] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4054,4070,4046,4052,3640,3770,3772,3685,3718,3717,3684,4041] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5006,5012,5015,5017,5022,5018,4981,4619,4620,4984,4831,4985,4616,4617,4624,4628,4632,4666,5062,5029,5060] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        