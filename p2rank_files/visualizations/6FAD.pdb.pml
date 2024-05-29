
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
        
        load "data/6FAD.pdb", protein
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
 
        load "data/6FAD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1667,1647,1668,1669,7035,1241,1248,1249,6435,593,591,592,621,622,625,626,658,615,652,7456,7457,6407,6408,6411,6412,7027,6444,6410,6374,7459,6376,6378,6379,649,7455,7478,7458,7487,588,590,1650,1649,1648,1651,1676] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [4560,4561,4562,10369,10370,10371,9943,4540,4134,4141,4142,4144,9950,9951,9934,9927,9328,9324,3485,3486,9351,3515,3518,3519,3507,3508,3514,3545,3483,4542,4544,4539,4543,4541,3481,4556,4567,4569,4570,10348,10351,10350,10352,10353,10376,10377,10378,9290,9327,9316,9323,9292,9294,9295,3542,10401,10379,10380] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3468,3469,3350,3351,3349,4493,4494,4498,4500,4244,4492,4216,3822,4245,3199,3201,3208,3167,3792,3794,3638,3639,3817,4510,4497,4499,3347,3156,3221,3222,3334,3159,3158,3814,3791,3793,3788,3789,3798,3811,3815,3809,3161,3155] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [315,454,457,458,328,329,895,898,905,746,922,924,1351,918,921,576,1600,1601,1605,1606,1607,1599,1352,440,441,265,929,268,274,261,262,263,267,901,745] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [9598,9599,9600,9602,9445,9447,10053,10301,10054,9312,9313,9601,9603,9157,9158,9160,9029,9030,9031,8967,9143,8965,9623,9631,9597,9607,9626,9620,8964,10302,10303,10306,10307,10308,10309,9278] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [574,575,1617,1619,544,546,548,1616,576,1606,315,456,471,472,551,458,515,513,516,306,308,289,303,304,305,309,286] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [7415,6684,6686,6243,6244,6362,6687,7409,7410,7414,7416,6242,6241,6531,7408,6532,7137,7138,6681,6682,6227,6691,6710,6704,6113,6115,6051,6114,6715,6707] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [6089,6090,6092,6094,6100,6101,6091,6304,6242,6361,6668,6257,6258,6337,6301,7415,6243,6244,6362,6093,6095,6331,6332,7426] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [9005,9006,9008,9010,9011,9007,9009,9246,9217,9215,9218,9247,9248,9277,10319,9250,10303,10308,10309,9174,9017,9160,9253,9173,9016] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [9010,9011,2254,9247,9210,9212,2375,2380,2377,9248,10321,9245,9269,2256,9243,9266,2289,2285,2290,10329,2253,2279,2370,2282,9213] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [6093,6095,5270,5268,6294,6296,5263,7428,5148,5149,6331,6332,7436,5182,5180,5171,5172,5177,5178,5183,5228,5175,6094] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [10579,9929,11495,11498,9892,11496,9916,9917,9918,9924,9925,9954,11497,8065,11507,8075,8076,8072,10586,10585,10571,10577,10578] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [7001,7013,7038,7678,7684,7685,7686,7002,8602,8603,8604,8605,7677,7679,7692,7693,7004,10958,10965,10966] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [3468,3350,3351,4500,3441,3408,3775,3196,3199,3201,4512,4510,4511,4499,3439] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [6083,5840,5842,5843,6267,5862,5283,6307,6308,5877,6265,5876,5280,5282] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [2388,2389,2390,9223,8999,9000,2372,2371,8778,8760,8758,8759,8793,9181,9183] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [10029,10030,9666,10678,10719,10721,10468,10478] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [1409,1410,1449,266,916,351,350,921,927] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [8865,8871,8875,8877,8878,8879,8880,8817,8881,9514,9516,9517,9518,9520,9521,8816] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [10749,11714,11715,10707,10710,10714,11266,10742,10746,11728,10726,11717,11277,11713,11710] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        