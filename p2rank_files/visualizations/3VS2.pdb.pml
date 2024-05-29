
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
        
        load "data/3VS2.pdb", protein
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
 
        load "data/3VS2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3314,6819,6821,3313,3315,3316,3183,3185,3412,6903,6940,6942,6917,6918,6941,6912,6820,6687,6688,6689,6690,6721,6654,6657,6720,6760,6764,3413,3436,3437,3152,3340,3319,3336,3339,3302,3303,3347,3345,3342,3338,3368,3371,3367,3398,599,598,786,3305,3435,802,3154,3158,3159,3160,3346,3119,6844,6845,6818,6842,6843,6876,6852,6846,6847,6851,6872,6873,4086,4087,6663,6624,4265,4266,4274,6956,4083,6950,6952,6868,4090,4267] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2438,2463,2530,2538,1573,1574,1575,2537,1690,1692,2560,1688,1689,2068,2069,2072,2076,2057,1522,1519,1521,1518,1524,2531,2532,2533,2539,2558,2446,1676,2009,2024,2025,2008,2010,2046,2049,2050,2041,2043,2045,2462,1903,2547,2548,2549,1920,2542,1828,1921,1779] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [5081,5082,5083,5197,5198,5200,6067,5032,5577,5580,5971,5029,5608,5026,5576,5428,5532,5533,5183,5192,5196,5429,5517,5518,5287,5336,5314,5184,5970,5537,5554,5558,5557,5551,5553,6038,6036,6037,6039,6043,6050,5946,5953,5954,5955,5584,5182,5030,5027,5025] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [6856,6892,6881,6864,6895,6905,4402,4405,4400,4120,6875,4085,4087,4448,4450,6937,4438,4439,4419,4422,4424,4425,4428,4098,4118,4119,4097,4114,4117,4115,4155,4413,4121,4122,4126,4153,4152,5706,5707,5711,5717,5712,5708,5709,5719,5734,5742,5740,5741,5743,6932,6931,6935,6906] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [610,630,631,667,3388,3390,925,2209,936,926,3351,2229,2232,2233,2234,3359,608,609,638,2235,2211,2210,3372,3376,3400,3401,3387,916,3370,596,3426,3434,632,937,3430,3432,940,960,962,934,931,950,951,599,634,665,2226,2198,2199,2200,2201,3392,2203,2204,2207] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [4820,4815,3552,3553,4818,4835,4813,4814,4140,3985,3539,3540,3541,4008,4013,4014,4015,3542,3913,3989,3986,4139,4048,4050,4051,4055,4072,4042,4033,3983,4001,4010,4056,4052] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1327,63,65,1310,53,51,54,423,425,426,445,562,563,1306,526,497,513,554,560,564,568,545,498,499,501] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [5246,5247,6092,5213,6069,5285,5496,5212,5257,5256,5219,5211,5226] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3176,3151,4280,3115,4486,3140,3142,3143,3174,3037,3047,3175,3110,4271,4276,4281,4471] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [5083,5199,5200,6068,5946,5953,5954,5955,5918,6045,6037] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3201,3039,2907] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5162,5155,3606,4854,5127,3605,4876,5125,4858,4849,4850,4853,4872] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        