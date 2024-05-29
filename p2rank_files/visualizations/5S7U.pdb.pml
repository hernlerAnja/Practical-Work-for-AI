
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
        
        load "data/5S7U.pdb", protein
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
 
        load "data/5S7U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [255,1175,1176,1179,1182,319,1043,1200,1059,1082,125,126,129,131,128,130,254,297,298,299,1070,1071,699,700,728,150,151,152,239,99,100,101,102,658,660,104,1101,1103,645,664,695,667,692,253,251,622,626,247,510,511,1174,641,640,1060,1260,1201,1247,1202] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3320,3330,3331,2963,3358,3359,2376,2381,2964,2992,2956,2959,3302,3303,3434,3342,3427,3428,3431,3432,3433,3426,2533,2430,2525,2529,2531,2379,2428,2429,2377,2755,2909,2517,2908,2913,2926,2928,2658,2659,2894,2890,3333,3532,2935,2932,2572,2585,2587,2589,2403,2404,2405,2406,2407,2408,2409,3453,3454,2614,2532,2613,3525,3526] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [906,908,909,2217,470,915,2244,2245,4092,468,4069,864,865,890,478,486,891,1148,4094,866,943,959,960,961,3624,3625,3626,4063,917,4061,4058,453,4131,4132,4068,4101,4102,3605,3611] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1060,1261,1296,1283,1570,717,1284,1285,1704,1705,1075,1773,1788,1774,1775,1767,715,719,1066,1072,1073,1074] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3551,3332,3333,3550,3963,3964,2982,2983,3335,3326,3837,2980,3562,3318,3549,3320,4034,4047,3543,3533,3534] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3269,2679,2708,2710,3441,2690,2692,2707,2685,2687,3200,2711,2744,2745,2746,3190,3192,3246,3247] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2216,929,930,931,1448,1452,1454,1456,2210,2215,2199,2202,2203,2204,2205,2209,2193,933,1489,1417,1463,1465,944,1444,1458] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [533,233,633,192,634,57,193,195,196,197,198,199,200,194,29,539] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [474,1161,1118,1120,464,494,472,673,672,646,655,512,513,647,648,650,651,649] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4430,4442,4436,4439,4441,3205,3204,3685,3722,3724,3689,3712,3748,3209,3207,3714,3715,3716] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2756,2757,2916,2918,2914,2915,2743,3412,3413,2727,2729,3375,3373,2940,2941,2719] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        