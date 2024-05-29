
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
        
        load "data/6P5M.pdb", protein
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
 
        load "data/6P5M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10764,4853,4854,11193,11205,11207,11185,11188,10280,25,10316,10285,10293,10296,10298,10299,10301,12324,11217,11219,10,13,3956,3957,3958,10621,10638,10640,10767,3955,11238,10579,10582,12329,10575,24,10769,10772,10773,10776,10794,10795,10304,10305,10306,10761,11194,4237,4240,5985,5986,4855,5982,4864,12419,12420,12422,12418,10286,4279,4298,4422,4425,3962,3963,6080,6076,6077,3964,4431,4434,3974,3976,4296,3954,3951,3959,3944,4896,4895,4430,4452,4436,4451,4233,5987,4843,4846] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [7583,7111,7114,7115,7116,9229,9230,9232,2812,7605,1685,7586,7604,9226,9228,1693,1695,7449,7450,7574,7577,7582,7385,7389,7392,8048,7431,3207,7128,7126,7446,7448,7108,7090,7103,7106,7107,7096,3208,7092,7998,7995,7999,8003,9138,9139,1252,1255,1726,2816,2817,1725,786,787,788,1128,1684,1682,1683,1673,1676,1260,1283,1257,1261,1707,768,781,784,785,773,774,789,792,793,1109,7109,3202,3205,1126,1063,1067,1070,8015,8017,1282,1264,2906,2907,2910] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [1659,703,704,705,1660,650,666,667,652,655,812,1269,1273,1274,1632,1299,1633,827,1246,1247,1739,1740,1744,828,1747,1251,1030,995,1741,646,2953,2955,2948,2958] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [10324,10162,11172,12465,12467,12469,10216,10811,10781,10785,10758,10759,11250,11251,11171,11256,11144,10340,10341,11259,11155,10165,10158,10164,10179,10167,10169,10178,11145,10217] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [4829,6127,4830,3816,3822,6124,6126,3825,4909,4910,4911,4914,4917,4802,4803,4469,3982,4416,4417,3820,3874,3875,3836,3999,3997,3998,3827,3837,4439,4269,4421] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [7149,7027,7150,7421,7568,7569,7981,8061,6968,9276,9278,9279,7585,6972,7026,7134,7151,8060,8069,8066,7965,7573,7591,7596,7982,7621,9270,9280,7954,6979,6988,6989,6974,6975,6977] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [3183,3192,3194,9575,9576,9549,9572,1137,1138,1139,558,561,555,554,540,9568,9565,3172,3175,3178,747,749,750,764,7380,7381,9546,9550,590,592,3193,3197,746,769,770,805,7379] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [10340,10341,11259,11155,10179,10182,11133,11408,10338,10357,10187,10191,10201,10186,10506,11272,10459,10460,10462,11281,10507,11117,11258,10194,11403,10196,10197,10442,11273,11274] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [6388,6312,6314,6315,6389,6390,6364,6365,3710,6387,3934,6380,6309,6310,6311,6313,4309,3731,4307,1,3919,3920,3716,3724,3725,3728,3760,3762,4,6] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [8082,7268,8091,7252,7004,7270,7272,7007,7006,6997,6989,6992,6996,7269,7271,7274,7927,7943,7151,8068,8069,7965,7150] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [968,969,971,974,976,1014,9952,9953,972,973,970,9951,9955,150,155,156,157,1012,1013,986,9973,215,3129,3137,171,172,175,168,193,167,177,1004] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [4100,5048,3854,3837,3840,3844,4119,3852,3855,3849,3845,4099,4117,4930,4931,4932,4939,4915,4916,4917,4116,4118,3999,4120,3998] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [3337,3341,3327,6766,6767,6768,6769,6274,4146,4174,4139,4140,4141,4142,4144,4138,4110,4184,4156,4183,3338,3342,6783,3345,6266,6272,3325,3331,3320] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [6883,7459,7461,3208,7460,7069,7071,7072,7086,7091,7092,9494,9502,7108,3224,3225,6862,3209,3226,9497,9499,6880,6876,6877,6914,1058,7110] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [461,448,445,446,10481,10483,11304,10480,10498,9682,9657,9675,9700,9679,9722,9662,9663,9664,10524,10525,10526,9678,9683,9684,10488,10516,10479,10523,10486,12649] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [5057,5058,3837,4775,5066,5061,4930,4939,4813,4915,4916,4917,4790,4791] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [948,683,685,946,947,949,929,930,1760,1761,1762,1764,1769,1878] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [7296,7298,3615,3617,3618,6493,6497,6498,6499,7289,7333,7334,7335,7290,7326,9459,6472,6479,6489,6490,7336,7306,7307,7308,6494,6537] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [684,1745,1747,1621,1620,1768,1769,1746,1585,1601,1605,685] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [10066,10102,10104,10070,10067,10073,10262,10052,35,36,31,34,10276,10261] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [9828,12539,12540,12529,12530,12533,9795,10690,12611,10693,9791,9802,9829,9830,12557,12599,12602] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [3454,3493,3465,6236,3458,4348,4351,6158,6224,6165,6154,6155,3492,6182,6227] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [6643,6644,6645,9339,9340,9343,9350,6606,6617,6610,9421,7500,7503] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [9726,9749,9750,9751,9752,9755,9720,9724,9748,219,241,242,243,244,245,248,9730,250,223,217,273,213,9757] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        