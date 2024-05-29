
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
        
        load "data/2Y8Q.pdb", protein
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
 
        load "data/2Y8Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3085,3088,3089,3090,3679,3676,3678,2479,2481,2473,2477,2478,2480,2482,1958,1959,3220,3222,3084,3079,3069,3779,2457,2458,2459,2468,3070,2460,2461,3228,3229,3230,3231,3232,3233,1949,3218,3223,3227,1810,1811,1942,1943,1944,1950,2488,2490,2491,1953,3240,3426,3212,3213,3241,3194,3440,3454,3428,3669,3665,3666,3667,3668,3670,3664,3675,2613,2614,2626,2630,3800,2476,2615,3806,3807,3792,3793,2620,3798,3814,2622,3451,3452,3453,3455,3456,3457,3459] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1193,1195,1284,28,29,31,25,26,1095,4,1092,1093,1094,1077,1078,1117,1120,1123,1148,1150,1151,1290,1294,1295,1296,1381,1618,1629,1396,1397,1380,1382,1631,1633,6] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2315,1919,2310,1957,1959,2470,2472,2305,2317,2297,2299,2322,2295,2296,1922,1925,1926,1927,1943,1944,1967,2257,2258,2298,2248,2249,2220,2217,2218,2210,1965,1966,1994] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1415,1724,1761,1230,1231,1232,1782,1753,1755,1215,1254,1413,1270,1416,1781,1783,1210,1,2,1726,1725] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [803,802,846,60,62,63,67,1278,1262,1263,778,804,805,808,832,1223,1225,1218,1203,1207,55,57,64,1440] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [791,797,826,165,95,79,80,94,131,831,832,824,133,164,801,836,63,474,597,579,136,598,576] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [704,629,630,2531,2553,632,636,638,628,1301,1307,1310,1322,1324,631,1167,1302,1304,701,702,711,2564] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3084,2885,3083,3777,3778,3780,2919,3779,2923,2913,2884,2886,3085,3090,3094,3676,3678,3792,3793,3815,3814,3675,2907,2920] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2075,2113,2114,2116,2118,2117,2040,2041,2042,3327,3304] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2691,2693,2696,2698,3575,1484,1486,2803,2734,2738,2722,2721,2724,2729,2736,3595] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        