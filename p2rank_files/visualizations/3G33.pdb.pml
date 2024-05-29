
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
        
        load "data/3G33.pdb", protein
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
 
        load "data/3G33.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3580,3610,3612,4035,4058,4066,3788,3812,7899,4064,4065,4036,4037,8113,8114,8115,8116,8112,8141,8143,7896,7891,7892,7897,8117,7664,7665,7697,8135,3814,7873] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [1085,701,1109,80,1108,67,68,117,687,118,104,72,507,240,1173,1181,93,96,1180,81,89,223,665,666,1080,1082] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4325,5259,5266,5193,5258,5194,5165,4165,4166,5170,5167,4181,4592,4750,4760,4751,4752,4308,4202,4203,4157,4779,4786,4804,4805,4153,4152] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [2102,2103,1754,1757,1759,1747,1749,1748,1941,2074,2075,2077,2068,2081,2069,2105,1961,1982,1983,1751,1962,1957,1952,1984,1641] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [6156,6154,6190,5715,5832,5833,5836,5834,6042,6047,6046,6158,6067,6068,6076,6188,5844,6166,5839] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [2677,6801,2668,2699,2700,7645,7646,7678,7679,6819,6820,7467,7463,2680,2682,7497,7501,2675,2669,2672] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [6762,6765,6782,2716,6767,6753,6784,3594,3560,3561,2735,3382,3384,3378,3416] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [5284,5291,5285,5286,5293,5360,5357,5358,5124,5123,5458,4182,4173,4184,5134,5137,5408] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [3326,3327,4435,4355,4406,4407,4706,3261] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [1463,1464,1471,1466,988,1493,2182,2184,1467,985,987,1465,984,989,986,2179,2183,959] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [5546,5551,5552,6264,6267,6269,6273,5578,5044,6268,5547,5550,5070,5071,5073,5074,5069,5548,5549] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [7459,7448,7451,7455,7812,7453,6842,7726,6874,6843,7702,7701,7725,7729,7835,7778,7767,7776,7791,7808,7834,7721,7723] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [7142,7141,7143,7149,7155,7158,337,7160,7166,300,301,302,306,318,335,7097,312,313] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [1002,456,458,460,1001,967,969,994,965,477,479,453,454,6415,6416,6379,6441,993] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [217,535,185,186,531,532,20,22,163,540,7399] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1181,96,98,81,84,1085,80,1068,1093,1069,1052] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [7411,321,322,621,350,270,638,7412,357] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [4107,4625,4628,4105,4617,4302,4280,4248,4271,4620,3314] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [4813,4815,4966,5200,4841,5201,4907,4967,4843,4844,5236,5222,5235,4814,4965,5658] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3831,3832,3834,3800,3869,3892,3486,3473,3478,3484,3472] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        