
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
        
        load "data/7AKB.pdb", protein
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
 
        load "data/7AKB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4151,4152,4154,425,3909,3910,4084,4195,423,424,20,21,30,32,4202,4206,4238,19,14,4225,4227,22,23,25,31,4249,448,418,422,426,430,4214,4215,4207,4211,4224,4,4228,4226,4538,439,4171,4172,3927,3928,3942,3944,3940,3951,3148,2926,2927,2922,2934,2936,2919,3175,3911,4081,4085,4063,4064,3174] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [215,218,222,223,449,230,1223,232,1247,1374,1375,471,472,1373,1359,1360,383,505,228,399,382,225,447,443,1504,1380,1381,1206,1224,1205,1207,1222,1468,1451,1452,1453,1499,1501,3123,3124,3125,1515,2715,1237,1238,1239,1516,2734,2735,2736] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1264,836,819,833,379,381,254,812,253,366,831,809,810,814,1357,1358,1360,1352,1353,1350,1351,208,232,234,1235,1236,1247,1263,844,195,196,200,202,198] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2910,2956,2957,2958,2904,2907,4054,4056,4055,3537,3968,3544,3081,3082,3083,3206,4057,3079,3510,3511,3512,3513,3514,3515,3509,2938,3519,3531,3533,3536,2908,3066,2916,3951,3566,3939,4062,4064,2936] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2728,2729,3124,3125,3112,1515,2715,1238,1239,2717,2718,2719,2720,1516,1520,1533,1535,1537,1825,1536,1534,1524,2736,2708,3113,3114,3116,1224,1222,1223] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [222,223,449,450,424,438,437,439,448,3139,3148,3149,2926,3150,3123] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2735,2744,2745,2746,3108,2917,2921,212,213,209,2922,2923,2919,2920,2915,2916,2918,215,216,219,222,217,407,408,214,40,42,31] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        