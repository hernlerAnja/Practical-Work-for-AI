
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
        
        load "data/3UOL.pdb", protein
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
 
        load "data/3UOL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1416,3575,1388,3598,1065,1389,1419,1418,1059,1063,1064,1069,1372,1373,1396,1539,1502,1083,3628,3579,3626,3218,3222,3224,3577,3602,3603,3604,3600,1336,1353,1078,1082,1084,1098,1099,1100,1101,1374,1085,1093,1246,1249,1250,1265,1266,1267,1117,1254,1113,1114,1115,1116,772,1262,1271,1284,3612,3618,3616,1239,1232,1237,1348,1351,1350,1344,1345,1325,771,773,1317,1320,1283,1290,1457,1467,1469,3396,3398,1444,1445,1453,3241,3242,3243,3547,1439,1441,1443,3510,3531,3532,3533,3548,3509,1459,1460,3409,3495,3391,3405,3408,3283,3284,3257,3258,3259,3260,3274,3276,3512,3507,3503,3504,3425,3426,3421,3424,3413,3272,3273,3484,3476,2930,2932,3479,2931,3449,3430,3442,3443] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2930,2932,3477,3478,3479,3480,2928,2962,3782,2956,2957,2961,2967,2970,2963,3499,3503,3504,3505,3528,3538,3539,3752,3797,3798,3501,3822,3823,3825,3824,3829,3260,3274,3275,3276] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [771,773,1318,1319,1320,1321,1623,802,811,808,797,798,803,804,1346,1379,1663,1664,1665,1380,1593,1638,1639,1666,1342,1340,1344,1345,1369,1670,1117,769,1115,1116,1101] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3416,2326,2451,2453,2861,2324,2325,2436,3298,3299,3300,2720,2884,3271,3413,3419,2914,2908,2265,2266,2267,2272,2269,2270,2887,2892,2898,2899,2904,2905,2880,3427,3431,2938,2939,3370,3365,3366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1272,780,746,749,779,739,740,745,107,113,1260,1268,1112,1254,755,1141,108,110,728,725,111,721,733,1257,106,165,167,166,292,1211,294,1140,1207,1139,561,277,702] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [451,448,449,476,1046,1074,475,408,410,413,2568,2569,1051,1215,1219,385,1239,1240,1242,420,1059] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2569,409,410,3210,2634,3205,3218,2610,2608,3374,2635,3233,3399,3401,2580,2567,2607,3398,3378] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1469,3396,3398,3242,3243,2544,3399,3401,2610,1459,3378,1470] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2745,2746,2747,2748,2749,2750,2854,2177,2180,2853,2744,2414,2431,2412,2367,2221,2743] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        