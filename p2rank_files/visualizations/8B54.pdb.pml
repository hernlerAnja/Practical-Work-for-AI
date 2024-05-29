
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
        
        load "data/8B54.pdb", protein
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
 
        load "data/8B54.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4523,5473,4529,4520,5085,4679,5078,4524,5109,5113,5116,5093,5502,5573,5485,5065,5501,5102,5057,5059,5060,5061,4694,4696,4576,4577,4578,5578,5581,5574,4538,4539,5055,5056,5058,4531,4530] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [257,259,623,486,1136,1137,1138,621,242,618,619,620,628,641,1064,648,1065,676,656,665,672,1043,1048,1141,1142,1144,1036,677,679,141,101,102,83,86,87,140] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2945,3361,4462,4623,4659,4957,4472,4473,4946,4954,4955,5049,4972,4459,2935,2944,3393,4945,3384,3385,3386,4438] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [508,509,517,520,7363,7364,7798,7773,222,7358,7365,35,36,535,612,34,186,25,7797,1,2] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [8065,8066,7950,7952,8014,8015,8036,8039,7885,7886,8042,8046,8013,8041,8737,8011,5651,5653,5654,7919,7921,7918,7225,5667,5668,7215,7217,7221,7222,7223,7224,8741,8727,8728,8739] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3473,3654,3653,4325,4313,3634,3538,3540,3624,3627,4329,4327,2802,2796,2805,3509,1216,1217,1230,1231] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3800,2836,3454,3709,3466,3701,2508,2525,2516,2526,3759,3765,3801,3749,3778,3822,2867,2895,2860,2861,2864,2858,2833,2834,3699,3698,3705,3703,3449] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [6598,6614,6247,6250,6256,6262,6263,6261,6604,6613,6605,5865,6291,6290,6289,5856,5854,5855,5842,5859] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1810,2171,2177,2178,2179,2186,2187,1819,1824,1825,1827,1405,1813,1852,1853,1854,1419,1418,1422] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [8190,8234,8115,8121,8160,8171,8173,8177,8111,8161,8162,8113,7861,7866,8212,8213,7878,6945,7252,7279,7073,7277,8117,6944,7314,7280,7283,7286,7253] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [5629,5628,7526,5637,7229,7230,7231,5667,5668,7233,7895,5638,5651,7920,7921,7892,7893,7886] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3107,1251,1253,1230,1231,1232,1191,1200,3106,2814,2811,3483,1188,1187,1192,3480,3481,3509,1201,1214,3474] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4780,7539,4787,5695,5696,5698,5699,7530,4809,7562,5604,5596,5727] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1097,1096,461,1081,1122,1123,1106,2337,632,637,1078,629] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4898,4932,5559,5560,5518,5543,5534,5069,5087,5074,5515,4899,6764] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        