
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
        
        load "data/3E87.pdb", protein
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
 
        load "data/3E87.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [140,147,149,307,150,151,113,114,116,118,119,125,152,2444,2446,2448,291,1228,283,287,289,290,153,164,165,166,106,107,108,110,141,142,144,146,1226,1227,1241,143,145,306,441,686,273,552,684,274,2874,126,134,135,127,129,136,372,373,2700,2702,371,5375,5378,5389,388,389,390,407,1242,1243,387,2659,2656,2658,5362,5363,1221,1124,1107,1116,1218,1219,1112,1114,736,737,738,1140,2403,2413,2417,2418,2419,2409,2411,1220,713,709,2876,2877,5337,5347,5352,5355,5357,5340,1721,5354,5358,5361,5365,5368,5369,1379,1380,5373,2878,5356,5366,5370,1354,5383,5372,5374,1249,1251,5296,1761,2863,3228,3229,1719,2864,3240,3239,2861,2885,3238,5279,5289,5290,2698,2670,2671,2699] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2944,2945,2946,3096,3882,3883,3896,2962,2798,2800,2791,2789,2795,2796,2797,2799,3028,2801,3341,3779,3876,3880,3881,2819,2820,2821,2943,2761,2762,2763,2765,3875,3762,3795,3873,3874,3796,3393,5066,3769,2807,2802,2773,2815,2768,2770,2769,2771,2774,5101,5103,3904,3044,3906,3042,3043,3060,3061,3062,3207,3346,3364,3367,3368,2928,2929,3340,2938,2942,2961,3748,3749,3732,5443,5432,5438,5440,5441,5442,5435,3767,3771,5427,5421,3765,5446,5445,5455] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4150,4161,4165,4697,4699,3972,4135,4146,4147,4129,4157,4158,4155,3957,3958,3960,3964,4703,4660,4663,4651,4650,4652,4653] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1427,1506,1510,1491,1492,1493,1495,1302,1303,1502,1503,1295,1500,1426,1480,1317,2042,2044,2048,1998,1997,1996,2005,2040] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2685,2684,3299,3300,2727,2728,2729,2730,2731,2732,2726,5151,5153,5138,2686,3298,5152,2813,2829,2814,5141,5142,2953,2954,5162] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [159,174,2478,2480,2484,2486,2487,2483,158,298,2507,299,645,2497,2496,2498,644,75,71,72,73,74,29,30,76,77] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4100,4007,4009,4011,4414,4416,5454,5448,5449,5450,5452,5463,5451,5453,4034,4374,4376,4412,4410,4096] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2863,2923,3227,3228,3229,1719,2864,3240,2897,2885,1717,1718,1711,1723,1713,1721,2922] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2403,2413,2417,2418,2419,2420,764,766,736,737,754,756,759,761,762,791,792] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        