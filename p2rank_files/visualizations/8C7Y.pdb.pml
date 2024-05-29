
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
        
        load "data/8C7Y.pdb", protein
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
 
        load "data/8C7Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3315,3409,3411,3432,3437,3429,3430,3405,3406,3398,2355,2628,2629,2631,2358,2363,2488,2489,2490,2630,2627,2743,3385,3386,3391,3392,3395,3399,2664,3402,3389,3238,3239,3177,3178,3233,3236,3237,2662,2663,2653,2624,2655,3215,3221,3316,2901,2477,2391,2486,2482,2880,2343,2881,2342,2392,2887,2888,2863,2883,2742,2858,2859,2734,2691,2886,2879,2474] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [1177,1184,1185,1186,1187,1188,130,131,176,177,178,158,160,1171,1172,1174,1178,1181,1165,526,641,646,666,1190,258,259,260,261,664,1008,1010,1011,1012,276,416,1204,1203,414,274,263,268,272,441,443,442,642,624,407,517,955,470,956,993,998,1006,434,435,669,670,684,1086,1088,1089,691,695,696,1058,1061,663,128,1062,686] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [676,677,1105,1106,1107,1115,1117,1121,248,658,1143,1144,1145,1119,1160,1161,534,2717,2718,531,650,651,655,652,241,244,245,656,493,499,501,485,2750,2751,3112,3113,3114,3082,3115,3359,3136,3080,3081,3104,3332,3358,3366,3356,3365,3334,3382,2714,2719,3134,2868,2748] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [859,882,914,2164,858,2160,2426,2455,491,892,1134,1144,1145,890,891,893,1137,860,497,499,501,490,509,2459,2461,2413,2462,2895,2896,2897,2458,2195,2196,3333,3334,3343,2894,3332,2872] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1290,1020,1021,1493,1494,1495,1275,1411,1444,1445,1255,1267,1209,1227,1235,1240,1231,1325,1326,1327,1289,1287,1029,1016,1028,1383,1299,1301,1385] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1184,1185,1186,1193,1194,1196,157,159,1314,1069,1031,1343,1047,1048,1059,1060,1062,1335,1334,1372,1337,714,715,712] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [233,236,3193,235,3157,227,3158,4220,4251,4225,4250,214,71,219,70,72,73,74,75,206,207,208,213,4188,4190,4191,4192] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2422,2420,2421,2284,2102,2105,2106,2285,2286,2287,2451,2428,2441,2447,2449,936,2134,2425,2132,2104,2135,2136,2139,2162] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [25,451,452,7,15,447,2239,2242,2669,2672,2673,2668] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [620,83,284,97,80,79,598,574,56,61,575] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2297,2275,2791,2792,2815,2311,2293,2294,2265,2498,2837,2819] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [3202,3200,3201,3192,3193,54,74,75,34,224] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2007,2009,1554,1834,1681,1787,1826,1817,2006,2027,2028,1397,1553,1785,2025] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [3647,3648,3496,4092,4111,3774,3775,3928,3920,3459] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1029,1016,1028,1030,1342,1381,1383,1362,1327,1494,1495,1363] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3350,2941,2950,2952,2982,2997,2942,2943,2899,2907,3351] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1181,1031,1327,1196,1029,1016,1028,1205,1208,1209,1203,1198] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [390,582,399,422,423,397,567,568,566,38,452,5,8] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        