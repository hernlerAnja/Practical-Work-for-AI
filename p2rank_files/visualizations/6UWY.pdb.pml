
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
        
        load "data/6UWY.pdb", protein
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
 
        load "data/6UWY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3172,3171,3731,3734,3284,3741,8947,8948,8949,8950,8951,4285,4286,4287,4190,3761,3760,4162,3788,4161,3114,3117,3118,3754,8919,3766,3755,3757,3758,3816,3151,3152,4173,4295,3301,4288,4292,4150,4149,3299,3589,3736,3737,3119,3297,3133,3120,3121,3123,3126] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5462,5463,5497,5501,5499,5592,5624,5586,5625,5626,5627,5650,5653,5570,2374,5629,2005,2387,2371,2372,2373,2602,2633,2634,2631,1998,2004,2003,2009,2347,2345,2630,5664,5656,5662,5665,5670,5648,5649,2389,2388,2390,5701] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [8828,8822,8823,8824,8825,8873,8874,8986,9433,9880,9994,9997,9990,9003,9434,9436,9438,8854,9001,9895,9896,9468,9897,9457,9461,9463,9443,9487,9490,9868,9483,9989,9291,9987,9988,8816,8819,8820,9518,9460,9455] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5199,5200,5226,5227,2610,2731,2640,2641,2642,2643,5483,5484,5486,5487,2766,2768,2763,2764,2765,2729,2709,5198,4870,4859,4864,4865,5193,4866,4872,2801,2803,5224,5225,2788,2840,5236,5240,5455,5453,2804,2808,5228,5232] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [1439,1318,1330,1444,1447,738,739,880,881,883,884,885,886,1437,1438,1440,448,450,300,301,908,1347,1346,937,433,890,320,267,266,263,915,904,907,903,319,321,269,270,272,275] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6136,6605,6610,5969,6640,6613,6618,7047,7046,6637,7018,7137,7139,7140,7030,6442,6586,6588,6589,7138,7147,6276,6153,6023,6004,6022,6024,6151,5974,5972,5973,5975,5977,5978,5984] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5528,5529,5530,2667,2663,5571,5572,2669,2709,5483,5497,2640,2643,5538,5531,5524,2668,2686,2710,2711,2712,2049,5573,2034,2674,2677,2035,4895,4910,5547,5550,2636,2630,2657] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3805,3807,4686,4156,4157,4164,4165,4166,3803,8961,8967,8969,8946,4731,4730,4470,4472,4467,4469,4471,4449,4450,4482,4148,4483] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [544,547,572,298,300,289,290,291,292,295,543,510,513,515,1575,1468,1467,539,1460,1461,1463,1464,538,1288,1289,1290,1307,1446,1447] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [6988,6989,6990,7147,7160,6980,7167,7168,7275,7276,7277,6275,7268,7237,7239,7273,7254,7235,7240,7236,6247,6250,6242,6241,6246,7030,7006,7007,6001,6003,5998,6213,6216,6211,5993] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [8843,8844,8845,8848,8851,9100,9838,9840,9996,9997,9125,9066,10089,10087,9092,9097,9091,9096,9061,9063,10017,10018,10013,10014,10011,10010] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4309,4311,4315,3395,4308,3361,3394,3389,3390,3387,4316,3359,3364,3366,3149,3151,4295,4294,4133,3423,3143,3146,3141,3142] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [7306,7321,7322,7308,7310,7022,7005,7288,6655,6657,6659,7023,7013,7014,7525,7575] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1379,1380,1057,1061,1062,972,1015,1373,1378,1051,1054,1055,1086,973,1049,1389,1398,1355,1085,1401] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4731,8890,4730,3805,3807,4686,8967,8969,8797,8798,3872,3873,3875,3877,3874,3876,8972,4715,4720,4471] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [9505,9507,9509,10388,10438,9871,10171,9872,10184,10185,10173,9873,9855] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [9636,9605,9635,9928,9929,9930,9938,9939,5161,9933,9525,9550,9560,9923,9904] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [4388,4328,4387,4434,4570] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6513,6517,5814,6544,6545,5815,6547,6160] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        