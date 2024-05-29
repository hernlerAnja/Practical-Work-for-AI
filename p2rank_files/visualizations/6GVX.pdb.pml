
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
        
        load "data/6GVX.pdb", protein
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
 
        load "data/6GVX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1,3,3645,3646,9,11,13,21,22,23,24,28,3449,3450,3462,3146,3456,3463,3464,3465,3466,3473,3448,3590,3145,3148,3149,36,37,3147,3668,3827,318,321,328,332,333,603,604,335,357,203,217,199,201,322,60,62,3177] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1071,1163,297,650,511,512,1158,1161,1165,645,1043,1072,1164,694,697,1172,313,314,1169,435,410,671,675,677,664,668,686,689,175,178,181,184,210,209,310,169,174,2584,171,170,172,173,2585] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3087,2953,2954,2955,2956,4424,4425,4426,4427,4792,4789,4791,4815,2710,3085,4824,2709,2975,2976,2706,2705,2919,3086,3088,3509,3526,3528,3565,3566,2917,2920,3093,3096,3089,3092,3515,3516,3517,3518,2974,4759,4763,4787,4783,4785,4771,3545,3506] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2590,2592,2591,2597,3110,162,163,154,159,3122,3127,3489,3490,3104,3119,3120,3461,3582,2600,2606,3129,2603,203,3076,3078,2740,2742,2948,3579,3581,3583,2947,2839,3584,3587,2630,2631,2725,2595,3095,3097,3083,3101] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [655,1091,1148,2348,2350,2351,2320,2347,1108,1098,1100,1110,1111,2370,2369,1129,2368,2346,2332,282,276,281,2377,656,659,660,663,679,1099,652,654,517,538,540,518,2321,473,483,502,481,484,2061,2324] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2426,2427,2438,2439,3037,2437,2763,1256,2440,714,715,716,2640,2478,2479,2453,1046,1048,2444,2452,1044,1045,2624,1032,2622,2747,2620,2746,2749,3036,2760,2750] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3290,3293,4373,3289,4371,3545,3546,3547,2933,3302,3303,3305,3548,3549,2934,3264,3266,3298,2924,4376,4379,4380,4418,4419,2920,2921] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3540,3215,3242,3165,3167,3501,3274,3214] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1031,1032,1015,1194,1248,1171,1172,381,1195,1193,1055,2427] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1863,1894,2026,2027,2028,2030,959,1862,1866,1867,924,947,955,956,925] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        