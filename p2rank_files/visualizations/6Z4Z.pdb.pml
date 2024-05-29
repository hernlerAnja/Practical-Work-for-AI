
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
        
        load "data/6Z4Z.pdb", protein
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
 
        load "data/6Z4Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2961,2962,2964,2966,3909,3911,3927,3928,4345,3910,4336,4340,2951,2955,2956,2960,3170,3172,3174,2135,2935,2936,2938,2941,3563,3590,3940,2117,2119,4310,4311,3161,4228,4229,4332,3902,4328,4334,4322,2136,2986,3103,3104,3105,4201,4205,4206,4208,3951,4198,4200,2928,2929,2934,3939,2930,2932,2984,2985,3558,3966,3967,3968,2933,3549,3551,3193,3195,3196,3226,4207,4221,4222,4223,4225,3120,3167,3119,3216,3217,4227,4240,3517,3519,3520,4199,3514,3515,3516,3518,3377,3378,3089,3536,3538,3541] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [6981,5990,6983,6988,6989,6990,6991,6723,6739,6711,6326,6327,6352,6354,6353,6712,5867,5868,5869,5883,5884,5729,5730,5748,5750,5692,5693,5698,5699,6278,6279,6281,6283,5853,6288,5749,5695,5696,5697,6300,5694,6982,6740,6305,6312,6313,6322,6315,5724,5725,5712,5715,5727,5705,5924,5925,5934,5936,6681,6682,6683,7012,6699,6700,7121,6713,6716,7006,5959,5931,6302] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1587,1145,1146,1162,1163,1175,1454,1174,1186,797,798,825,1447,1202,1446,613,1444,779,1203,1445,759,793,1201,784,773,776,1471,1473,1469,1474,1475,1144,461,1467,1448,1452,1453,1486,200,201,219,221,338,220,324,749,750,752,170,173,164,163,169,165,167,168,183,186,190,195,198,176,431,432,460,339,340,354,355,402,435,754,755,430,405,407,1574,1137,395,396,1578,1582,1564,1570,1576,1579,1550,1552] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2159,2148,2150,1924,4323,4326,4919,4908,4415,4422,4325,4689,2129,2130,4315,1926,1930,1931,1597,4886,4887,4888,4907,4906,4318,4682,4388,1565,1567,1568] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [6588,8189,8191,8187,6625,6116,6595,6589,6590,6593,6623,6634,8185,6564,8215,3203,3204,3240,3242,3206,6622,6633,3212,3205,3207,6117,6118,6566] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [6341,6343,6345,6410,6412,6414,7153,6706,6715,7154,7141,7143,6714,6716,7354,7357,7358,7406,7412,7393,7394,7396,7399,6705,6373] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1620,1820,844,812,814,1178,1859,843,881,883,1857,1817,1858,1856,1619,816,1177,1179,1607,1608,1609,1875,1869,1873,1862] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3581,3944,3943,3577,3579,4633,4631,4627,4578,4577,4579,4346,4365,4367,4366,4377,4378] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3934,4578,4577,4579,4575,4633,4631,4617,4627,3581,3577,3579,3646,3648,4614,4616,4620,4615,3609,3608] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2184,2185,2194,2199,2201,3144,3173,3174,2955,2954,3127,3129,2136,2137,2138,2139,2167,2200] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4476,3843,5391,3845,5386,5389,5392,3818,3854,3842,3841,3849,4486,4487,5380,4485,5369,4508] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [6587,6610,6612,6614,6611,8188,8173,8170,8176,8190,6625,7255,7256,7265,7257,8175,7287] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [8203,8200,8225,8223,8224,4248,3867,3869,8189,8190,8191,8192,3269,3272,3273,3275,3277,3858,4250,4252,3274,3276] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [6085,6086,3180,3208,3209,6066,6068,6061,3181,3136,3470,3486,3446,6070,6071,3151,3150,3189] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        