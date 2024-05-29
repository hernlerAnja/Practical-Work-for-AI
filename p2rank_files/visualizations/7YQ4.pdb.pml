
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
        
        load "data/7YQ4.pdb", protein
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
 
        load "data/7YQ4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5277,6800,6852,6855,6853,6813,6814,6849,6851,5506,5507,5093,5112,6854,7018,7026,5278,5092,6799,6798,6809,6794,7009,7016,5515,6812] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [8173,8174,8175,8177,8541,8349,8364,8571,8572,8362,8350,8363,8375,8079,8081,8167,8399,8400,8401,8082] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [9057,9073,9075,9076,9177,9179,9181,9202,9074,9071,9273,9172,9165,9554,7984,9239,9252,9254,9072,9200,9201,9199,8252,8469,9567,9568,9569,9570,9056] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [8458,8459,8460,8686,8709,3387,3383,3385,3627,3630,3631,3632,3386,8677,8684,3374,3376,3375,8681,8682,8678,8679,8680,8435,8437,8438,8440,8442,8687,8688,8444,3619,3620,3626,3608,3621,3584,3587,3583,8229] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [7576,7577,7578,7800,7802,7565,7731,8015,8016,7564,7566,7832,7605,7798,7823,7824,7581,7582,7587,7716] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [9864,9868,9888,9891,1192,1196,9893,9894,2700,1159,1166,1171,2702,1186,1176,1167,1168,9859,2688,2689,2690,2694,2691,2692,2693,2695,2699,9856,9858,9857,9863,2679,756,2674,744,745,2523,2716,2718,9892,2513,754] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [8985,8988,9912,9914,9946,9949,9947,4971,4736,8981,9920,9921,4941,4948,4949,4950,9944,9945,9948,4938,4973,4976,4978,4969,9612,9615,9616,9653,9672,9624,9018] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [3673,3676,3678,4609,3431,3432,3433,3427,3435,3439,3440,4611,4612,4614,3612,4607,4602,4591,4550,4549,4547,4548,4554,4557,3665,3425,3644,3636,3642,3686,4532,4535] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [9180,8251,8252,8467,8468,8469,8254,9567,9568,9569,9570,8752,9691,9692,8502,8503,8249,8265,8724,8727,8728,8729,8735,9181,9170,9167] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [6619,6622,6559,6563,6626,6554,6555,6547,6625,6712,6713,6714,6715,5968,6721,6722,5976,6167,6168,6169,5964,5967,6596,6546,6170,6562,6553,6603,6605,5963,5965,5973] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [3154,2888,3153,3155,3172,9826,8717,8718,3169,2903,9607,9603,8715,9861,9882,9883,9853,9598,2887,2684,2883] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [1511,1516,1539,1533,1535,908,1116,1115,1569,1564,912,1496,1502,1505,1507,1561,1562,1655,1658,907,909,1546,1547,1549,917,918,919] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [276,277,570,302,375,618,373,278,159] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [4136,4139,4140,4146,4150,4123,4124,3667,3668,3671,4527,4513,4017,4019,4153,4000,3999,4215,4216,4187,4184,4186] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [3355,3146,3147,8681,8682,9638,9639,3133,2886,2877,9640,3152,3154,3153,8706,8708,3387,3382,3383,3385,3384,3386] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [276,277,570,518,618,278,159] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [5565,5581,5583,5832,5846,5847,5848,5849,5852,5850,5781,5779,5833,6026,6027,6028,5790,5792] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [864,1099,1100,904,770] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [3306,3110,3112,3305,3307,3025,3344,3116,3119] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [9950,2501,2515,2516,2517,9956,2499,4950,9987,2681,9921,9918,9946,2667,2684,9624] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [8510,8522,8422,8644,8660,8546,8548,8549,8550,8398,8400,8401,8643,8583,8540] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [5215,5358,5429,5334,5675,5331] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [8272,8476,8245] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [2850,2851,2996,2997,3025,3293,2968,2969,2970,2998] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [1172,2706,2712,2717,742,2529,2530,943,2734,2735,2736,2733,947,941,715,948,949,956,1147,1148] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [724,9994,9992,9993,491,493,711,269,251,253,722,2537,9959,9960] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [4877,303,310,4816,113,111,4865,4875,117,4866,4844,4838] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [4414,4466,4467,4468,4469,4025,4027,4392,3825,4390,4391,4024] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [4414,4466,4467,4468,4469,4027,4700,3825] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [9008,9949,4751,9943,9947,4749,4971,4940,9948,9936,9977] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        