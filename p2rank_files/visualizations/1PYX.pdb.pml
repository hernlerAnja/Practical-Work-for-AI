
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
        
        load "data/1PYX.pdb", protein
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
 
        load "data/1PYX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4533,4735,235,4566,1326,1327,1333,372,480,1311,1325,1305,1306,4523,230,4540,4541,4542,1164,1166,1182,1183,1312,1310,1194,1206,1303,1304,1309,473,477,466,404,455,459,460,461,4742,4743,370,371,386,387,388,743,232,233,234,238,240,242,243,392,204,210,215,216,257,259,1223,258,206,208,355,1222,589,748,765,768,205,225,231,222,244,1156,1329,1331,1332,1442,4532,4534,1417,1432,4734,4736,4720,4721,4722,1195,1199,794,775,4514,4510,4515,4516] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1770,1772,1779,1797,1798,3910,3926,3927,4077,3939,3940,3943,1789,4071,1991,1992,2977,2978,3115,2986,2987,3130,3131,3132,3136,3148,3205,3149,2960,2966,1790,1988,4160,4161,4186,4070,4073,4075,4069,3900,4054,4056,3116,3221,3224,4055,3199,3203,3204,3206,3217,3950,1822,2004,2006,2007,2014,2013,1766,1771,2974,2979,2982,2005,4176] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2950,3002,3099,3519,2952,3112,3114,3487,3509,3492,3512,3938,3950,3538,3966,3967,4047,4048,4049,4054,4056,3116,3225,4055,4050,2960,2954,3001,3003,3115,2948,3939] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1457,1460,1776,1780,1807,1781,1498,4519,4524,4525,4551,1421,1425,1497,1499,1428,1423,1526,1534,4172,1775,4169,4242,4243,4165,1769,4201,4204,4550,4278,4270,4167] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [184,265,266,268,269,270,381,721,159,161,28,670,671,675,42,651,653,29] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [868,930,931,952,954,956,955,957,826,830,866,831,787,1241,1244,1245,993,1243] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3125,3414,3415,2928,3013,2927,2772,3010,3012,3014,3465,3106,3107,3397,3395,2773,2903,2905,2786] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3843,3841,5036,5343,5344,3865,3840,5043,5034,5042,4341,4342,4337,4343,4344,4347,4331,4334,4335,4336,4105,4104] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1590,1592,2613,2614,1360,1591,1593,1599,1603,2296,2302,2307,2615,1099,1361,1097,1123,1597,1598,1096,1095,1103,1104,1121,1627,2313,2314] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3667,3610,3611,3612,3974,3736,3574,3575,3988,3989,3985,3699,3700,3701,3674,3737,3979,3987,4007] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2448,2450,2505,2433,2542,2703,2705,2512,2517,2510,2540,2710,2707] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5179,5177,5269,5271,5432,5434,5162,5436,5439,5428,5246,5241,5239] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        