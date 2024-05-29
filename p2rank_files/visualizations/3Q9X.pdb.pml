
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
        
        load "data/3Q9X.pdb", protein
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
 
        load "data/3Q9X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3186,3187,3192,3189,3250,3251,3252,3368,3370,3725,3727,3728,3355,3372,4133,4264,4265,4134,3195,3197,3198,3207,3236,3219,3223,4258,4254,4257,4156,4157,3590,3592,4256,3785,3764,3770,3751,3723,3754,3356,3722] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [965,967,1361,1362,383,384,389,390,448,449,385,920,921,922,923,924,925,926,1462,788,789,790,1459,1461,952,434,450,568,569,570,1328,1346,1327,1469,1334,1463,1467,1468,387,554,946,949,552,553,930] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3372,4131,4133,4264,4265,4289,4099,4100,4290,4419,4422,4423,4101,4116,4117,270,273,3483,4281,3371,3225,3227,3447,3223,3226,256,261,3214,3216,3210,3198,3207,3236,3222,3387,3388,4115,4129,4141,3804,4130,3410] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [809,815,4765,4767,335,4781,4782,4851,807,810,797,324,505,506,4717,4720,323,4724,4733,4763,4736,491,514,528,527,333,546,928,914] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [270,273,274,277,4442,4444,4422,4116,4117,280,3803,3804,3805,4728,4123,4115,4124,4129,4125,4130,4457,4726,4456] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [3153,3154,3155,3378,3380,3362,3635,3702,3130,3105,3107,3129,3131,3379,3689,3652,3645,3649,3108,3109,3110,3687] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1315,1469,1628,405,1299,1314,1328,1346,1327,1330,1332,1334,1336,1470,1494,1495,423,425,1467,1468,417,408,412,414,434,450,568,569,570,429,1462] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [247,723,724,249,699,719,720,4807,251,255,174,180,175,176,181,184,186,731,4797,4798,4776,4784,4787,4788,4790,4791,4796,4805,254,4431,4432] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4718,4720,4719,5200,5190,5195,5186,4746,4747,4882,5202,5204,4740] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4035,4569,4571,4579,4580,4606,2892,4033,2894,2884,5461,2895,4009,5465,2883,5450,5453,5454,5455,5456] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [4759,4740,4847,4846,4882,5202,5204,4746,4747,4720,4719] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [224,223,1562,1563,233,635,636,1541,1543,202,204,214,219,221,195,226,207,212,1509,1510] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1170,1370,1859,1124,1126,1134,1029,1031,1885,1886,1055] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [3696,3424,3426,3427,3428,3464,3643,3084,3087,3644,3066,3452,3454] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [81,69,71,1776,2664,65,70,2666,2665,2676,58,59,60,54,1770,1788,1811,2644] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [994,1332,1336,1934,1933,1313,1322,1315,1627,1661,1647,1649] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [3016,3021,3023,3024,3025,3028,3014,3026,4304,4357,3004,4336,4338,3006,4358,3022,2997,3438,3033,3035] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2087,2407,2051,2052,1924,1925,1945,1951,1952,1959] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [4334,4335,4336,4337,4338,3003,3005,3006,4333,2928,2931] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        