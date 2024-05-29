
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
        
        load "data/4XEY.pdb", protein
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
 
        load "data/4XEY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1107,1141,1142,1143,1144,1145,1117,1113,1114,1115,1116,2030,2032,1106,3614,3597,3600,3200,1082,1083,3592,3595,1078,1079,1080,1081,2033,2034,3195,3196,2009,2011,1171,1937,1943,1946,1947,1948,2007,1773,1774,1775,1154,3442,3443,3843,3433,3814,3842,4085,4086,1956,1973,1974,1967,1972,1951,1952,4066,4068,2016,4056,4052,3616,3621,4059,4060,3609,2025,2029,2031,4064,4055,4065,4049,3434,1085,1084,1140,1164,1165,3841,3810,3812,5068,5070,3837,3863,3835,3836,5044,5043,5010,5011,5045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3383,4115,4111,4114,3106,3229,3231,4127,4129,3457,3612,3613,4038,4039,3591,3608,3215,3586,3223,3227,3228,3587,3571,3078,3087,3090,3635,3636,3639,4040,3081,3104,3105,3077,3079,3083,3611,4011,4025,3646] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1179,1382,1383,1917,909,927,1404,1407,1432,1435,1834,1835,1836,1408,1253,1049,1050,1051,1053,1923,928,911,1037,1399,1401,1387,1045,1364,1922,1919,1821,1910,1439,1807,1442,1911] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2590,2589,2577,1599,2614,2615,2294,2327,2329,2330,1624,2324,1568,1586,1587,1588,1592,1593,1590,1597,1566,1569] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2953,2954,638,639,2938,2939,704,712,716,2957,221,53,55,611,613,736,737,219,42,35,36] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3752,3753,3709,3681,3629,3677,3679,4069,4075,4077,4078,4061,4062,3631,3632,3633,3705,3674,3704,3711,3712,3706] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3772,3792,4528,3770,3794,3773,3791,3802,3790,3796,4498,4818,4819,4534,4787,4793,4794,4533,4780,4781] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [326,328,447,595,523] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        