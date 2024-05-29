
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
        
        load "data/4EKK.pdb", protein
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
 
        load "data/4EKK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2748,5345,3731,5346,3730,3742,3838,3358,3758,3867,3843,3844,3845,3846,3859,3860,3869,3024,3026,5360,5368,5366,2751,5361,2764,2766,2768,3006,3007,3759,3718,5384,5352,5357,5363,5371,3836,3837,3333,2738,2740,2741,2747,2788,2760,2769,2927,2762,2926,3035,2735,2728,2729,2730,2734,3307,2911,3059,2909,2910,3306,3030,2787,2894,5029,2732,3329,3332,5031,5032,3311] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [693,1220,1140,732,711,714,715,1141,2411,2413,2414,170,117,120,740,111,123,2451,2449,2447,441,293,1226,1227,1228,290,291,129,130,131,133,138,140,144,145,146,148,151,154,1225,689,1219,150,388,389,406,408,412,351,417,1241,404,2395,2405,2415,276,705,169,112,308,1083,1124,737,738,1112,1113,739,1100,5273,5284,5266,5267,1244,5289,1249,1251,5291,5292,5301] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2189,2190,2201,2202,2208,1019,1021,1020,2191,4320,4327,4333,2082,2084,2085,4330,976,2110,2109,518,520,2233,951,953,954,955,977,981,978,983,2235] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [761,766,803,2421,5265,756,758,759,737,738,739,740,2451,2449,2447,732,2411,2419,2420,2422,2415,2395,2405,793,794] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3357,3421,5038,5039,5040,5067,5037,3355,3379,3382,5013,5344,5346,3356,3358,3374,3376,3377,3370,3411,3412,5023,2729,5029] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1073,1266,1344,1346,409,410,411,5305,1255,401,432,433,1341] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4102,4112,4113,3930,3938,3924,3925,3926,4121,4131,4615,4662,4116,4616,4123,4623,4665,4666,3918,4095,4101] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1382,1724,5297,5300,5295,5296,5298,1762,1720,1722,1733,1760,1359,1357] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        