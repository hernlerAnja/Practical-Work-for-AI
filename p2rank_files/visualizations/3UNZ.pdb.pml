
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
        
        load "data/3UNZ.pdb", protein
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
 
        load "data/3UNZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3626,3628,3579,3618,3604,1059,1063,1064,1065,1069,1078,1081,1389,1539,1420,1467,1469,1062,1335,1348,1353,3598,3599,3600,3602,3617,3603,1082,1083,1085,1084,1098,1099,1100,1101,1350,1374,1336,3228,3218,3221,3222,3223,3224,3661,1416,3547,3574,3575,3555,1388,1396,1373,1372,1444,1445,1439,1440,1441,1443,3507,3512,3548,3509,3532,3533,3698,1458,1459,3396,3404,3237,3241,3242,3243,3244,3284,1453,3408,3494,3409,3495,3259,3260,1239,1215,1213,1219,1230,1232,1235,1237,1125,1245,1249,1250] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3366,3298,3299,3300,2914,2908,2436,2884,2887,2269,2880,2266,2267,2270,2892,2904,2905,2324,2326,2453,3414,3415,2271,3418,2325,3413,2265,2913,3431,3444,2940,2941,2942,3427,3430,2861,2720,2866,3271,3278] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [746,749,782,783,1256,106,107,112,113,1272,1255,167,1140,1141,1112,1119,1254,755,1268,754,781,1207,294,561,166,277,110,108,111,725,721,728,702] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [769,771,1116,1318,1344,773,1317,802,1593,799,800,1290,807,808,803,804,797,798,1369,1321,1638,1665,1308,1639,1623,1310,1367] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3470,2961,3752,3782,3503,3477,3469,3479,3480,2930,2959,2962,2963,2966,3275,3526,3527,3528,3797,3798,3822,3823,3824,3825,3787,3499,3829,3538] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2571,2610,3378,3398,3401,3232,3233,3374,3375,3376,3396,3210,3218,2565,2568,2569,2570,2567,2604,2595,2611,2635,3205,3206,2634,2572,409,410,411,412,405,406,3201,3192,402] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2572,410,413,1042,1048,452,1046,408,435,436,444,445,476,1073,1215,1074,1239,451,2569,2558,2561,475,1051,1062,1059,2537] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2744,2853,2745,2747,2177,2178,2180,2367,2368,2746,2431,2412,2414] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [272,253,255,208,209,18,19,21,588,591,585,586,587,589] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        