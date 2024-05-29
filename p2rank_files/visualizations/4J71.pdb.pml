
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
        
        load "data/4J71.pdb", protein
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
 
        load "data/4J71.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2989,3014,3031,3032,3964,3144,3355,4004,4101,4102,4103,4104,4107,4108,4109,4110,3143,3962,3963,3980,3981,3992,3993,3128,3247,3534,3535,1803,1804,2981,2986,2977,2983,3566,3585,4021,3552,3564,3556,3558,3559,4020,3356,3539,4123,4124,4125,4131,2995,3003,3011,3013,1460,4246,4247,4249,4255,4256,4259,4250] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1327,1330,1331,1332,1333,757,1326,1334,1325,1324,782,787,1243,1244,762,779,503,1340,203,230,231,249,360,361,345,194,200,248,196,775,198,773,193,228,1347,1348,1354,1203,1204,1227,1471,1475,1185,1186,1187,1216,1215,808,212,206,220] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4370,4358,676,214,224,233,379,383,717,718,699,669,670,715,235,241,242,368,369,370,371,260,189,190,259,4816,4782,4801,4811,4814,4817,4822,4825,210,4221,4331,4356,4339,4347,4835,4836,209,4226,4216] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2017,2019,3025,2008,3007,3149,3494,3495,3152,3153,3446,3447,3154,2992,1444,2020,2997,3001,3016,3018,1449,3169,1438,1590,3453] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [660,661,32,18,19,150,151,352,641,643,735,353,258,369,371,256,260,174,4824,4825] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3136,3041,3043,2957,3039,3042,2955,2956,2036,2037,2801,2802,2933,2934,3512,3418,3154,3437,3438] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3577,4028,3617,3621,3622,3783,3743,3745,3746,3747,3784,3575,4026,4039,4041,4033,4061,4064,3748,3657,3659,3714,3744] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [844,845,1006,1007,1251,966,967,968,969,970,971,880,882,1249,1265,1255,1256,1262,1284,1264] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1485,1480,1498,1512,1514,822,824,1220,1715,1716,826,1219,1790,1499,1500,1501,1502,1759,1489] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4850,4863,4618,4620,4832,4627,4853,4594,4652,4840,187,4837] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1112,1620,1621,1623,1111,2375,2363,2368,2366,1085,2675,2676,1625,1628,1624,1616,2357] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1847,1812,1814,2042,2044,2041,2970,2065,2062,1872,1846,2058,2059,2075,2052] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3483,3425,3426,3427,3428,3429,3430,3431,3256,3204,3190,3213,3217,3175,3188,3191,3192] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        