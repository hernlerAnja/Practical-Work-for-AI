
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
        
        load "data/7XYH.pdb", protein
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
 
        load "data/7XYH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4020,4021,4045,4019,4033,4034,4005,4163,4164,4165,4166,4182,4183,3382,3149,4158,3269,4315,4317,4318,2202,2203,2204,2205,4325,4299,4300,4191,4190,4192,4344,4346,4035,4036,4037,3107,3111,3112,3116,3133,3122,3120,3124,3346,3104,2187,2193,2194,2195,2191,2170,2171,2172,2232,2192,2231] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [383,399,519,1408,1409,1410,1413,1414,1416,397,398,503,504,505,894,1405,1407,738,740,904,900,873,875,877,341,1295,333,334,336,896,1282,1311,1309,1310,922,903] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3148,3149,4059,4060,4061,4158,3083,4155,4157,3269,3625,3627,3628,3488,3490,3086,3254,3255,3084,3087,3644,3650,3653,3672,4045,4032,4163,4165,3271,4159,4160,3089,3133] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4400,4406,4407,4408,4412,4416,4929,4935,4936,4931,4932,4293,4368,4392,4698,4701,4296,4288,1555,4417,4418,4419,4710,4712,4963,4965,1951,1949,1950,1618,1583,1617,4938,4302,4304,4305,1961,1944,1948,1642,1546,1553,1554,1552,1668,1669,1937,1940,1943] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1440,1441,1442,1255,1415,382,520,521,1416,595,596,1432,592,537,633,590,591,597,598,362,361,366,370,368,369,373,534,602] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3546,3583,2981,2963,2979,2958,3596,3597,3545,3578,3325,3300,3327,3328,3326,3301,3323,3360,3363,2966,3353,3354] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1295,1271,1440,1441,1442,1255,1415,382,1416,357,362,361,354] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4051,4052,4050,3846,4556,4069,3734,3736,3761,4582,4025] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1956,2240,1957,1958,2200,2199,2239,4333,4334,4694,4687,4690,4700,2201] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2927,2898,2924,2926,4211,4237,4239,2905,2907,2910,2915,4205,4206,4259,4260,2936] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        