
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
        
        load "data/5WNE.pdb", protein
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
 
        load "data/5WNE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1568,1665,1666,1557,562,568,561,2880,2870,2875,950,1661,619,620,621,1166,1167,1660,732,564,566,1219,2887,1216,1217,1218,1584,1192,1585,2864,2877,2879,1189,1183,1019,1171,1194,582,583,749,748,571,573,574,1667,1668] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [3183,3176,3179,3181,3182,3217,3214,3215,3216,118,3209,3240,453,459,463,3206,3207,3169,3170,110,111,462,465,1057,3109,3110,3116,3154,119,3095,3111,469,470,473,507,476,665,666,3142,3144,680,1064,3099] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [5827,4419,4861,4417,4418,4758,4786,5829,4785,3820,3821,3822,3948,3950,4862,4863,4866,4367,4368,4151,3763,3767,5825,4420,3769,3772,3775,4868,3933,4372,4365] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [6659,8908,8910,8912,7681,7682,7291,7315,7264,7263,6716,6663,6717,6829,7268,7116,7047,7757,6658,6668,6670,6671,6665,6718,7314,7765,7654,7762,7316,6844,6846,7011,7763,7758] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [9828,9830,9958,9829,9771,12096,10426,10428,10766,10427,12084,10451,12089,9775,9956,9957,10376,9782,9783,9791,9792,9780,9777,12112,10877,10874,10375,10869,10870,10228,10793,10772,10794,10402,10398,12073,12086,12088,10448,10449,9941,10380,10403] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [7195,7198,7194,9048,6293,6290,6305,7205,7204,1925,1942,1932,1773,8963,8966,8967,8968,8970,6331,6332,6333,8994,8995,8977,1943,1945,1947,8960,8962,9039,9036] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [869,871,1667,1681,1682,1683,1530,1668,1690,765,583,749,748,574,1545,1546,1568,1666,600,866,867,868,870,872,590,595,596,598,849,586,591,602,1814] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [10892,10899,10877,10890,10876,10875,10078,10080,10081,9813,9782,9783,9791,9792,9962,9974,9830,9958,9955,9957,9811,9795,9799,9800,9807,9812,10058,10059,9809,9810] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [7643,7787,7627,7911,7917,6966,6969,7780,6688,6693,6695,6699,6680,6683,6687,6843,6845,6846,6862,6968,7778,7763,7764,7765,6670,6679,6718,6700] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [9313,9320,9326,9327,9328,6136,6072,6102,12348,6076,6112,12346,12342,9245,6113,12352,12356,9251,9253,6105] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [6573,9122,9124,9121,9123,9125,9217,9177,9178,9176,6550,9149,9151,9153,9146,9140,9141,9139,9185,9181,9182,9187,9174,6570,6566,6567,9126] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [4868,4882,3791,3792,3805,3807,3808,3774,3775,3783,3784,3787,3966,3796,3798,3801,4050,4070,4072,3802,4051,3803,4869,4884,4891,3822,3947,3949,3950] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [6454,12301,9295,9292,10133,12308,10098,10099,10100,10105,10097,10103,6453,9298,9279,9291,10143,9288,10141,10142,9272,9278] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [6983,6991,6993,6984,7021,7029,7030,7031,9085,6179,6180,6183,6186,9581,6160,6167,6175,6176,7003,6985,6986,6987,6988,9078,9565,9566,9567,7001,7002] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [9189,9190,9191,9223,9224,9225,9255,6143,9137,6141,6201,6133,6207,6208,6158,6215,9248,9246,9119,6216] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [888,889,890,891,892,894,3557,3558,3559,896,3077,932,933,934,924,86,83,89,70,79] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [5949,4125,3284,3264,3270,3271,3279,3280,3283,3287,3290,4124,4133,4134,4135,4166,4095,356,357,4088,4090,4089,372,4097] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [9979,10330,9812,10332,12167,12168,9786,9823,12138,12148,12166,12169,9820,9821,9822,9813,9815,9963,9966,12151] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [12357,12358,12362,12363,6040,6049,9897,12364,9915,9917,6077,6079,10266,10267,10268,6078,9873,9896,6041] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [4442,4473,4482,5818,4450,4408,5730,5740,4793] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [9152,9153,9140,7155,7156,6761,6805,6803,6823] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [10490,10492,11989,10456,10416,11999,12002,10458,10453,12077,10450,10479,10481] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [664,3144,3145,1059,725,708,1058,662,687] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        