
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
        
        load "data/4BCK.pdb", protein
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
 
        load "data/4BCK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5137,5154,4590,4593,5157,4587,4735,4632,4633,4634,4591,5149,5151,4751,4892,4752,5131,5127,5128,5129,5130,5132,5133,4922,5573,5574,5545,5188,5646,5647,5650,5651,5652,5645] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [268,1062,105,698,705,97,93,96,99,690,691,731,150,151,102,1167,1069,1074,1170,1090,1091,1162,267,409,646,648,650,265,269,645,1163,1164,252,671,668,670,674,681,682,689,513,644,647,654,512] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [45,46,196,561,7435,7436,7851,7849,32,35,232,7874,7875,7876,6,7,8,543,544,546,535,638,537,7883,7846,7845] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3004,3442,3443,3419,5029,5044,4539,4540,4526,4529,4502,4679,4538,5017,5026,3003,4715,5018,5121] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3817,3819,3823,3816,2954,2713,2926,2542,2575,3858,3859,3806,3807,3808,3836,3880,3759,3757,3853,3524,2584,2585,2571,2574,2919,2920,2923,2892,2917,3507,3517,3512,3515,3518,2893,2895,3767,3763] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [7352,7016,7017,8254,8239,7145,7386,7349,7351,8195,8238,6998,6999,7355,7358,7324,7009,8251,7003,7006,7944,7950,7956,8290,8312,7954,7328,8199,8189,8191,8193,7939,7949,8268,8291] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2873,3532,3166,2870,2871,3567,1217,1218,1226,1227,1230,1240,2869,3536,3537,3538,3539,3566,3156,3165,1213,1214,1216,3496,3502,3541,987,3497,3540,3498,3495,1259,1277,1256,1257] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [1484,1483,2426,2434,1229,1238,1244,1224,1249,1477,2429,2419,2431,2423,2445,2447,2473,1241,1476,2199,2209,1472,1489,2200,1250,1485] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [7934,7973,7970,7971,7972,7303,7304,7597,7598,7301,7302,5470,5696,5697,7928,7929,7927,7931,7338,7587,7930,5709,5734,5760,5762,5739,5742,5700,5701,5710,7964,5723] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [6640,6495,6261,6259,6518,6253,6116,6127,6610] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [522,658,1149,1132,676,1104,1107,663,2360,1119,7090,687,488,487,7070] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [3405,3406,3413,3414,3407,4529,3440,3441,3442,3419,566,567,569,565,3369,3370,3380,3383,4520,304,3408,3409,3410,3411,3412,582,302,589,594] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [6319,6328,6678,6362,6335,6361,6685,6686,5924,5927,5928,5876,6677,5915,6363,6676,5931,6322] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [6276,6388,6389,6420,6417,6436,6416,6272,6235] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [7539,7519,7715,7196,7205,7540] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [2796,2795,3283,3091,2764,3087] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1451,1437,1438,1400,1401,1843,1887,2201,2202] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2609,2639,2638,2641,2643,5003,5141,2607,2992,5004,5005,2592,2593,2988,2610,2594,5632,4955,4956] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [7259,7639,7260,7261,7256,7258,7683,7684,7686,7664,7667,7678] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        