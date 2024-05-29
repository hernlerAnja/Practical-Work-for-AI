
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
        
        load "data/5KPM.pdb", protein
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
 
        load "data/5KPM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1162,1202,1302,1305,1306,1307,1308,1190,1300,1219,778,790,764,771,770,216,210,234,235,253,198,199,204,739,1301,469,1309,737,1299,576,744,1218,761,366,362,364,252,349,202,755,757,232,1324,1329,1322,1321,816,4195,1191,1446,1161,1178,1179,1455,1450,1447] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3952,3951,3963,4063,4066,4067,4069,4061,3003,4062,4060,2948,2954,2957,2952,3002,1778,3114,3500,3333,3498,3099,3332,3979,3980,3522,3525,3516,3518,3505,3551,3577,4068,2960,3116,3225,2984,2985] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4295,4311,4312,238,213,215,239,244,246,4784,4759,4762,4763,194,245,264,374,375,262,4749,4772,237,699,700,218,4175,4179,4180,4314,4326,4182,4185,4187,4181] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1408,2972,3139,1419,1553,1982,1983,1565,2968,2978,2987,2988,2989,3120,2996,1981,1980,1992,1994,3442,3459,3461,3123,3124,3125,1412,1418,1420,2963,3014,1413] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [261,263,264,373,374,375,659,356,716,262,258,357,177,178,259,153,4772,4773,36,23,155,22,658,639,641] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3396,2773,2903,2905,3009,3010,3011,3012,3013,3014,2927,2012,2928,3107,3414,3415,3125,3477] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3923,3940,4068,4090,3921,1433,2960,2966,4216,2982,2984,2985,4069] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3998,4000,4001,3992,3623,3625,3748,3750,3712,3714,4020,4023,3711,3713,3680,3687,3688,3588,3988,3985,3587] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1474,1476,806,1734,1464,1475,1477,1467,1471,1472,1454,1486,1488,1195] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [862,864,826,827,952,1237,1240,1225,1227,989,1239,951,953,987] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3956,3567,3569,4235,4237,4249,4236,4238,4233] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5102,5104,5111,5112,5116,3852,3853,3860,5411,3829,5412,3828,3856,3854,3826,5110,5093,4354,4356,4359,4360,4361,4364] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1812,1822,1814,2037,1789,2016,2017,2019,2941,2034] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [651,652,396,416,434,442,439,477,629,630,650,509,431,441,414] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        