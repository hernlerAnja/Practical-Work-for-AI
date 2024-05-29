
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
        
        load "data/4Y85.pdb", protein
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
 
        load "data/4Y85.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [459,954,969,1344,375,376,378,380,374,381,382,958,951,940,510,511,625,626,1408,1410,1411,1415,1409,509,611,622,935,387,390,394,458,976,977,999,1000,1001,1320,1321,1329,439,442,463,464,472,473,1418] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2694,2696,2698,2699,3271,3286,3662,3289,3294,3317,3639,3293,3638,2691,2701,2755,2775,2758,2774,3315,2826,2925,2825,2827,2938,2940,2789,3735,3738,3647,3275,2703,2704,2706,2710,3728,3729,3730,3731,3257,3268,3252] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [5631,5608,5600,5601,5603,5607,5973,5974,5628,5629,5950,5091,5100,5949,5958,6044,6047,6039,6037,6038,5566,6040,5257,5013,5015,5018,5019,5589,5585,5582,5069,5087,5012,5085,5086,5137,5138,5242,5571,5031,5598,5024,5027] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [299,307,311,928,338,289,302,303,867,868,869,870,872,853,617,354,634,907,909,873,875] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1114,1115,1117,1118,1120,1122,1156,1125,5744,1373,1155,1146,1081,1112,5712,5740,5743,5745,5746,5777,6922,5749,5751,5753,5785,5787,5748,5786,5809] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2614,2615,2618,2490,3224,3184,3190,3185,3187,3188,3189,3170,3222,3223,2601,2624,2622,2623,2611,2619,1958,1959,1960,1961,1962,1913,1914,1915,1917,3192,3191,2634] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [6316,6317,6319,6305,6318,6856,5855,6310,5852,5853,6311,6853,6854,6855,5828,6864,6338,6850,6860,5823] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2224,1687,1695,1696,1226,2226,2220,2223,2227,1196,1199,1222,1223,1224,1230,2235,2239] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3308,3309,4140,4139,3913,3914,4103,3634,3639,3640,3635,3903,3625,3627,3886] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [5936,5938,5951,5623,5622,6212,6222,6223,6443,6444,6195] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1603,1634,1702,1550,1736,1276,1277,1278,1282] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        