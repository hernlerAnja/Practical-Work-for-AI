
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
        
        load "data/4TWP.pdb", protein
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
 
        load "data/4TWP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2483,2485,2333,2360,2469,2839,2841,2359,2482,3369,3370,3371,3374,3376,3280,2332,2710,2711,2846,2863,3293,3294,3295,2308,2309,2304,2305,2306,2307,2335,2337,2334,2925,2327,2336,2338,2339,2881,2890,2891,2894,2874,2860,2862,2866,2637,3378,3384,2842,2612,3386] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [167,168,195,317,318,320,194,1087,1088,1163,1089,165,169,170,171,172,173,174,685,684,143,144,163,505,635,636,304,640,657,142,660,668,654,656,141,1060,1168,1069,1074,1164,1165,1169,1170,1171] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3341,3307,3310,3323,1282,1283,1285,3340,2449,2450,3356,3304,2851,2855,2847,3311,3312,358,359,360,397,3357,343,344,368,369,2686,2737,1208,1262,1264] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3745,3781,3785,3782,3749,4069,4032,4044,4045,4070,3058,3083,3045,3046,3051,3047,3779,3027,3049,3025,3028] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2083,850,852,840,841,843,821,1547,1543,1577,1579,1580,1583,1868,1836,1842,1843,1867,1830] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3341,3320,3340,395,396,397,368,1215,1207,1260,1262,1264,1202,1212,1208,393,1209,1198,423] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3324,2934,2936,3007,3331,3332,3333,2885,2932,3316,2886,2887,2888,1271,3314,2970,3006,3008,2967,2929,2966] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3375,3376,3377,2332,2485,2360,2499,2550,2489,2548,2577,2582,2611,3390,3391,2576,2545,2546,2547,2574,2580] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1219,3065,3067,4319,4321,4322,1234,4316,4317,3090,4293,4320] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [167,319,320,405,1187,1184,1169,1170,1171,1192,370,371,374,365,378,376,324,334] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        