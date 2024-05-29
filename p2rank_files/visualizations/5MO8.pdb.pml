
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
        
        load "data/5MO8.pdb", protein
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
 
        load "data/5MO8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1862,1868,1869,1870,977,979,1005,1331,1346,1348,1330,1345,1329,1914,973,974,975,978,1917,953,952,1155,1111,1125,1080,1083,1124,1302,1305,1306,1304,1843] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4067,4068,4069,4070,4634,4635,4608,4604,4632,4633,3889,3890,3770,3735,3737,3738,3805,3806,3837,3847,3845,3884,3843,3848,3722,3739,3740,3741,3778,4094,4096,4110,4111,4113,3879,3717,3718,3876] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [773,774,775,911,910,1437,1439,1441,1440,1311,1324,1314,1315,1316,1317,905,906,908,434,433,435,375,376,538,419,553,554,555,1442,1445,1448,915,931,539,1340,946,950,951,952,934,935,937,1338,1339,370,371,372,373,368,369] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3184,3200,4210,4211,4213,4089,4076,4205,3717,4103,4104,3715,4202,4206,3140,3133,3134,3135,3138,4080,4081,4082,3304,3699,3137,4105,3540,3318,3673,3675,3539,3671,3676,3199,3303,3538,4204,3319,3320] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3032,3035,3643,3592,732,733,3375,3376,3377,780,782,781,739,740,738,3624,3625,734,3011,3008,3412,3405,3409,3411,3006,3002,3007,3023,916,3012,3014,3374,3403,3400,3404,3644,3645,3402] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1448,390,1284,393,1300,571,419,554,555,1447,380,389,414,629,402,406,409,397,398,636,575,630,666,1472,1474,1473,1315,1316,1317,381] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3171,3174,3395,3394,3184,4212,4213,4237,4239,3179,3183,3155,3167,3158,3162,3163,3164,4080,4082,4238,4364,4049,4065,4376,3336,3401,3431,3319] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3568,3039,3042,3074,1194,2656,2658,1188,1192,1193,2655,3256,750,751,1198,1200,1195,3046,1227,70,72,1189,1226,3073,3566,3567] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [71,1218,61,2639,2644,2622,1760,1754,1768,1769,1772,2597,44,50,2645] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [180,187,189,1493,1519,1521,192,197,1488,1540,1487,208,218] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        