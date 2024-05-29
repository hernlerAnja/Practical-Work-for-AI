
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
        
        load "data/4FX3.pdb", protein
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
 
        load "data/4FX3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7772,7774,7775,7806,7805,7807,517,519,532,534,516,510,607,7782,178,7373,214,25,16,17,1,22,35,36,7814,7363,7372,507,508] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3346,4598,4441,4444,4453,4454,4455,4434,4435,4436,4420,4939,5027,2936,2937,4930,4931,4933,4634,4635,3368,3369,3370,3371,4940,4942,538,3335,3337,3339,4955] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4654,4551,4552,4553,4521,4511,4513,4514,4520,4908,5043,5476,5548,5455,5460,4509,4502,4503,4508,4506,4505,5477,5079,5087,5094,5448,5055,5060,5063,5071,4671,5556,4669,4539,5035,4805,5034,5036,5038,5039,5549,5553,5033] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [108,119,674,81,660,667,1032,1030,87,234,132,133,643,635,75,79,659,1135,1139,1134,1040,1056,1057,1028,251,1142,623,640,613,614,615,485] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1201,3503,2376,2378,2359,3493,3492,3491,3532,3533,2389,2387,1405,1415,1418,1210,1213,1214,1215,1216,1190,1191,1194,1196,1425] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [5606,5608,6846,5852,5842,5843,5845,5846,5847,5628,5604,7927,7930,6808,6810,6790,6791,6574,7939,6818,7969,7970,6564,5623,5624,5629,5627,5390,5832] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [8051,8732,8742,8744,8746,8730,7230,7234,7894,7895,7226,8070,8071,7233,7224,5621,7929,7959,7961,8044,8045,8041,8047,8039,8046] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2525,2526,2887,2850,3693,2829,3699,3695,3689,3691,3755,3738,3739,3768,3812,2507,2508,2512,2483,2859,3434,3439,3445,3785,3789,3790,3791,3451,2853,2856,2825] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [7295,7261,7289,7292,7875,7288,7265,7286,7323,8126,8116,8167,8118,7870,8166,8195,8239,8216,8217,8218,8212,8213,7881,7887] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1207,3494,3458,3459,3642,3523,3525,3609,3612,3588,3644,4311,4313,2794,3619,1208,2790,2798,2788,1206] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1380,1794,1829,1827,1828,2132,1785,1788,1801,1799,1800,1349,2138,1346,1347,2139,1394,1383,1385,1393,1405,1418,1419,2148] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [6228,6566,6221,5846,6574,6575,5774,6212,6565,5807,5811,6263,6254,6256,6255] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [5048,5534,5535,5507,5508,5509,5493,5492,5052,4916,4918,4883,4884,5518,5505,5506] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [543,3334,3336,329,320,3328,280,555,278,297,277,553,3296,3297,3298] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3993,2388,3543,3544,2385,2386,3530,3531,3533,3542,2391,2394,2395,3990,3989] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        