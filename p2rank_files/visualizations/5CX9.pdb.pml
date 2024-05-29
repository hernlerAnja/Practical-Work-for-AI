
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
        
        load "data/5CX9.pdb", protein
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
 
        load "data/5CX9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1910,1911,1912,1033,1035,1130,1367,1364,1099,1143,1102,971,993,994,996,998,995,997,1366,1135,1382,1363,1380,1381,1383,1059,1060,1019,1020,1021,992,989,977,979,976,1879,1903,1144,1325,1174,1349,1350,1348,1323,1324] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4167,4183,3812,3813,3815,3842,4186,3840,3878,4140,4142,4143,4144,4675,3949,3993,3947,3957,3962,3921,3963,3916,3920,3952,3811,3791,3795,4694,4701,4702,4671,4700] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [443,444,548,382,378,379,380,385,386,388,1335,1336,918,784,1465,1467,1358,1359,1330,1357,1468,1333,1334,1469,565,1470,563,564,1473,1476,921,920,445,390,399,400,429,391,383] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3362,3258,4178,3375,3243,3259,3378,3379,3377,3748,3598,4275,4279,4177,3597,3599,4278,4283,4284,4154,4155,4149,3788,3790,4286,3193,3199,3194,3196,3257,3200,3202,3746,3744,3747,3749] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3432,3433,3434,3435,3436,3459,3461,3650,3651,3085,3716,3717,3470,3468,3409,3410,3462,747,748,3061,3086,792,796,739,741,742,743,744] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3233,3221,3226,3214,3223,4286,4153,4155,4310,4311,4312,4122,4138,4137,3392,3242,3243,3378,3379,3395,3490,3417,3460,3452,4302,4285,3453,3454,3229,3228,3230,3399] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1475,1476,1319,1303,400,428,429,391,403,676,581,640,407,408,409,410,406,414,415,1500,1501,1502,1336,1334] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3129,3162,3108,3161,3160,3652,3708,3654,3660,3369,3642,3723,3385,3386,3387,3104,3103,3106,3107,3128] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1796,1804,1790,1805,1808,2639,54,71,61,2649,1237,2687,2690,2693,2692,2670] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3077,3089,3092,3625,3627,3124,3135,3626,1212,3300,3096,3123,1246,3618] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [299,301,302,303,838,839,842,573,572,828,895,881,880,346,347,348,323,324,298,555] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1547,1549,218,219,228,1514,1516,1569,1521,1523,1515,190,197,199,202,207] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [804,805,924,541,486,810,813,522,530,525,524,526,509] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1125,1408,1428,1398,1418,1424,1426,1164,1165,1166,1191,3071,3072,768,3056,1450,3073] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        