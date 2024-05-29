
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
        
        load "data/4QP2.pdb", protein
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
 
        load "data/4QP2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [172,179,182,186,187,1183,1282,1276,333,481,482,1277,1280,1283,193,195,441,443,449,844,804,815,1174,1200,1199,1274,1275,843,216,202,215,217,329,331,767,332,348,349,751,161,162,164,787,316,766,160,166,795,802,803] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4259,4286,4262,4539,4265,4267,4269,4536,4538,4151,4131,4297,4314,4316,4163,4175,938,4174,4232,4165,4535,4537,4533,4534,4156,4157,4169,4150,3886,3887,4348,4261,4263,4179,4166,4132,1229,1223,1221,4143] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2968,3076,3080,3083,2966,2967,2914,2915,3067,3522,3538,2937,4033,3232,4028,4031,4032,3084,4026,3517,4025,4027,3950,3951,2922,2923,2929,2930,3934,4034,2916,2917,2920,3925,3553,3554,3555,3566,3595,2932,2936,3101,2931] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1029,1028,573,575,1030,2448,574,1002,964,1234,1003,1004,962,582,583,994,4547,4527,4553,4528,4554,2390,2397,2400,2402,4516,2399] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1398,1522,1523,1520,1554,1404,1135,1136,1384,1394,1400,1475,1482,1484,1487,1507,1508,1488,1481,1486,1361,1513,1380,1530,1531] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1776,1812,1779,1503,1504,1778,1950,2233,2235,1912,1980,1976,1849] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3689,3712,3709,3710,3673,3674,3672,3684,3714,3987,5119,5120,5129,5131,5127,3713,3715] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [869,1637,1684,1168,1170,1445,1447,1159,1160,1433,1435,1163,1161,830,832,834,1176] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1176,1162,1183,1146,1282,1281,1283,445,1304,443,1163,1305] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3258,3256,5231,5233,3280,4080,5228,5237,3217,3244,3246,3251,3245,4061,4064,4074,3249,3250,5248,3221,3219] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3914,4207,4208,4209,4210,3583,4186,4204,4205,4206,4509,925,4195,4191] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3912,3914,3927,4210,4431,3581,3583,4186,4220,4222] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4702,4570,4279,4572,4607,4606,4958,4643,4960] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        