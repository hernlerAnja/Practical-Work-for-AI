
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
        
        load "data/4CFV.pdb", protein
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
 
        load "data/4CFV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3123,3124,3538,3576,4826,5182,4629,5197,4666,4667,4654,4655,4656,4644,4649,4653,4626,4627,4628,3559,3531,3561,3562,3529,3563,3114,5174,4862,5170,5171,5179,5274,5180] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [688,690,687,554,300,301,302,446,689,691,692,1216,125,118,1115,1215,1143,1144,747,555,115,174,175,176,285,109,110,723,724,106,107,696,713,710,712,716,731,732,733,1127,1217,1220,1221,1222,1223] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [5290,5307,4882,5733,4718,4772,4717,4773,4725,4726,5310,5333,5334,4714,5280,5281,5283,5285,5284,5286,4896,4898,5045,5806,5807,5810,5813,5712,5717,5705,5148,5805,5734,5341,5348] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1309,1293,1300,1310,1312,1305,3652,3690,3691,3720,3722,1296,1279,1280,1295,3806,3809,3785,2993,3276,1266,1267,3285,1265,1269,1270,1271,3286,3663,3664,3665,3656,2992,2990,2991,2977,2981,2984,2985,2989,3837,2975,3653,3816,4514,4516,4528,4507,4502,3811] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [7428,7429,7076,7077,697,702,705,270,266,580,263,527,529,530,1202,1201,700,560,562,564,540,2422,1185,1160,1157,1172,1173,729,7057,7061,7058,7060] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [576,577,579,7422,265,7423,229,59,5,8,9,588,585,7846] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [7958,8139,8137,7283,8807,8808,8815,8817,7288,5883,5899,5900,7991,7993,7274,7992,8022,8024,8108,8111,8803,8118,5890,5885,5886] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1504,1497,1500,2499,2500,1492,1483,1484,1488,1941,1939,2482,2491,2256,2262,2263,2264,2271,2272,1895,1897,1940,1900,1510,1447,1446,1906,1911,1912,1913,1935] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5294,5750,5288,5291,5296,5299,4867,5762,5764,5765,5156,5154,5295,3130,5174,4863,2778,2758,2756,2759,2762,2763,5791,5792,5121,5123,5124,5775,6755] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3960,4004,3932,3930,3931,3940,3648,3883,3880,3881,2705,2704,3946,3074,3982,3983,3646,2687,3046,3012,3039,3040,3043,3635,3641,3016,3891,3885] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [7932,7937,7940,6986,7003,7004,7339,7342,7345,7373,8262,8284,8285,7338,7311,7942,7336,8193,6994,6990,8248,8232,8233,8183,8234,8187,7132,8182,8189,8245,7943,7948,7950,7315,8185,8306] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3738,3739,3741,4183,3740,4152,4180,4184,4187,2573,2574,2576,3728,3730,2516,2558,2560,2561,2559,2556,2557,3727] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [8489,6822,6865,6866,6867,8032,8030,8041,8043,8029,8042,8454,8482,8485,8486,8488,7998,7997,6864,6818] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [5902,7288,7289,7290,7585,5869,5883,5899,5900,7993,5861,7964,5870,7992,7291,5860,5920] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [125,128,134,301,302,445,1236,1246,1222,1223,133,141,138,407,408,409] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2234,2236,2237,1885,1888,2245,1835,2043,2200,2222,2223,2229,2045,2074,2238] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5005,7560,5034,5932,7589,5930,7621,7598,5032,5007,5010,5927,5830,5831,5832,5828,5834,5835,5947,5006,5012] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [391,3265,397,401,374,3321,3322,3319,394,145,402,409,3299] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        