
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
        
        load "data/6XV9.pdb", protein
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
 
        load "data/6XV9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [415,413,2801,374,2805,2807,3226,3724,3714,3723,3725,3719,814,809,806,811,2797,2798,2800,421,340,419,409,416,2812,2811,3206,2802,2808,2813,1417,1433,1434,700,2730,2731,2732,663,666,667,2799,1388,1395,1396,1397,1398,2720,2614,2629,2616,1416,1418,670,3198,3200,3201,3202,402,406,3109,403,407,354,3090,3092,3043,3715,3760,3761,3054,3055,3058,3059,3744,3745] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1469,1472,1456,450,579,580,581,578,574,576,604,611,577,12,13,24,25,26,27,612,1470,1471,1510,1511,1607,547,550,549,1477,1478,1479,1437,1299,1301,1443,1444,1445,1446,1453,1454,638,1293,1295,1306,1308,1283,1284,1287,685,1438,613,1317,1318,1320,1455,1560,1305,1629,1249,1248] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3699,3700,3240,3243,3249,2825,2826,3197,2703,3192,3084,2838,3085,3193,2834,3175,3774,3775,3794,2651,2652,3793,3785,2704,2840,3778,3779,3776,3784,2655,2654,3213,3215,3211,3224,3218,3239] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1372,1373,1467,848,851,1448,1447,691,692,613,1444,1449,821,823,826,832,847,857,312,434,432,433,800,801,446,612,1451,1457,1458,1452,448,581,262,311,263,259,260,442] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [841,843,845,3235,921,889,891,3323,3324,3352,3351,918,919,920,916,3281,3283,3285,3224,3228,3230,3231,3232,3233,3708,3403,3404,3406,832,3405,3735,3736,3234,3236,3237,3730,1066,3309,3310,3311,3308,1076,1077,1079,3312,3313,1078,931,932,930,957,893] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3780,3783,3005,2969,2970,2973,3003,3004,2968,2965,2966,3773,3776,3626,3628,3768,3077,3030,3576,3575,2996,2995,2997,2961,2962,2460,3620,3622,3610,3614,3085,3765,3771] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1227,1230,1794,2325,2321,2332,2315,2318,2319,2336,2320,1759,1254,1229,1252,1253,1255,1761,1763,1758,1757,2328,1771,1772,1773] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3581,4648,4642,4645,4659,4085,4088,4098,4099,4100,4647,3580,4090] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        