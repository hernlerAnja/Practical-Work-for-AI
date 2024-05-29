
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
        
        load "data/4ACG.pdb", protein
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
 
        load "data/4ACG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4011,4157,4154,4172,4156,4170,4171,3041,3042,3043,3045,3046,3047,3176,3178,3065,3064,4028,4041,4042,4043,4051,4039,3010,3016,3012,3014,4178,4150,4151,3161,3287,3588,3394,3593,3639,4067,4068,4149,4148,3599,3610,3613,3606,3620,1805,1812,1796,1801,1802,1837,3028,3022,3035,3036,3031,3037,3038,1828,1836,1861,1829] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1351,1364,1365,1366,1367,1349,1350,1342,1343,1344,1348,481,513,239,241,257,258,259,237,588,787,355,232,235,372,370,782,514,783,1234,1235,1236,1237,1221,1222,1245,1233,833,1261,1262,210,213,204,206,208,807,814,1205,1372,222,229,230,231,4642,4634,4667,4635,4608,4643,4618] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4894,4895,442,4642,4634,4667,4884,4886,4872,4635,1471,1473,4893,410,412,392,4666,228,1481,1370,1195,470,1366,232,404,1455,4862,4864,4866,1450,1384,1385,1386,1456] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1828,1861,1860,3036,3034,2088,2083,2084,2087,2089,3198,3219,2078,2080,2082,1829,4277,4279,4261,2066,2056,4172,4001,3276,4190,4191,4262,4192,4256,2058,4287,4178,4174] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1538,4344,1565,1573,4270,4273,1464,1467,4379,4377,1462,1808,1845,1846,1819,1820,1536,4620,4652,4651,4625,4626,1499,4305,4614,4292,4342,4343,4371] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [907,1032,1280,1283,994,995,996,1282,1269,869,906,823,870,894,962,1031,992,993] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3797,3799,3713,3798,3800,3801,3802,3675,3712,3676,4075,3838,4073,4086,4088,4089,4090,3629,5363] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [2834,2965,2835,2967,3168,3459,3565,3458,2990,3071,3072,3073,3074,3075,3076,3477,3476,2848,3169,3187,3481] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1581,2032,1591,1592,4398,2007,2020,2021,2023,4827,4828,4829,1603,1590,4387,4396,1604,4813,4826,4409,4410,4404,4814] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1364,1365,1366,480,1350,232,235,372,386,387,477,462,466,455,448,404,388,461,470,410,392,234,442,4667,4635] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [381,29,159,161,379,269,759,362,267,182,184,265,268,270,183,670,671,675,652,42,653] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4894,4895,4667,4884,4886,4635,1471,4657,1473,1455] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1636,1634,1638,1639,1110,1136,1138,2382,1134,1135,1142,2690,2689,2688,2377,2380,2389,1666] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3941,3942,4442,4443,3944,3968,3966,4205,4445,4432,4438,4440,4444,4435,4436,4437,4206,5188,5186] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2587,2592,2585,2778,2780,2774,2782,2618,2613,2616,2525,2508] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [5424,5586,5306,5314,5329,5422,5598,5584,5592,5597,5393,5391,5407,5398] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        