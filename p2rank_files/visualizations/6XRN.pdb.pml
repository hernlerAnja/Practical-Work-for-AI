
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
        
        load "data/6XRN.pdb", protein
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
 
        load "data/6XRN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9912,6767,6768,6772,6774,9984,968,6773,6775,6776,9988,6714,906,2141,2142,2143,2196,2221,2222,2223,2162,2220,2194,2195,2216,2217,6715,6711,10044,10045,10039,10042,10043,10046,1020,2198,1071,966,9915,6752,7397,8919,7398,7399,7400,7401,7402,7403,6755,7332,7333,8941,8942,8943,8944,907,1911,2164,6750,6751,7485,7486,9861,9862,6813,7484,9787,9913,9914,9976,10197,9974,2224,2225,10237,9917,10227,10228,10234,9916,10195,9783,2272,9972,9973,2271,10096,1052,1054,2270,9971] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [11615,11616,11617,11619,11620,11462,9179,9605,10426,10429,10479,11463,10413,9321,11651,9773,9775,11638,9645,9643,9689,9691,9604,9281,9203,9204,11653,10215,11584,10430,9714,9715,10239,9774,10379,10380,10211,10212,10213,10214,10216,10395,10432,9841,9772,10506,11417,11418,11430] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [6402,6403,5218,5760,6401,6419,6421,5684,5281,5282,5759,12474,6381,6326,5702,5699,3131,6391,6404,12596,6400,3119,3147,4461,4462,4463,12690,12530,12739,5236,5251,5230,5232] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [8952,1932,1934,8026,8868,8869,8870,8025,8997,7381,7379,7972,2519,2521,2540,7311,7956,7959,7958,872,839,840,1962,1964,2469,2470,7305,7306,7325,7307,869,871,870,7309,8954,8951,8953,8963,8964,1930,1947,1931,1933,7326,7329,7330] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [4576,386,387,4567,4585,402,403,4022,4034,4039,4229,384,363,378,4590,441,4579,7040,7708,7709,367,7710,351,427,4569,7039,426,4127,4056,4058,4568,4052,4110,4113,4121] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [9987,10000,10058,967,10059,12372,12373,965,6246,12371,6772,9989,968,6773,9939,12417,6250,6795,6725,6726,6727,6669,6252,6222,9996] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [11666,9758,11667,11294,11313,12515,12724,12725,12726,12727,11323,9823,12559,12560,9754,12558,12577,12633,12634,12576,12663,9755,12623] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [13390,13392,13393,13394,10632,10605,10606,10630,13372,13447,13448,10654,10656,10639,10534,10537,11416,11418,10535,10536,11387,11388,13371] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [8943,8963,8964,905,907,1947,1911,1909,1943,7333,871,2162] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [10397,10400,10410,10449,9502,9503,9528,9559,9575,9554,9572,9527,9542,1911,1910,8977,1897,9474,8976,8944,9558,9413] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [11652,11191,11189,11247,11324,9897] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [10148,11015,11064,11128,11132,11052,11055,11131,11133,11069,11070,11071,2267,10119,1138,1137,10116] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [12630,9735,4479,4480,4504,12592,12608,12609,6947,7557,7616,4502,4503,7615,7652] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [11760,11763,11764,11844,11246,11603,11604,11563] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [9045,8206,8789] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [6418,5823,5824,5826,5821,5756,6442,6446,3101,3106,6412,6431,6400] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        