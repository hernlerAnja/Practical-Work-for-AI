
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
        
        load "data/3UOJ.pdb", protein
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
 
        load "data/3UOJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1638,1639,1663,1665,1593,1623,1342,1340,1318,769,771,1319,1320,1321,1309,1311,811,797,798,799,803,802,1346,1379,1380,1099,1344,1369,1108,1101,1114,1115,1116,1117,1107,1367,1368] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1420,1415,1416,1422,3575,1388,3598,3574,1064,1417,1389,3221,3223,3224,3218,3240,3576,3579,3548,1441,1445,3512,1439,3547,3507,1460,3404,3408,3409,3509,3241,3243,3242,3259,3260,3283,3258,3284,3425,3495,3426,3604] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [740,746,728,745,167,166,106,107,112,113,1260,1268,1272,1140,754,755,1141,1251,1254,1257,1271,779,780,561,1207,707,725,294,702,110,721,111,733,94,108,277,1112,1125,1119] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3480,3752,3528,3824,3782,3784,3797,3798,3822,3274,3275,3276,2928,2930,2925,2958,2960,3476,3478,3479,3501,3477,3499,3503,3484,2962,2963,2968,2969,2970,3470,3468,3538,3539,3260,3258,3267] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2929,2913,2914,2325,2266,2267,2269,2270,3431,2899,2904,2905,2880,2887,2892,2938,3300,2908,3413,3419,3427,2272,2939,3444,2253,3430,3271,3284,2453,3370,3366,3416,2861,2720,2866,2326,2884,3299,2436,3389] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1059,1081,1082,1084,1083,1237,1245,1249,1124,1348,1350,1099,1250,1100,1101,1353,3600,1336,3619,1062,1219,1215,1248,1388,3598,1064,1387,1389] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2744,2745,2746,2748,2854,2177,2178,2180,2221,2223,2853,2367,2412,2414,2431,2368] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [410,451,450,1219,1240,1242,384,452,3628,3613,3626,3616,1237,1239,1232] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [18,19,585,587,272,253,255,208,21,209] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [451,1051,1060,1073,1046,1048,2571,2568,409,408,444,445,448,475,476,450,452,2569,1065,1061,1063] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2543,3398,3399,3401,2544,1469,2609,2610,2611,3378,3396,3391] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2568,409,410,412,2567,3205,2635,2634,3210,2610,2611,3233,3222,3219,2607] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [301,676,658,35,175,177,178,79,81,80,36] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2334,2336,2817,2240,2238,2194,2195,2835,2444,2460] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [2580,2588,2617,2846,2589,2825,2760] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        