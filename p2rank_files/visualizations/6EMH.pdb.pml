
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
        
        load "data/6EMH.pdb", protein
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
 
        load "data/6EMH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6866,6857,1742,6863,6864,6867,1464,1471,1739,1474,1737,1738,1747,1754,1776,6585,6882,6586,6587,1478,1479,1484,1485,1487,1934,1955,1477,1483,1954,6545,6856,6878,6453,6850,6445,6448,6444,6489,1985,1987,1989,6622,6623,6496,6853,6497,1945,1950,1984,6527,6528,1948] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [9746,9749,7353,10000,10014,10016,10250,10038,10039,10040,7075,7375,7376,7079,7072,7547,7546,7537,7542,7573,7576,7578,7574,7084,7540,9997,10001,10004,10009,10205,10206,10245,10211,10213,10248,9758,10208,10216,10210,10215,7338,7341] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1311,1335,1326,1327,1331,1332,1316,1350,1328,1329,2686,435,436,437,438,1308,1312,8085,6603,8098,1351,1370,6571,6569,409,8086,402,414,413,1364,1366,1354,445,444,8099] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [9607,9608,8542,8543,8559,9156,9109,9110,8654,8544,8545,8558,8669,8670,8671,9605,9604,9531,8930,9146,9149,9131,9126,9128] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3153,3040,3054,3055,3168,3623,3639,3640,3626,3039,3644,4096,4097,4100,3170,3604,4099,4021,4003,3648,3651,3991,4020,3609,3641] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1195,797,793,794,795,796,811,814,774,779,321,336,337,338,1282,1166,821,818,208,222,223,207,791,482,517,1279,1280,1283,1196,1178] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [6923,6925,5860,5861,5845,5976,5974,6922,6845,6433,6435,6436,6414,5959,6431,6461,6816,5844,5846,6451,6454,6458] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [9539,9185,9186,9211,9210,9228,9543,9306,9305,9268,9269,9567,9568] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [835,833,834,1167,1168,1384,1162,1425,1427,1161,1624,1153,1151,1152,1163,1685,1385,1412,1414] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4206,4445,4233,4235,4498,3663,3664,3665,4205,3988,3993,3992,3976,3981,3986,3987,4246,4248] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [8090,6641,6612,6614,8097,8140,8141,396,397,398,412,413,1367] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [6932,6934,6830,6957,6788,6805,6949,6087,6088,6931,6946,6947,6948,6986] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        