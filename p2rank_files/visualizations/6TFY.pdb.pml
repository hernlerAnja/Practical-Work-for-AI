
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
        
        load "data/6TFY.pdb", protein
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
 
        load "data/6TFY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [526,533,536,2651,3305,1172,527,1189,681,684,3256,3263,3286,3288,680,700,557,562,560,1170,2686,2687,2688,1146,1147,2705,1140,2802,2799,2642,2640,522,524,512,569,570,3262,568,565,566,2645,2792,2798,2680,2683,2684] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3339,3319,3321,3322,3327,2615,3329,3332,2488,3350,3239,2341,2292,2339,2340,2288,2290,2293,2771,2772,2486,2773,2775,2482,2790,2811,2814,2676,2677,2682,2691,2791,2692,2789,2697,2777,2779,2785,2471,2473,3320,3337,2839,2841,3240,2845,2846,2838,2490,2489,2289,3224,3210,3326,3328] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1204,673,674,1123,1203,1205,1206,1210,1211,679,672,360,358,343,209,210,211,352,356,359,1108,1212,191,193,720,723,727,728,1124,751,160,162,163,159,165,166,168,696,691,1094,497,1216,655,657,573,559,1213,1220,1224] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2619,2630,2162,2624,547,916,917,927,949,2638,2639,2640,2641,948,2009,2012,2013,2011,2035,2041,2138,2141,890,2163,2686,2623,2625] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [520,521,523,3065,506,32,12,15,507,3032,3033,4116,4114,4115,3004,3043,3005,3006,4138] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2178,2386,2198,2180,1152,1153,2425,763,2186,2230,2231,2232,2407,828,2401,2422,2404,866,824,827,864,865,2183] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2656,519,3064,3065,978,531,976,2637,538,2649,3092,3060,3085,3061,3062,3063,3094] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2619,2630,2162,2624,547,927,2642,2638,2639,2640,2641,2163,536,1172,1168,1169,1170,2686,2687,2623] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3545,3548,3965,3967,3963,3964,3400,3579,3966,3687,3770] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1445,1668,1584,1860,1862,1706] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        