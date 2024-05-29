
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
        
        load "data/6YPH.pdb", protein
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
 
        load "data/6YPH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3724,3740,3742,4129,4130,4230,3224,3162,3159,3160,3165,3163,4227,4229,4106,4107,3563,3565,3328,3329,3720,4231,4232,4105,4235,4238,3223,3225,3166,3171,3180,3209,3564,3698,3699,3700,3701,3344,3345,3342,3343] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [566,567,449,553,450,448,385,921,924,926,1463,788,1459,1461,790,1467,1462,1346,1314,1328,1327,1334,554,945,387,949,1361,1362,965,930,405,568,569,434,1470,1315,391,383,384,389,390] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3419,3456,3426,3196,3361,3199,3204,3194,3195,3192,4262,4263,4264,3415,3420,4254,3422,4389,3191,3183,3187,3189,3190,3421,4114,4073,4074,4401,4090,4105,4237,4238,3180,3208,3209,3344,3345,4103,4107] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1891,1890,1370,1126,1056,1129,984,985,988,991,1027,1029,987,1351,972,1020,1317,1320,1321,1865,1937,1319] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [292,296,299,4017,4016,322,323,324,506,295,3984,2866,2868,3983,5457,3990,3985,3988,5484,5458,816,335,817,818,268,288,273,289,3540,3957,270,313] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [256,3527,3571,3572,280,282,261,3529,3530,3528,258,662,3553,3534,650,624,625,626,627,661,620,622,659,285,652,3521,3522,3523,3524,3518,3519,842,600] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1653,1655,1656,1940,1313,1332,1336,994,1937,1322,1667,1668,1320,1321,993,1639,1643,1315,1633,1631,1635] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4435,4088,4399,4090,4421,4423,4424,4713,3778,4098,3769,4102,4097,4407] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2857,2840,4550,4544,4558,4559,4562,4585,5447,5435,5441,5444,5446,5424,4008,5451,3982] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3585,3582,3310,3321,3266,3306,3302,3706,3703,3289,3584,3593] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2977,2979,4283,4309,4311,4331,2970,2998,4278,3008,4277,4330] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [195,212,202,1515,1541,1543,1509,1563,1510,1562,231,224,233,223] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        