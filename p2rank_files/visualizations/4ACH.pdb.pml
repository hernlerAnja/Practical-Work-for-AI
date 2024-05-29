
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
        
        load "data/4ACH.pdb", protein
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
 
        load "data/4ACH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3178,3588,3176,3319,4001,4176,4287,4170,4171,4178,4172,4256,3268,3272,3273,3254,2071,3276,4189,3274,3275,4190,4191,4192,4027,4028,4051,4011,4154,4155,4156,4157,4150,4151,4149,4148,3010,3063,3064,4067,3012,3014,3161,3065,4041,4040,4039,3639,4068,3613,1860,1861,3035,3033,3034,3037,3038,3040,3041,3043,1828,1829,1851,1826,1836,4277,4279,4261,4262,1849,1855,1886,2087,2088,2089,2063,2066,2078,2080,2053,2056,2058,3198,3246,3248,1811,1837,3016,3028,3045,3047,3046,1812,4044,3320,3394,3593] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4634,1371,1372,1481,1365,1366,1368,1364,470,466,473,386,387,388,480,477,404,461,235,371,4657,1471,4635,4884,4886,4895,4869,4872,4632,238,240,241,4893,4894,236,237,4667,229,1450,1455,1456,4864,4866,1195,1384,1385,1386,1446,1473,4862,1443] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1349,370,1245,1261,1342,1343,1344,1345,1348,481,589,588,221,222,1350,1351,371,372,259,210,213,258,208,800,355,787,782,780,245,1233,833,1262,204,205,814,807] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [225,221,222,1350,1351,231,235,242,371,372,1349,1245,259,245,369,244,246,387,480,1234,1235,1238,1233,4634,4642,4643,1205,1371,1372,1365,1366,1368,1364,1221,1222,4618,229,4635] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4342,4343,4344,1464,1467,4379,4371,4377,4381,1808,1814,1815,1819,4292,1536,1538,1460,1846,1845,1820,1573,1576,4265,4266,4270,4273,1462,1571,1565,1575,4305,4652,4625,4626,4651,1499,4614] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3074,3076,3187,3075,3477,3476,3168,3565,2965,2967,3169,2834,2835,3458,3071,2988,2990,3073] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1604,4387,4813,4814,4826,4827,4828,4829,4838,1592,4398,2032,4410,1603,2023,2008,4409] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [962,994,995,996,905,907,869,1032,870,1269,1282,1280,1283] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2360,2371,2380,2382,1634,1638,1639,1642,1630,1666,2689,2690,1629,1632,1636,1138,2389,1136,1134,1135] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4073,4086,4089,4088,3838,4075,3711,3713,3800,3801,3802,5354,3676,3675] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [379,759,381,362,28,29,159,161,653,670,671,652,184,182,267,269,268,270] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2481,2616,2618,2774,2778,2780,2785,2782,2500,2508,2525,2523,2587,2592,2585] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [560,2623,2669,552,558,546,1120,2645,2644,2624,2627,565,566,561] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        