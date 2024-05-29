
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
        
        load "data/8OUV.pdb", protein
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
 
        load "data/8OUV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2908,2910,2882,3419,3420,3589,3591,3624,3625,3626,3588,3620,3610,3616,2948,3435,3437,3379,2970,2990,2880,2883,2968,2971,2827,2829,3062,3063,3619,2715,2856,2857,2851,3580,3581,3582,3584,2953,2954,3575,3587,3077,3078] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1304,1305,1148,1150,1306,1308,1333,1327,1296,1297,1298,1301,618,658,1092,663,1292,1291,1294,592,1133,1341,1342,1337,1131,1144,620,772,773,444,431,674,675,678,670,671,788,561,566,567,593,590,539,537] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1219,1220,835,836,839,845,1191,844,1315,1313,1314,252,274,294,295,234,237,792,812,813,808,811,231,1318,1319,1316,415,802,804,235] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2527,2530,2532,2533,3094,3096,3098,3101,3102,3126,3129,3506,3507,3133,3135,3599,3601,3596,3597,3595,3478,2564,2565,2539,3602,2581,2582,3082,2699] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3590,3607,3610,3618,3612,3614,3760,3591,3625,3688,3690,3726,3727,3782,3764,3431,3492,3595,3604,2542,2545,2549,2551,2539,3456,3481,3482,3483,3766] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1312,265,272,1195,1196,255,259,1206,1324,1328,1331,1166,1167,1168,1169,1447,1321,1476,1480,1477] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [51,68,70,71,64,65,63,2845,2356,2336,2337,2339,555,2349,2350,2351,2357,2360,2362,2384,2363] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1096,1097,1098,1623,1625,1632,1066,2179,2183,2174,2177,1631,1633,1100,1099,2194,1068,1070] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4467,4478,4482,3911,4465,4466,3918,3383,3386,3357,3385,3919,3384,3909] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [182,202,203,167,141,163,721,722,138,139,147,706,765,707] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2098,2099,2100,2101,2102,1664,1667,1804,1942,1952,1953,1947] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        