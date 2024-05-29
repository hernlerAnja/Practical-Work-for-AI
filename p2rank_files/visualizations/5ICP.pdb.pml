
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
        
        load "data/5ICP.pdb", protein
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
 
        load "data/5ICP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [533,431,432,433,792,793,794,1364,1365,1370,791,265,267,263,264,266,268,290,288,289,233,228,231,1391,561,1393,236,239,1363,637,638,639,1259,1260,815,818,2783,2784,2785,789,416,809,811,1368,1228,1241,1227,877,846] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1523,1524,1222,861,863,900,902,903,893,1738,1765,931,1487,1488,1838,1214,1510,1512,1228,866,856,858,1511,933,1782] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1380,1381,1382,1199,1371,1384,1408,255,257,1395,1398,1407,532,533,433,1364,1365,1370,1391,1393,501,502,449,259,262,253,254,258,261] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2848,2843,2846,2850,3728,3730,1145,2859,522,1387,1189,1163,1166,3720,3721,1157,1435,1436,1437,1169,1434,3732,1168,2863,553,521,2842] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4438,4436,4437,4905,4907,4908,4909,4910,3245,4435,4866,3282,3283,4955,3246,4936,4952,4904,4906,4901,4932,4903] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4199,4168,4210,4211,4235,4209,4200,4160,2875,4512,4516,4517,4518,4509,4510,4511,4157,2893,2908,2894,2896,4165] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2609,2639,2640,1754,2395,1750,2382,2380,2381,2346,2350,2351,2352,2339,998,1000,1001,974,2611,2655,1008] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4442,4445,3208,3210,3209,3211,4833,4834,4857,3164,3203,3206,3207,3163,4448,4453,4455,3089,3062,3237] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [2478,2479,1990,1982,1983,1986,2034,2035,2438,2263,2267,2441,2003,2036,2038,2261,2462,2474,2473,2436] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3582,3611,3586,3965,3967,5,4003,1,4005,8,4026,4027] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1590,2102,2495,1554,1553,1587,1591,2103,2090,2494,2503,2488,2065,2047,2091,2066,1605,1630,1629] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [43,45,3534,3539,3568,3569,3572,16,37,38,3566,3564,3541,69,3525,3109,71,3107,3545,3549] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3589,5070,3925,3601,3602,3956,3603,3924,3587,3588,5055,5069,5029,5031,3920,3909,3911,3955] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [194,300,301,202,441,442,765,144,223,224,195,192,198,201,206] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [334,408,783,175,332,333,657,668,669,670,671,658,373,410,164] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        