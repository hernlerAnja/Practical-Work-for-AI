
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
        
        load "data/4I3Z.pdb", protein
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
 
        load "data/4I3Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5494,5773,5477,5512,5517,5607,5610,5612,5613,4547,4548,4554,4555,4558,4565,4819,5635,5636,4818,5626,5627,5628,4569,4572,4574,4593,4594,4727,4729,4712,5606,4710,4711,4851,4852,5605,5533,4955,4577,5509,5505,4536,4537,5534,5145,5148,5133,5141,5174,4542,5087,5088,5089,5090,5092,5093,4956,4538,4540,4695,5111,5114,5117,5125] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [640,257,258,259,1158,1160,1064,1157,1054,1080,1081,1052,680,681,688,692,639,635,637,634,661,242,664,141,87,140,89,83,721,656,658,1056,695,638,1152,1153] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [398,258,259,1024,1159,1160,1064,366,365,274,276,102,119,116,1056,95,263,1182,1040,1041,1173,1174,1176] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [6127,6162,6164,2807,3218,3219,6203,6204,6202,2793,2795,2798,2805,2802,3184,2817,2818,6106,6105,6135,6137,6174,6136,6171,6112,6128,6131,6134] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [7325,7350,7352,8190,7353,7942,7948,8281,8282,8180,8182,8231,8304,7146,8230,7931,7936,7356,7359,8246,7015,7016,8244,7007,7387,8208,8229,8239,8240,6998] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3733,2872,2897,2899,2900,2903,2934,3731,3737,2906,3793,2562,2563,2873,2875,3478,2545,2549,2520,3486,3489,3483,3729,3495,3778,3851,3776,3777,3786,3806,3787,3791,3727,3828,3829,2554] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5661,5430,7963,7964,7965,7598,5657,7589,7919,7920,7926,5700,7599,5702,5669,5670,5683,5720,5660,7302,7303,7305,7956,7990,7991,7304,7306,7962,7288,5694,5698,5699] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [2841,2844,3683,3502,3503,3682,3569,3567,3538,3536,1237,1230,1232,1233,2832,2835,1247,1245,2845,4352,3629,3662,3631,3655,3656] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [8083,8108,8136,8805,8082,8115,5685,7298,7302,7955,7956,7989,7991,7290,7288,8020,8135,8022,7294,7297,5700,5686] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2851,2852,2853,3505,3510,3511,3512,3473,1208,2849,2850,3136,3145,3146,3466,3467,1203,1202,1204,1207,3537,3538,1217,1230,3503,1245,1246,1216,1249,1247] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1438,2177,2193,1840,1835,1870,1826,1421,1434,1435,2183,2184] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [5874,6645,5887,6279,6288,6646,6636,6637,6644] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3344,337,3342,3346,346,3343,3380,3382,561,314,292,572] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1182,364,366,122,334,335,359,386,388,1175,3150,3182,3159,1275,1279,1274,1278] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4817,5631,5632,5635,4814,5628,5640,7612,5731,5732,7603,4812,4841,4839,5748,5727] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [5014,7835,5025,5023,7795,7796,4790,4799,7828,4744,4745,7797,7799] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        