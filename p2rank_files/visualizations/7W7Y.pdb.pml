
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
        
        load "data/7W7Y.pdb", protein
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
 
        load "data/7W7Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [159,161,672,1100,696,668,128,129,130,671,155,156,183,157,182,665,663,667,131,132,133,134,699,686,679,308,304,1190,1192,1193,521,646,1099,651,290,291,292,628,300,1084,1085,158,160,162,1194,1187,1080,1071,1174,706] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3210,3219,3223,2323,2319,2320,2321,2322,3224,2290,2291,2292,2454,2317,2318,2345,2344,2825,3220,2838,3239,2845,2835,3238,2810,2812,2834,2804,2806,2807,2866,2869,2312,2294,2295,2296,2293,2297,3331,3329,2470,3330,3332,2785,2790,2453,2767,2462,2466,3312,3313,3325] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [376,3063,4213,4214,4248,2651,575,3084,4211,4247,3083,3085,4222,4186,4219,568,403,360,365,366,367,2643,2644,592,593,611,612,594,609,2637,3061,3090,3087,3092,2635] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1211,1279,1039,1197,3274,1301,3266,3267,1278,1280,1274,2978,2979,1272,4296,2986,1207,1210,1212,1215,413,1201,410,411,412,4272,4274,3010,3012,3013,378,381,419,1186,382,383,384,385,380,415,407,414] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [888,850,851,856,857,863,2098,861,852,830,832,854,862,833,1558,1592,1594,1595,1562,1598,1858,1857,1845,1882] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2990,2995,2969,2971,2989,2991,2993,3729,3731,3733,2972,4021,3983,3984,3996,3997,3734,3737,3697,3736,3002,4022,4237,3701,3027] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1279,1035,1037,1039,1197,1320,1343,1034,1299,1301,1280,1316,1461,1332,1334,1460,1292] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2876,2878,2904,2905,2829,2831,2832,2951,2952,1303,1306,1307,2908,2873,2903,2911,2914,2916,3268,3245,2880,3260,2828,2830,3250,3275,3277,1297,2825] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [404,456,569,570,571,5,4223,403,400,401,4283,4282,4247] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3459,3455,3471,3473,3178,3439,3431,3173,3174] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [737,741,690,692,739,811,812,813,693,772,775,777,765,771] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4094,3937,3494,3791,3792,3887,3653,3656,4088,4090,4091,3932,4089,4092] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        