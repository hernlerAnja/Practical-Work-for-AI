
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
        
        load "data/3F7Z.pdb", protein
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
 
        load "data/3F7Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [265,267,266,216,754,363,752,772,779,759,774,786,378,213,212,805,831,832,244,245,247,248,249,218,4506,1223,1326,1327,1329,1211,1321,1240,793,586,587,1239,1322,1323,1320,479,1214,1215,1216,4485,4491,4494,4495] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2926,2927,2928,2929,2931,2980,2981,3078,4015,3932,3933,4013,4014,3447,3300,2962,2964,3095,3093,2982,2933,2936,3916,4016,4019,4020,4022,3194,3226,3486,3469,3472,3479,3463,3465,3452,2939,3892,3893,3905,3497,3498,3524,3525,3904] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2269,2259,2264,2266,2607,2312,2608,2278,2300,2289,2298,1620,1621,1622,1116,1618,1623,1626,2307,1112,1113,1114,1120,1086,1088,2308,1121,1613,1614,1615,1616,1138] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [274,370,192,273,276,277,278,167,371,651,169,37,36,668,669,649,731,387,389] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4309,4315,4319,3805,3806,3807,3813,3831,4313,4314,5328,5329,5026,5008,5014,5017,5019,3779,3781,3782,4978,4983,4997,4988,4090,4303,4306,4307,4308] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1433,1445,1435,1439,1440,1441,1574,1588,1576,1565,2951,2947,3118,2966,3407,3408,1447,1549,2969,2942,2975,3103,3104,2943,1557] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3534,3665,3666,3702,3703,3938,3940,3953,3662,3663,3664,3633,3576,3578,3667,5187,3640,3488,3491,3562,3954,3530,3535,3951] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3875,3892,3893,3909,4166,4167,4171,3905,2939,3876,4035,3916,4022,2962,2964,4036,4043,2960,4161,4160] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3364,3383,3384,3424,2991,2993,3104,2907,2882,3086,2752,2884,2751] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1198,1478,1208,819,821,1207,1511,1512,1714,1215,4488,823,1495,1497,1500,1496,1498,1757,1758] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1344,1350,1342,1343,1183,1328,1329,1182,1181,235,236,237,238,239,245,240,1200,1477,1467,1468,1473,1474,1465] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [972,973,974,1260,842,1258,1261,1010,841,883,885] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3265,3271,3273,3274,3278,3279,5266,3761,5262,5284,5309,3259] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        