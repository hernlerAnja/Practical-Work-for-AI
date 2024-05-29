
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
        
        load "data/6XLO.pdb", protein
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
 
        load "data/6XLO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1114,1115,3180,2526,2528,611,612,616,2527,1065,1066,1067,3164,230,233,2937,2939,236,237,238,240,613,619,458,461,462,463,470,2677,1099,3130,3131,3132,2559,492,495,494,450,2560,2557,1076,3140,1072,1075,3162,3163,637,1098,3139,3141,3138,851,852,853,850,2298,874,2300,2296,872,2290,2293,2297,3179,2917,2535,2915,2681,2916,2918,2884,2702,2684,2703,2678] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [3202,3203,3204,2326,3196,3191,3193,3197,3200,3034,3035,3036,3037,3031,2440,2444,2445,2447,3023,3083,3205,3206,2721,2722,2717,2749,2228,2180,2176,2177,2182,2230,2183,3222,3223,2696,3208,3111,3113,2695,3114,2552,2667,3190,3184,2668,2471,2472,2473,2653,2543,2500,2980,2981,3018,2442,2463,2464,2465,2712,2710,2229,2312,2311,2320,2324,2651,2690,2689] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [631,630,1018,1141,1142,1143,1144,1048,1140,116,117,120,122,123,624,625,1137,1128,1131,266,168,169,170,260,264,486,487,602,603,250,251,252,1139,1157,1158,381,685,686,645,1049,656,657,652] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [953,400,1190,958,979,399,435,398,377,381,1184,375,379,1182,373,1179,1180,406,1125,1126,1128,1131,1132,1119,408,1135,966,969,970,971,972,478,915,916] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1008,1019,1021,1022,1251,1252,1018,1254,1253,1255,1138,1139,1147,991,1169,1148,1151,1159,1260,1170,1163,1164,1239,1240,1231] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        