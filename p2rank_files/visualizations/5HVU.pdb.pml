
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
        
        load "data/5HVU.pdb", protein
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
 
        load "data/5HVU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [38,45,46,49,50,78,42,40,51,53,3748,6356,6357,13,15,4327,4329,6367,3937,52,54,55,10,4,8,11,16,17,3952,79,6358,6359,6360,6361,6362,3741,3742,3745,3779,3725,3731,3314,3316,3318,6377,6355,3382,3383,3389,3390,3308,3391,3377,88,112,110] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [639,693,805,2931,2933,2935,1646,1647,1280,2920,1234,1257,1252,1256,1229,1230,1723,1648,1082,1083,1724,977,1728,1731,1620,1282,1624,820,644,694,641,642,634,635,640,2926,2936,1729,822] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4932,4829,4855,4856,4857,4491,6121,6123,6126,4439,4438,3892,3893,3838,3891,3834,4933,4004,4461,4443,4465,4466,6125,4938,4940,4830,4833,4937,3840,4019,4021] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4168,6321,4160,4161,4162,4163,4166,3359,3362,4177,445,3355,6314,429,430,432,444,3343,4206,4237,4195,4196,4205,3335,3340,3341,3342,3350,3351,3397] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3877,3855,3858,3863,3867,3868,3869,3870,3874,4139,4140,4142,4144,4955,4962,3872,4938,4939,4940,4037,4025,4020,4021,3876,4952,4953,4954,4956,3871,3873] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [951,957,959,987,996,997,954,156,198,3101,3103,3642,3644,952,958,3629,3631,159,160,161,163,141,143,152,136,178,3155,3128,192,3118] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [266,307,308,309,2985,2979,295,294,2986,2988,2995,2984,267,269,3066,1161,1164,281,3054,3057,3012,3045] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [930,931,1746,822,838,933,935,1730,1744,913,668,669,671,1753,1729,1731,821,670,672] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3213,798,760,761,779,797,799,781,3225,3215,1121,1122,1105,1106,1107,1109,739,737] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3465,3507,3508,3506,6272,6203,6206,6197,6202,6213,6230,6275,3480,6263,4370,4373,4369,6284] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1655,1311,1312,1345,1346,2836,2924,1270,1305,1307,1332,1335,2923,2845,2846,2849,2851] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4394,4395,4042,4043,4393,3875,6167,4029,3883,3884,3885,3886,6185,6191] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [4029,4414,4415,4365,4392,4394,3901,3902,4012,3806,3761,3762] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2035,2036,2037,2578,2598,2599,2600,2582,2071,2074,2607,2608,2602,1503,1522] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        