
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
        
        load "data/5C8W.pdb", protein
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
 
        load "data/5C8W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1438,1441,1448,1442,1451,1492,3296,3268,3269,3309,3446,3313,3423,3138,3151,3152,3170,3171,3153,3252,2704,2994,2995,3111,3459,3482,3441,3458,3418,1465,1487,3031,3033,3032,3108,3109,3128,3129,1453,1454,1413,1415,2228,3282,3283,1412,3297,3295,3294,3225,3234,3226,3237,3249,1410,2239,2201,2202,2221,2222,2225,2204,2205] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1346,1347,1334,1335,3361,3363,3358,3359,3360,3381,3385,1342,1289,1304,1277,1278,1204,1222,1223,1320,1321,1491,1486,1348,3447,3393,3396,3397,3406,1205,1527,1190,1199,1203,1047,1180,1181,761,1468,1085,1504,1160,3408,1161,1163,3442,1046,1503,252,258,265,232] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [5140,5110,5113,5126,5011,5095,5304,4852,4969,5317,4891,5009,5010,4853,4986,4987,4996,4966,4967,5084,5153,5154,5155,9074,9045,9046,9066,9075,5139,5141,9125,9086,9084,9081,5340,5148,5167,5127,5152,5281,5299,5313,5316] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [5219,5221,5255,8922,8937,8968,8691,8692,8796,9137,9160,5264,5305,5278,5300,8730,8729,5218,5239,5251,5254,8793,8794,8813,8814,8911,8823,8836,8837,8856,5266,5267,5261,9124,9119,9133,9136,9096,8953,8954,8397,8998,9101,8975,8979,8980,8981,8967,8994] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [6922,7092,7106,6813,6961,6963,7292,7047,7059,7062,6812,7269,7123,7228,7233,7251,7256,7104,7105,7119,7078,7079,7080,7081,7100,6518,7268] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [10905,10765,10780,10766,10767,10910,10485,10583,10600,10922,10923,10740,10761,10708,10723,10739,10753,10754,10726,10623,10887,10208,10946,10486,10622,10624] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3204,3207,6757,2039,2041,3626,2907,3627,3629,2557,2905,2906,2917,2918,2919,2920,2921,3591,3593,3595,3612,2576,2026,2098,2038,6993,6994,6995,6996,6745,6950,6755,6976,6989,6959] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [5895,7017,5835,5836,5838,6734,6721,7404,5824,6720,6732,6733,6735,3184,3186,3166,3179,3183] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4395,5541,4397,4399,4675,5539,5540,4674,584,585,1727,609,868,869,610,611,582] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4712,4535,4623,4397,4673,4675,4671,4672,4674,4710,4447,4448,4514,4421,4652,4666,4634,5282,5283,5280,4659] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [611,738,650,651,846,850,828,1467,1469,1470,814,817,866,868,906,853] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1831,5590,552,5644] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        