
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
        
        load "data/1Q41.pdb", protein
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
 
        load "data/1Q41.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3858,3859,3842,3882,3980,3981,3982,3985,3988,2905,2900,2901,2903,2952,2953,2954,3050,2931,3067,3166,3063,3065,3066,2936,4009,2899,3874,3470,3870,3871,3899,3979,3898,3273,3274,3417,3424,3198,3419,3420,3451,3450,3444,2908,2917,2920,2911,1760,1777,1778,1779,2930,2932,2934,1752,1753] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [215,216,222,210,213,257,206,208,258,1203,1204,749,735,205,742,4474,239,1164,1293,1187,1284,1285,1290,235,372,245,370,259,368,578,355,729,725,724,237,1291,1286,1287,503,4447,1179,4448,1176,204,1175,775,225] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [463,456,445,450,452,467,449,451,386,388,392,404,438,238,470,1308,235,372,232,234,371,387,4698,4699,4721,4722,4498,4465,4703,230] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1945,1946,1955,1965,1964,1947,1954,1956,4092,3087,1770,1771,1803,1957,1958,2934,4108,2923,2927,2930,2932,2929,4093,3081,3146,3099,2936,3832,4001,4003,4005,4007,4009,4118,2931,2933,3165,3082] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4174,4175,4173,1406,1409,4202,4210,1788,1756,1757,1761,1762,1515,4097,4104,4451,4456,4457,4482,4483,1750,4132,4136,4133,1428,1478,1479,1480,1507,1402,1441,1787,1438] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [28,29,379,381,660,661,702,641,643,161,42,264,267,184,265,266,268,269,270,360,362,363,183,159] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2854,2856,3058,2723,2961,3057,2724,2737,3336,3338,3355,3356,3397,2879,2878,2960,2962,3076,3360,2965,2964] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [904,849,933,935,934,936,937,938,2424,811,847,812,911,1222,1224,1225,1209,764,1226,974,1211] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3507,3506,3631,3632,3633,3542,3543,3544,3669,3904,3906,3920,3921,3917,3919,3599,3668,3628,3606] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3773,3772,4263,4269,4273,4274,4266,4267,4268,4037,4036,4303,5010,5013,5015,5022,3775,4276,4275,4279,3745,5322,5323,5023] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1608,2247,1574,1580,1080,2265,2566,1078,2565,1578,1579,2236,2258,1584,1571,1572] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4680,4689,4665,4681,4667,4218,1397,1414,4221,4223,4673,4662,4692,4609] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2384,2401,2463,2461,2468,2477,2399,2376,2493,2654,2656,2357,2491] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        