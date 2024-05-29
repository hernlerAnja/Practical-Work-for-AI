
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
        
        load "data/6EHJ.pdb", protein
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
 
        load "data/6EHJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3515,3516,4471,4472,3523,3526,3527,3529,5783,5784,4569,5606,4470,4568,4570,5787,5788,5778,5786,5769,5775,3566,3569,3571,5268,3560,4558,3545,5785,4575,4563,5805,3511,3512,3592,3593,3594,4444,4446,4447,5793,5804,5380,5381,5382,5383,5626,5638,4443,4445,5632,5637,4067,4349,4352,4353,4354,5367,5251,5267,3589,3590,3584,3502,3503,3504,3591,3509,5970,4040,4051,5983,4343,4344,4346,5388,5239,5977,5964,5966,5969,3613] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [567,570,571,574,559,2779,2770,2775,2776,2777,2778,1452,588,589,590,591,592,593,2785,1449,1451,2796,1476,1477,2767,1574,1576,2622,1448,2374,2375,2310,2311,2294,2359,1569,1572,576,2345,2602,542,544] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4333,4337,4336,4338,3893,4068,4069,4071,4191,4192,4193,3026,3041,4040,4344,4067,4352,4363,4377,4378,4163,4170,3023,3036,3038,4169,4044,4223,4220,4227,5852,5853,5854,4321,4042,4043,4310,4256,4267,4265,4311,4299,4308] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [46,1068,1070,1196,1198,1197,1169,1225,1232,1260,1262,1221,1222,1227,1228,1261,1270,1168,1175,1174,56,58,61,2844,2845,1272,1304,1383,1382,1067,1039,1041,1042,1043,1066,1341,1349,1326,1026,1315,1316,1313,1368,1357] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1452,592,593,2298,2962,2964,2965,2972,2973,2966,2979,1451,2796,2797,1450,2374,2372,2633,2634,2282,2380,544,545,536,537,1050,1358,1351] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [5401,5982,5957,5962,5013,5015,5017,4929,4930,4946,3912,4035,4036,5014,4977,4979,3916,4934,4935,4944,4932,3924,3928] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [915,2060,1034,2953,923,924,927,1035,1989,2057,2058,1972,1973,1978,1987,2393,2958,2978] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3066,3074,5856,3175,4197,4228,4229,3269,3270,4199,5863,5864,3174,4264,4266,3198,3197,3199,4267,5866,4230,4234,3222,3228,3224,3067,3055] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1271,226,227,228,204,203,94,86,87,1202,298,299,1233,1234,1235,1269,251,253,240,257,1204] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        