
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
        
        load "data/6PYR.pdb", protein
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
 
        load "data/6PYR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5773,5775,1870,1260,1268,1271,1869,5749,5747,5714,5746,5736,5737,5738,5742,5743,5771,5920,5772,5774,5913,5933,5930,5929,6018,4615,4617,4303,4305,4306,4619,5332,4585,4586,5343,1254,1266,4661,4662,5717,5716,5936,5341,5342,5344,4300,4274,4272,4277,4275,4299,4276,4315,4314] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [6010,5626,6009,6014,6021,6027,6033,6604,5646,6597,6598,6601,6602,5924,5925,5927,5462,5463,5530,5531,5532,5464,5461,6511,6596,6484,6058,6578,6512,6030,6031,6073,6056,6577,6593,6595] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3019,2827,3041,3042,3043,3044,7851,3184,2260,8625,8626,8627,4733,4720,4734,4716,4728,4726,4727,3034,3036,2833,2845,3057,7822,4708,7849,7881,7882,7883,8589,7856,8590,7821,7850,7854,7858,7859,3196,3199,3183,7917,3230,2254,3226] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4457,4460,4462,4466,4467,4151,4149,4419,4420,4421,4152,4414,4136,2685,4422,4427,4428,4153,4404,4125,4090,4092,4096,4174,4478,4175,4172,4173,4143,4437,2907,2674,2675,2931,2932,4451,4432,4435] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [6720,6721,6723,6724,6457,6504,6738,6383,6769,6400,6401,6459,6437,6458,6587,6588,6717,6381] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3156,2867,2869,2957,2958,2987,2980,2990,2983,2985,967,2910,2912,970,2904,4434,4436,3171,3175,2993,3168,3166,955,953,954,2897,2900,3159,4425] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [4575,1195,4869,1196,2052,2051,2082,2083,2053,4868,4908,1243,2054,5314,1755,1757,1756] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4396,4398,3138,3142,3143,3140,3051,3127,3057,4733,4720,4734,3034,3036,3041,3044,3146,3150,3152,4395,2842,2845] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [7082,7120,4073,4077,4080,7093,7095,3574,3575,3833,7235,7083,7273,7274,4075,4101,4104,4131,4121,4114,4115,4132,7234,7143,7145] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4676,4678,855,4679,852,4705,4699,4706,4709,4944,4946,4964,5959,5989,5990,4996,4997,5957,4674,5961,5962,5965,5969,4651,4965,866,844] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [5898,5892,1898,1901,1923,5834,5835,5836,5837,5873,5875,1283,1896,1869,1284,1865,1866] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4751,877,7916,7917,903,940,941,904,905,906,907,908,3188,3189,3190,7942,7944,7943,7975,7915,7918,7953,7940,4746,4726,4700] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [5710,6597,6598,6601,6602,5925,5927,6010,6604,5646,5707,6593] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1799,1788,1791,1699,1516,1540,1509,1512,1802,1518,1174,1175,1178,1168,1668,1685] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4960,4990,5328,5305,6001,5618] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2242,2243,2233,2995,3250,3248,3251] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        