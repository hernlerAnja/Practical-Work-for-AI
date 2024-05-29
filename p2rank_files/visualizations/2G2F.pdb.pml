
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
        
        load "data/2G2F.pdb", protein
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
 
        load "data/2G2F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1126,205,713,1139,1140,1112,206,744,164,174,158,207,153,704,709,706,708,712,1231,1233,1070,1125,1071,1212,1215,1141,180,181,182,183,184,185,186,388,1080,1236,1224,1226,1227,1228,1235,1216,559,687,692,714,557,558,688,328,330,331,332,1222,316,315,324,4406,4408,4409,1075,1087,1088,1090,1127,1115,1354,1076,1078,1079,162,151,154,740,747,736,737,1377] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2919,2358,2360,2362,2377,2378,2379,2488,3284,3293,3298,3387,3388,3396,3397,3400,3401,3402,2496,2859,2631,2844,2860,2500,2487,2841,2656,2501,2502,2503,2504,2912,2916,2909,3311,3312,3313,2731,2864,2886,2729,2730,2884,2908,2881,2876,2878,2880] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1881,1891,1892,1878,1879,1880,1592,1629,1632,1628,1631,1596,1916,895,874,1649,892,929,903,1626,891,893,897,873] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [4053,4064,3801,3804,3075,4088,4089,4304,3764,3768,3065,3067,3063,3064,3069,3796,3798,3043,3045,3046] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1076,1077,1078,1314,1316,1251,1252,1058,1061,1065,1073,1530,1531,1532,1075,1315,1490,1312,1313,1489,1499,1369,1329,1492] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2990,3025,2947,2977,2978,2985,2988,3026,2950,2952,2903,2905,2906,2954,2979,2982,2945,2899] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3859,3954,3999,4161,4156,4159,4004,4160,4158] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        