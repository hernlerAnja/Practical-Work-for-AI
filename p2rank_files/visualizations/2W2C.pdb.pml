
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
        
        load "data/2W2C.pdb", protein
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
 
        load "data/2W2C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7963,7142,7670,7671,7431,7433,7133,7135,7134,7153,7429,7131,7430,7769,7770,7785,7961,7688,7687,7944,7819,7195,7297,7418,7282,7299,7416,7417,7419,7414,7415,7425,7381,7384,7386,7456,7455] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [11637,11638,11085,11093,11082,11727,11919,11920,11921,11620,11621,11086,11084,11776,11373,11367,11369,11370,11371,11372,11374,11377,11378,11382,11383,11384,11385,11386,11387,11249,11250,11252,11234,11235,11337,11236,11902,11339,11148,11150,11368,11409,2777,2775] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [168,171,471,170,473,474,234,236,172,516,179,705,688,689,706,337,339,982,983,984,322,323,965,421,424,426,790,791,806,458,460,456,457,454,459,496,465,469,455] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [5680,5681,5767,5152,5145,5663,5664,5422,5423,5432,5464,5143,5439,5441,5437,5144,5141,5433,5290,5307,5424,5425,5426,5941,5394,5940,5203,5205,5782,5958,5959,5960,5816] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [9391,9431,9104,9107,9108,9172,9170,9389,9406,9408,10694,9126,9625,9626,9643,9627,9731,9272,9274,9921,9271,9922,9256,9257,9258,9903,9361,9902,9394,9395,9392,9393,9359,9920,9746] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3324,3327,3448,3310,3444,3445,3446,3447,3443,3453,3414,3412,3783,3676,3677,3978,3156,3157,3957,3959,3832,3958,3153,3155,3219,3459,3461,3462,3221,3976,3977,3693,3164,3483,3484] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [10629,10630,10253,10094,10613,10611,10456,10612,10369,10370,10371,10410,10379,10085,10086,10087,10083,10387,10384,10105,10716,10372,10374,10904,10236,10251,10905,10906,10237,10887,10373,10340,10375,10731] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2455,2523,2168,2169,2170,2468,2469,2470,2471,2472,2166,2177,2321,2335,2338,2459,2322,2458,2456,2457,2798,2713,2422,2232,2234,2420,2423,2425,2495,2454,2453,2464,2832,2987,2988,2989,2970,2696,2695,2799,2539,2712] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6410,6189,6191,6378,6425,6427,6408,6409,6418,6276,6413,6277,6375,6380,6290,6411,6412,6414,6127,6130,6419,6450,6753,6754,6653,6654,6670,6131,6803,6671,6138,6769,6950,6291,6293,6951,6952,6275,6933] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [13722,13723,13633,13634,13386,13267,13100,13103,13111,13424,13382,13383,13384,13385,13387,13397,13398,13102,13104,13354,13352,13401,13162,13164,13349,13351,13738,13911,13912,13913,13251,13894,13616,13617,13250,13249] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1335,1996,1994,1995,1975,1977,1469,1470,1468,1229,1231,1318,1319,1422,1420,1453,1454,1455,1452,1450,1451,1492,1694,1174,1167,1163,1166,1830,1846] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4164,4449,4450,4451,4447,4448,4415,4446,4455,4456,4460,4462,4464,4327,4328,4330,4780,4166,4167,4678,4168,4679,4680,4228,4829,4973,4313,4314,4954,4795,4813,4971,4972,4696,4417,4486,4487] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [12082,12090,12079,12381,12083,12382,12362,12372,12373,12379,12101,12363,12404,12230,12334,12332,12364,12365,12367,12143,12878,12244,12366,12368,12247,12622,12605,12606,12895,12896,12897,12756] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [8316,8675,8759,8674,8313,8299,8314,8300,8401,8403,8433,8434,8435,8436,8437,8168,8146,8149,8157,8150,8442,8446,8447,8450,8214,8657,8658,8808,8929,8774,8928,8930,8947,8948,8949,8473,8432,8472] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        