
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
        
        load "data/7W5O.pdb", protein
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
 
        load "data/7W5O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4152,4052,4143,3351,3086,3199,3200,3201,3202,4068,4069,4144,3084,3085,3036,3034,3035,3032,3033,3651,4032,4043,3684,3712,3713,3194,3198,3635,3186,3188,3466,3632,3468,3640,3183,3185,4015,4150,4173,4145,4149,4151,4165,3347,3671,3672,3673,3657,3656,3658,3314,3312,3309,3287,3055,3063,3065,3066,3064,3218,896,911,912,915,4311,3322,3219,4175,4310,891,4305,4308,897,889,3048,3051,3068,3069,3047,3070,3071] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [971,4673,4672,4698,2541,2492,2517,969,2483,2490,2495,4661,4663,4915,4917,4919,4942,4692,1011,1241,580,581,2540,582,1009,1035,1036,1037,1001,1002,589,2537,2547,2550,4699,4700] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [179,186,1190,1287,1288,340,1289,189,1206,1207,1181,1282,1281,604,822,851,323,223,770,773,794,778,170,171,224,326,332,336,338,1290] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [186,1190,1288,339,340,1289,488,450,189,193,194,199,200,202,203,204,1303,448,338,357,196,206,355,452,1153,1170,1290,1448,1311,1313] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1231,1237,941,945,1236,4377,4681,4306,4307,4309,4313,4295,890,4305,4294,4301,4302,939,4266,4267,4268,4317,4407,4437,4319,4269,1228,4272,4274,4679,4867,4404,4410,4414,4682,4683,4680,4684,4279,4280,892,4284,910,859,889,4316] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1816,1819,1817,1406,1407,1408,1410,1421,1477,1812,1515,1548,1552,1542,1545,1445,1447,1433,1457] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [5215,4388,4387,4392,4393,4396,5183,5204,5205,5197,5213,4843,4817,4813,4815,4820,5189,5192,5195,5196,5198,4430,4431,4432,4849] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3830,3832,4105,3791,3806,3827,3828,3831,5357,5359,5361,3833] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4045,4044,4353,4355,3701,4040,3699,4576,3738,4366,4367,4331] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [477,478,2647,2654,2616,1321,514,1330,1336,2601,504,505,506,2629,475,471,2655,2634] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4353,4354,4355,3701,4331,4350,4351,4352,4654,4340,930,931,932] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [837,839,841,1168,1183,1170,1714,1491,1504,1505,1761,1762,1493,1469] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [4187,4261,4460,4461,4462,3340,5524,5525,5506,4251,4253,4259,4458,4211,5508,4195] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3831,5352,5357,5359,3833,3863,3864,5403,5354,4103,4104,3897,3898,3899,3871,3873,3444] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        