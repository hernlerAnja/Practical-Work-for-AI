
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
        
        load "data/6GUF.pdb", protein
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
 
        load "data/6GUF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5577,5578,5549,5556,5649,5561,4599,5185,5192,5000,5650,4756,5654,5657,4636,4637,4638,4583,4586,4587,4589,4598,5131,5141,4739,5155,5158,5161,5169,5132,5133,5134,4753,4584] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [248,147,145,92,146,97,100,94,96,98,101,1062,646,663,1063,653,654,661,662,677,703,485,626,643,620,621,246,247,617,619,616,618,93,640,642,1046,1041,1034,108,1140,1142,381,484,1134,265,1135,1136,1139] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [7945,7956,7514,7515,7924,6,41,42,31,28,192,228,610,242,506,507,509,516,518,515] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3440,3442,3449,3417,3441,4495,5048,3007,5021,5030,5031,5033,2998,4683,4719,4720,4531,4532,4533,5125,3008,4521,5022,5025] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [631,1121,627,635,1104,2325,1079,1091,1092,1076,660,7149,7169,7521,457,459,460,470] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [2398,2399,1413,1417,1420,1404,1399,1402,1403,1850,1859,1851,2167,1808,1817,1811,1822,1823,1824,2175,1416,1426,1366,1365,2165,2166,2390] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [3710,3679,3708,2868,3685,3564,3595,3683,1214,4381,4383,4369,3658,3689,1229,1228,2861,2865,3528] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [6280,6431,6400,6424,6421,6402,6239,6173,6196,6238,6426,6282,6384,6387,5907,5908,6343,6395,6399,6344,6346,6345,6364] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [5931,6374,6373,5917,5918,6332,6367,6690,6898,6689,6680,5880,5881,6323,6326,6681,6682,6905,6906,5928,5935,5919,5923] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [2958,3753,3754,3756,3764,2588,2921,2923,3503,3855,3514,3519,3851,3521,3508,2571,2929,2589,2927,2924,2896,2897,2900,3804,3833,3877,3819,3850,3856] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [8363,8384,7428,8271,7407,8026,8028,8010,8362,7403,8015,8018,8020,8021,8310,8320,8311,8312,8261,8265,8267,8260,8263,8340,7095,8327,7430,7431,7465,7224,7436,7434,7096] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [5609,6839,6840,5594,4974,5146,5636,5619,5635,5591,5007,2643,4975,2642,2662,5142,5150,2640,5009,5025,3014,4720] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [7374,8035,8215,8216,8890,8888,8071,8189,8184,8191,8192,8196,8876,8100,8102,8186,7372] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5745,5743,5744,5713,5714,8038,5727,8070,8071,8042,8043,7381,7380,7677,7383,5704,5705,5764,5766,5738] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [8120,8567,6955,6957,6959,8121,5722,8108,8111,6954,6910,6956,6958,6911,6914] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1229,1231,3170,1189,1198,1212,1228,2873,2874,3535,3536,3537,3530,3531,1190,1199,3538,2875,2877,2876,3564,3169,1185] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [3613,3600,2448,2450,3612,2449,2451,2452,3614,4060,3568,2457,2458,3603,3601,2403,4056,4057,4025,2460] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5775,5771,5794,5684,5679,5674,5675,5676,5678,4858,4862,5672,4856,4883,4885,5776,7690,4857] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [7384,7417,7667,7998,7999,8001,8002,8005,8044,7676,5701] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        