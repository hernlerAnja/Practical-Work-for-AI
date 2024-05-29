
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
        
        load "data/6RIJ.pdb", protein
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
 
        load "data/6RIJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5521,5120,5124,5522,5096,4689,4690,4691,5071,5072,5067,5068,5069,5070,5593,5594,4934,4935,5152,4509,4510,4511,4507,4565,4564,4674,5076,5127,5601,4526,5505,5598,5500,5487] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [268,270,141,140,253,699,85,86,87,675,667,83,1084,94,95,1066,703,706,102,1180,101,1079,1100,1101,513,1172,1173,1177,672,655,647,648,649,650,514,646] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [2211,2212,1479,2201,2202,2203,2207,1492,2226,1251,1260,1464,1465,1475,2213,2361,2209,2391,2392,1234,1480,2379,2381,2380,1486,1248,1239,1254,1259,2362] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5900,5901,5907,5681,5675,5680,5655,5886,5896,6812,6783,6813,6800,6802,6801,5672,5669,6633,6622,6623,6628,5913,6624,5885] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [7891,5658,5671,5648,5657,5708,5710,7531,5687,5688,5690,7926,5408,5649,7898,7899,5644,5645,7530,5409,7521,7897,7900,7235,7238] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [2212,2197,2204,2205,2203,1441,1454,1849,1855,1860,1846,1888,1889] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1266,1267,1269,3110,3505,3470,2817,3477,3479,3476,1287,1289,1227,1236,1237,1250,1223,1224,3100,3109,988,1228,3478] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3462,3450,3456,3697,3797,3796,3760,2528,2529,2486,2515,2836,3705,2898,2864,2861,2870,2867,2511,3455,3453,3745,3774,3818,3699,3701,3695] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [348,332,347,3309,3310,3312,3307,3313,3318,3348,3350,3283,583,301,302,303,307,308,349] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [8217,8218,8195,8166,6950,8182,6936,6940,7877,7883,8239,8118,7257,7284,7285,7288,7291,7282,8126,6949,6932,7871,7874] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [3620,3623,3597,3630,4309,4321,3625,3505,3534,3536,3651,4323,2808] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1294,1295,1297,1299,3114,3123,1203,370,371,372,377,397,1195,3146] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [7975,7976,8420,8424,6780,6781,5666,7931,7965,7932,6810,6778,6808,8421] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [3544,3553,3554,3555,2390,2387,2357,2359,4003,3999,4000,1245] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4768,4769,7729,7730,7731,7733,4724,4723,4728,4729,4753,4758,5004,7739,7771,7769] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [2183,1837,2186,1784,1992,1994,2164,2179,2176,2178,2170] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [3510,3544,3555,2390,2387,3511,4003,1245] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2918,2920,2948,2952,2961,3358,3325,3328,3331,3355,3018,3316,3315,3324,2945,2989,2990,2992,2960] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [961,2243,2246,2248,2253,2252,2375,2378,2380,1485,1486,959,2257] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        