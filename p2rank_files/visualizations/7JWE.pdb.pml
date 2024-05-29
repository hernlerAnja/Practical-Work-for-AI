
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
        
        load "data/7JWE.pdb", protein
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
 
        load "data/7JWE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4777,4776,4799,3272,4801,4802,4803,1055,1056,1057,1059,3261,3264,3543,3544,461,3240,462,1014,1029,3295,3237,3259,3260,3265,3266,3270,3271,4962,3294,3573,3622,3623,4972,3574,3575,3576,3577,3578,3579,3302,4316,4326,4331,4939,4829,4923,4941,4942,4955,4956,4959,4798,4823,4824,4831,4825,4826,4863,1081,1082,532,1083,542,1052,4827,4828,4830,4906,4899,4915,4904,4903,534,4893,3273,3274,4865,4867,1018,4866,1012,1013,1016,1017,1044,543,1046] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5093,5584,5588,5689,5691,5692,4443,5079,5086,5611,5612,4442,4509,4693,5699,5722,5724,5693,5694,5596,5697,5700,5725,4691,4472,4670,4671,4462,4463,4461,4459,4453,4454,4487,4439,5082,4669,4650,5033,5034,4651,5050,4690,4697,4737,5713,4736,4950,4948,4949,4951,4952,4953,5058,5038,5052,5055] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3531,3863,3865,440,442,906,3891,4295,4296,3533,907,908,909,910,928,4360,870,871,872,930,1161,3537,3563,3530,423,424,1216,1218,3535,1207,1217,1186,1180,1209,4335,4336,4337,4338,4340,4341,4294,439,441,3856,3859,3854,3855,3857,3858,3881,3889,3890] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1510,1502,3082,3081,3079,3080,2561,6097,6103,6128,6159,6160,3074,3068,3091,3078,3093,1509,1511,6158,6225,6217,6221,6222,2500,6127,6250,6214,2148,2149,6213,2151,6207,6208,2489,2496,2504,2510,2516,2520,2521,2490,2499,2724,2722,2723,2759,2760,2732,2522,2560,2758,3040,3043] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5538,5531,5740,5729,5733,5529,6265,6267,5736,5731,5523,6144,6120,6122,6152,6241,6242,4729,6193,6194,6195,6240,4761,5704] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3284,3285,3006,3009,3002,3008,4836,4874,490,2989,489,3216,3246,3247,3248,3249,4842,6054,6079,4835,6056] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [198,205,206,222,2035,1947,2208,2209,197,2206,2207,2210,2211,3404,229,230,3405,2214,177,195,2215,2220,183,187,189,3735,1952,1953,1951] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4718,6171,6186,6185,2166,4701,4996,3674,3681,3684,3685,2177,2179,2178,3703,6163,3656,6164,3356] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [6609,5571,5572,6607,6608,5107,5142,5106,5139,5140,5141,5134,5104,5580,5129,6582,6584,5135,5200,5201,5178,5159,5585,5586,5588] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [918,898,915,916,1029,1031,1023,460,462,1014,1055,1056,1057,1058,1060,900,4331,4332,4341,1012,1013] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [918,898,915,1029,3541,3542,3544,462,900,441,4331,4339,4338,4340,4341] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4260,4243,4258,4242,4232,4233,4239,4369,4259,3974,4235,3949,4283,4285,4537,3983,4380,4381,4375,4237,3981] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2192,3382,1499,3099,1818,3381,1819,2193,2196,1484,1487,3360,3378,2195,1500,3072] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5684,5663,5467,5477,5478,5781] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [619,622,623,1121,1074,608,626,584,577,1099,1106,570] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3670,3992,4982,3967,3964,116,118,3640] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        