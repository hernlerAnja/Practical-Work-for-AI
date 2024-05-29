
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
        
        load "data/4NWM.pdb", protein
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
 
        load "data/4NWM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [646,647,663,641,996,997,639,635,636,998,999,1000,1001,1009,1011,1303,1249,1267,1258,1273,3288,3221,3225,1243,1247,1248,1629,1630,662,1555,1559,1562,1563,1287,1286,1302,1564,1025,1097,275,469,470,1024,1096,1103,1104,1105,271,272,274,591,592,107,617,614,596,258,974,1010,1208,971,1098,1101,1102,1133,142,1125,1129,1130,113,115,116,121,3231,124,111,103,104,105,108,132,1250,1251,1252,1204,1206,128,144,135,133,137,140,1164,159,160,161,147] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3142,3143,3145,2316,3144,3064,2652,2654,2658,2661,2299,2640,3011,3141,3165,2635,2636,3051,3036,3050,2690,3039,2685,3065,2689,2680,2683,2679,3040,3014,2517,2163,2164,2169,2170,2172,2195,2181,2159,2160,2161,2207,2209,2158,2151,2152,2153,2155,2156,2157,2208,3240,2180,2176,3242,2315,2190,3204,2183,2185,2188] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2402,2449,2534,2620,3167,3168,2635,2636,3136,3138,2316,3144,2515,2532,3154,3156,2517] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [275,469,470,1096,1104,487,576,591,592,1116,1114,402,1109,1098,1099] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3660,3666,3264,3266,3267,3667,3670,3671,3273,3275,3313,3665,3658,3662,3655,131,1168,1178,1179,1180,310,308,309,127,299,313,1254,3278] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3288,3208,3217,3218,3219,3220,2193,646,647,669,670,671,668,2349,2350,2351,2352,2355,2337,2175,2179,2171,2192] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3423,3424,3425,2999,3174,3171,3172,3002,3297,3235,3295,3247,3241,3242] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [806,724,681,682,740,804,773,795,768,769,770,829,1060,1061,1059,1052,1058,633] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1263,1389,1390,964,1134,959,1132,1211,1213,1207,1214,1310,1265,1271,1272] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [495,497,498,499,490,493,231,232,233,235,204,205,236,237,7,492] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1583,1865,1867,1720,1866,1868,1445,1864] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        