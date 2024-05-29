
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
        
        load "data/4IZ7.pdb", protein
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
 
        load "data/4IZ7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1291,1295,498,1289,1290,1296,1298,1297,196,191,192,494,496,206,343,458,360,459,463,207,197,204,182,189,190,227,226,787,800,1214,326,782,335,339,341,347,209,169,171,798,1189,1178,1198,1190,1384,819,820,1215,831,859,803,810,811,860,1319,1320,1314,1311,453,455,1368,451,449,450,1161,1382,1378] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3109,4052,4053,4054,4055,2958,2963,3261,3124,3219,2962,2973,2972,3224,3225,3229,2970,3918,3935,3946,3955,3971,4047,3972,3107,3542,2992,2993,3105,3591,3579,3580,3620,3547,3092,3558,3560,3563,3578,4173,3221,4068,3260,4069,4076,4078,4077,4046,2948,2955,2956,2978,3113,2939] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4309,4305,4307,4133,4110,4285,4143,6140,4148,4157,4256,4140,4111,3903,3904,4165,4168,3907,4342,3888,4257,3908,4090,4091,4092,4167,4098,4107,4162,4151] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [5881,5887,5884,5886,5895,5648,5672,5680,2452,2328,2326,2327,2359,2437,2329,5705,5706,5711,5737,5876,5668,5693,2315,2338] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3801,3802,5260,3766,3776,3733,3735,4007,3731,3734,3736,3775,3697,3730,5215,5217,5213,4015,3999,3350,3358,3800,3359,3774] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1009,1007,2421,2423,1044,1045,590,2467,1258,979,599,1017,1018,1019,977] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4215,4216,4202,4204,3942,4425,3606,3608,3932,3933,3947,3948,3931,4180,3943,3645] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1687,1688,1423,1425,1640,843,1179,1174,1185,1186,1395,841,846,848,1394,1175,1190,1191] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3583,3627,3984,3990,3992,3660,3661,3628,3708,3710,4003,4004,4008,3991,3679] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2286,1885,2288,2255,2248,1848,1854,1840,1844,2207,2243,1835,2210,2232,2238,2241,2244,1833,1832,2051] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [867,868,899,898,991,1251,951,953,1227,1220,1222,1246] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5712,1092,1100,1542,1102,1116,1114,1115,1103,5743,5744,5746,5710,5711,2331,2332,5878,5879,2491] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5020,5026,5032,4995,5031,5030,4619,4618,4839,4998,4999,4671,4640,4626,4634,5036,4630] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1557,1150,1151,1476,1477,1478,1472,1474,1526,1447] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        