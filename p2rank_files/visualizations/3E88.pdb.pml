
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
        
        load "data/3E88.pdb", protein
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
 
        load "data/3E88.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1222,1216,1219,1220,1221,1235,1237,1229,1215,551,1212,1213,1134,712,2405,2406,703,552,709,691,5318,5321,5322,5324,5325,5326,5335,1243,1245,5312,5300,160,151,152,153,154,164,165,166,289,686,687,113,114,115,274,108,110,291,306,418,441,442,473,667,669,307,290,666,141,142,143,144,145,146,136,140,129,147,118,119,125,126,149,150,116,5339,407,386,387,388,389,385,1118,738,1107,1108,1106,1214,1135,1093,713,5307,5301,5323,1094] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3741,3753,3742,3743,3373,5380,5381,2753,2754,2761,5387,5392,5397,5379,3850,3851,3854,3855,3856,3857,3729,5398,5400,5401,5402,5403,5404,5405,2780,2781,3769,3849,3770,3878,3872,3024,3880,5415,3023,5406,3321,3322,3848,2800,2801,2924,2926,2909,2745,5040,5041,2743,2923,2925,2941,2942,2760,2784,2785,2748,2749,2750,2751,2795,2782,2775,2776,2778,2777,2779,3076,3870,3049,3048,3053,3021,3187,3326,3186,3344,3338,3347] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [5328,5329,5330,5332,5333,5334,1348,5343,1373,1374,5316,2858,1755,2680,2681,2682,372,373,134,2639,5338,5321,5325,5335,5315,5317,145,146,371,133,387,5314,1713,1715,2844,3218,3219,3220,5250,2841,2854,5239,5249,5256,5258,2646,2650,2651,2679,2693,2676,2678,2849] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3321,3322,3848,2801,2924,2926,3077,3185,3187,3320,3108,3864,3850,3851,3854] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [737,754,759,762,791,764,766,2412,2414,736,738,757,756,2413,792,5301,2411,2440,107,2403,2397,2407] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2933,2934,2665,2666,3278,3279,2709,2710,2711,2712,2794,2707,2708,2809,5116,5125,5126,5136,3280,2664,5127] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1504,1989,1297,2038,1291,1494,1496,2034,1421,1992,1991,1994,1999,2002,1995,1474,1311,1485,1486,1299,1303,1298,1468] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4625,4673,4624,3932,4630,4634,4637,4626,3946,4120,4121,4109,4110,4103,4627,4135,4139,3926,4131,4129,4677] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [643,644,159,645,31,2473,2481,2490,2492,2477,75,76,77,71,72,73,74,30,29,158,174,2474,298,299,2501] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3397,3389,3391,3392,3399,5047,5048,5049,5032,5042,5075,5046,3371,3372,5381,5022,2742,3426,3427,5358] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        