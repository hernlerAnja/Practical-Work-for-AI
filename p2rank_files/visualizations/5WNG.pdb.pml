
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
        
        load "data/5WNG.pdb", protein
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
 
        load "data/5WNG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10962,10963,11085,10975,11082,9990,9991,9999,10000,10003,10974,11097,11098,10166,10332,11083,11084,10331,11079,10163,10164,10584,10038,10165,10284,10285,10286,10288,10289,10170,10182,10008,10019,10978,10636,10650,9979,12287,12292,12297,12300,12301,12304,9985,9986,9988,10036,10037,9983,11099,11100,11107,10947,10283,11081,11078,11077,10611,11000,11001,11002,10633,10634,10635,12294,12296,12281,10436,10437,10583,10149,10588,10007,10015,10017,10266] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7959,7972,7973,7038,7039,7040,7205,7952,7953,7956,7957,7958,7457,7951,7848,7849,7852,7859,7874,7876,6859,6860,6862,6912,6857,6910,6911,7458,9100,9101,9102,7510,7524,6853,9095,9090,7507,7508,7875,9092,9094,9079,7509,7530,7531,7533,7310,7462,7485,7023,6882,6893,6864,6865,6873,6874,6875,6877,6881,7837,7821,8105,7975,7981,7163,7157,7158,7160,7162,6889,6891,6886,7056] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [688,638,686,1256,1727,1650,1651,1652,2944,2946,629,635,633,2942,1728,1729,1732,1735,1725,1726,1283,1284,1285,1286,2950,1624,1234,687,799,814,815,816,1233,641,649,650,640] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [6183,4353,6178,6179,6180,6181,11,6189,6177,70,72,74,104,106,3414,47,49,6194,6195,76,42,45,82,3332,3338,3400,3406,3407,3415,3340,35,36,31,40,3749,3962,3772,1,2,6,8,10,7,9,43,3759,3436,6182,6184,3756,3765,3755,3766] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [3857,3858,3863,3915,3916,3917,3864,3865,4043,4045,4210,4954,4955,4958,4961,4962,4964,4957,6000,6002,4513,4514,4515,4853,4881,5995,6005,3862,4028,4880,4879,4956,4463,4315,3867] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [6401,6408,6409,9456,9427,9432,9454,6402,9463,6410,9327,9344,9348,9397,9398,9399,6352,6335,6333,6337,6750,9359,9361,9423,9422,9330,9332,9334,9395,9425,9389,9390,9393,9394,9392,9426,9360,6744,6393,6394,6395] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [7392,7398,7389,9175,6487,6512,6525,6526,6527,6523,6484,9246,6496,6499,7388,9178,9256,2012,2013,2014,9168,9170,2015,2009,2010,2011,1842,1992,6516,2008,1994,1997,9174,9185,9203,9202] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [1881,641,649,650,653,640,672,1749,1757,1878,657,658,1888,670,832,669,671,933,934,936,1750,938,915,916,665,667,1748,1732,1733,1734,1735,688,1597,1635,1612,1613,813,815,816,982] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [184,185,3207,3302,3304,3206,3274,3275,3276,3277,3278,3311,3271,3305,3306,3335,3301,3238,574,526,3264,520,186,177,178] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [3870,3878,3879,3882,3886,3887,3894,3896,4165,4167,4168,4162,4163,4164,4144,4145,4146,4826,4986,4044,4045,4211,4963,4962,4964,3917,4061,4979,4977,4978] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [6296,6266,6269,9535,9536,12550,12551,12552,12554,6271,12567,12568,6300,6330,6304,6306,9453,9459,9461,9527,9528,9521,9880,9870,9876,6299,6297] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [439,3382,3386,3379,3378,3366,3374,3375,3383,3384,3385,4230,4183,4220,6143,4218,4261,6136,426,424,4185,4187,4190,4192,4184,3359] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [7186,7185,6354,7187,7215,6374,6376,6377,6416,6370,9286,9291,9293,7213,7177,7178,7179,7180,7182,7225,6360,6361,6378,6379,6380,9773,9774,7181,9776] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [10306,9503,9504,9505,9506,9500,10305,10308,10311,10313,12516,10304,10351,9487,10341,9480,10382,9496] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [1001,3166,989,991,954,994,995,998,154,137,150,146,3653,3655,955,956,958,960,961,962,963,3652,155,156,157,153] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [9610,10515,12479,12398,12401,10518,10524,9625,9620,9622,12470,12476,12426,12391,12394,12397,9651,9652,9653] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [6533,6534,1995,2008,1996,1997,2000,2548,1965,1940,1941,1938,1969,1967,1935,2005,6512,6523,9195,2547,2544,2540,2536,2559,2538] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [263,275,260,261,3129,1168,3051,3043,3047,3048,3058,3120,3076,301,303] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [10538,12381,10187,10188,10204,12357,12373,12346,10540,12358,12359,10006,10214,10215,10216,10217,10010,10019,10020,10021,10023,10002,9994,10031,10028,10206,12382,12384,12386] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [9907,10157,10174,10559,10046,10047,9905,9906,9928,9951,12351,10537,10539,12350] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [7061,7062,7412,7414,7087,7088,6884,6885,9158,9151,9153,9155,6880,6893,6894,6905,7079,9163,7091,9159] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [6840,6841,9068,3539,3517,6838,3678,3519,3521,3520,9109,9110,6842] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [3962,3958,3960,8,10,3983,3984,4002,3959,4004,4354,4355] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        