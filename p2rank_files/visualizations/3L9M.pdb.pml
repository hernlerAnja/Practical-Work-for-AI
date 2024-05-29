
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
        
        load "data/3L9M.pdb", protein
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
 
        load "data/3L9M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [641,482,1413,1417,1419,1420,1274,1445,1329,1330,1411,1412,1302,1331,1303,1410,1314,1291,2889,2898,2904,2905,2909,886,885,890,750,912,330,480,481,325,326,327,328,329,331,332,333,334,640,1433,1446,2908,2913,1435,300,301,307,2611,335,336,337,934,935,933,2879,2881,313,358,357,359,302,304,465,2582,2584,324,540,498,615,580,581,582,2922,2925,604] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3853,4249,4250,4251,4222,3854,3855,5502,3277,3278,3255,3256,3257,3279,4340,4223,4224,5803,5804,5811,5826,5801,3810,3828,3832,3224,3822,3803,3805,3806,3385,3402,3248,3250,3251,3253,3254,3401,3535,3502,3499,3500,5827,3241,3246,3501,5830,3400,3418,3230,3233,3221,3227,5531,5530,3222,3220,3226,4353,4354,3560,4339,4363,4365,4364,4366,5829,5831,3525,3526,3530,3531,3669,4332,4330,4331,4333,4334,4337,4194,4234,4211] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2941,5337,5339,2945,2950,5299,4068,5334,5335,5349,5314,5316,5310,5315,5301,5215,2965,2966,2967,2968,2970,2949,4092,4093,4094,5336,3635,3637,2940,2942,2935,2936,2937,2944] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [50,52,61,22,23,27,28,2390,2392,4,47,18,19,20,21,48,49,1148,2290,2291,2375,2376,2377,1172,1173,1174,2411,2412,2413,2415,2386,715,717,2374,2373,2385] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4119,4606,4607,4608,5138,5145,4127,4090,4118,4126,4120,4123,4605,4637,4092,4095,5180,5181,5176,4088,4640,5173,5150] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1172,2256,2257,2266,1170,1200,1198,1199,2249,2242,2243,2248,2234,1720,2252,2214,1203,1717,1687,1688] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2457,2474,2472,2473,2405,1085,1088,1090,1054,1078,2452,2453,2367,2352,2357,2361,2362,2363,1079] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [5329,5376,3999,4005,4008,4010,3974,4004,5381,5377,5287,5281,5284,5285,5286,5276,5291] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [5419,5422,3917,3918,5408,5409,3843,4257,3882,3883,3886,3881,5490,3878,5487,5489,5492] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [983,1013,1011,1012,986,2828,2800,2802,2804,2837,1817,1819,1814] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        