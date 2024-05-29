
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
        
        load "data/4OBQ.pdb", protein
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
 
        load "data/4OBQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [149,150,151,152,153,154,155,120,175,176,276,649,651,1148,1150,1154,1155,1156,1149,632,633,123,124,121,669,670,1071,1072,665,666,667,657,653,663,197,637,654,148,144,1048,1049,125,700,699,701,698,733,133] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3588,1019,1157,1017,1177,1178,1179,1372,1374,1375,141,146,3967,3970,3971,1198,1035,1056,1004,1018,1016,1036,1207,1214,1215,1218,1212,1265,1263,1259,3983,3984,1290,1357,3977,3969,3987,3981,1246,1247,1248,1155,1156,151,148,293] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3301,3302,3304,3756,3758,3759,3649,3674,3647,3631,3833,3629,3630,3642,3643,3567,1591,1592,1593,1599,1605,1608,3741,3314,3315,3316,3519,3599,3593,3602,3608,3605,3628,3632,3556,3565,3582,3595,3493,3495,3306,3492,3517,3518,3516,3568,3530] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2372,2388,1205,2998,3341,3369,3368,2967,2970,3521,2504,2505,3512,3353,3296,3445,3446,3443,3475,1204,3316,3332,3333,3354,3313,3464,2485,2401,2402,2488,2948,2930,2950,2954,2951,2385,2386,2387,3462,2392,2391,3455] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1534,1536,1539,1546,1255,1256,1545,3587,3577,3578,3548,1223,1224,1239,1563,1565,1566,1241,3571,3547,3549,3550,3570,722,723,143,1045,1049,1036,1034,690,693,721] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1628,1300,1305,1308,1311,4010,3689,1632,1634,3692,3695,3697,1639,1319,3702,3703,3704,4011,4012,4014,4017,4050,4051,4007,4008,4005,4006,3684,3712] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1205,1199,1200,1202,1201,1203,137,3588,1204,3599,3584,3586,3554,3556,3583,3558] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [632,633,361,363,364,1148,1150,1155,1156,1149,1151,1158,1161,176,617,327,331,293,1176] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2326,2328,2468,2778,2429,2431,2469,2433,2465,2238,2236,2775,2777,2779] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        