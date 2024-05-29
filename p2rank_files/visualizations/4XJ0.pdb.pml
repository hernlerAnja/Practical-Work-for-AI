
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
        
        load "data/4XJ0.pdb", protein
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
 
        load "data/4XJ0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [809,1168,176,412,187,1274,1140,1275,1276,1277,476,1298,437,439,1300,433,434,435,189,191,442,443,1194,1268,1269,1193,1177,1270,797,798,836,837,211,324,325,160,344,188,190,342,173,183,193,194,326,327,475,447,157,158,310,210,760,838,154,781,782] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3976,4113,4110,4111,4112,3308,3309,3311,3163,3013,3033,3034,3049,3032,3161,3180,3178,3581,4272,3993,4270,4134,4135,4136,4268,4126,4127,4129,899,902,3248,3027,3028,3029,3283,883,3031,3275,3273,3271,4269,4271,4267] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2499,2519,2520,956,958,4633,4634,1228,4651,4653,568,569,4824,565,576,1022,1023,1024,996,998,4822,2474,2462,2469,2472,2471,988,989,4656,4659,4660,4661,4826,4857,4622,4624] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3048,3601,3146,2995,2996,4013,4106,4104,3429,4029,4030,4105,3596,3593,3645,3673,3674,4004,3049,3047,3160,3161,4110,3162,3163,3634,3632,3633,3618,3617,3619] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4245,4230,4239,4241,879,4255,4256,4262,896,926,928,4269,932,876,877,878,4266,1218,1223,4639,4640,4641,4642,4643,1224,846,4226,4395,4396,4397,4233,4373,4644,4645,883,4338,4337,4375,4274,4280,4368,4365,4371] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1502,1500,1501,1532,1529,1535,1539,1464,1799,1803,1805,1408,1807,1394,1398,1395,1563,1433,1420,1435,1438,1444] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [4314,4316,4537,4585,3699,3989,3991,4326,4328,4000,4006,3660,3662,3664,4292,3993] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3751,3788,3789,3791,3793,4066,3768,5266,5268,3792,5264,3794] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1701,863,1478,1479,1480,1164,1490,1492,1153,1155,1170,1157,824,826,828,862] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4292,4301,919,4312,4313,4315,4311,4314,4316,3662,918] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        