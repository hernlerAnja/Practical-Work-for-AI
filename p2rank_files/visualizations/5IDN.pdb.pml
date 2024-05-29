
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
        
        load "data/5IDN.pdb", protein
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
 
        load "data/5IDN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1255,1385,1249,1252,263,265,266,267,268,433,1378,1382,1383,886,887,228,232,233,236,239,798,799,801,288,289,290,431,231,802,803,1377,1274,1273,854,2729,416,807,824,818,827,2728,647,797,646,648,1250] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4152,4096,4107,4110,4099,2846,2847,2849,2859,2861,4460,4462,4140,4141,4142,4144,4153,4177,4151,4458,4454,4459,4463,4464,4102,2832,2833,2842,2815,2826,2829,2830,2831,4091,3341] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1474,1732,1688,942,940,1733,900,902,1245,1473,1460,1462,1437,1461,1250,870,872,873,875,910,1236,865,867,905,908,909,904] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3031,3033,3005,3109,4390,4394,4395,4396,4397,4384,4387,4389,3178,3137,3149,4375,3143,3144,3147,3148,3107,3108,3179,4426,2972,2973,3153,4791,4792,3150,3152,3154,3155,4790,4766,4767] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3540,3851,3853,4960,4961,4962,4964,3862,4988,3843,3526,3897,3898,3538,3539,3524,3525] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3643,4091,3642,3341,2798,2804,2805,2806,2815,2826,4086,4102,4104,4087,4142,4144,4096,4107,3339,4111,4114,3338] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [996,1704,997,998,999,2553,2555,2330,2583,1030,1021,2285,2315,2316,2286] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1503,1540,1504,1537,1555,1580,2037,2000,2001,1982,2025,2038,2429,2430,2438,2423,2026,2004] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3476,3482,3509,3486,3503,3504,3462,3051,3052,33,37,38,41,43,3478,16] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [334,332,333,373,667,792,408,175,410,678,679,164,174] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1938,1970,1971,1972,1973,1925,1917,1969,2413,2414,1918,2408,2409,1921,2373,2375] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [8,3548,3970,3971,3972,3945,1,5,3941,3517,3523,3519,3907,3909] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1572,1514,1515,1482,1483,1484,1445,1481,1447,1511,1800,1512,1523,1822,1824] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [223,301,224,280,282,448,202,300,207,198,206] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        