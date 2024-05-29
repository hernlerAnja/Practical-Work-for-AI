
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
        
        load "data/3L13.pdb", protein
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
 
        load "data/3L13.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4974,4975,5111,4949,5128,4488,3421,4950,4970,4971,4973,5001,5113,5000,4498,4501,4502,4503,1130,1132,1128,4913,4915,4916,5134,5142,4489,4486,5144,3386,3409,3410,3419,3420,3422,3771,3772,3413,3724,3726,3723,3725,3727,3728,3693,469,472,473,1087,1155,1156,5002,1154,1164,1115,1125,5036,5037,5039,553,1116,4998,4996,4997,5065,545,3389,3390,1090,1091,1117,1119,3423,5038,5095,5114,5076,5106] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5210,4681,4823,5222,4615,4909,4880,5870,5872,5869,5204,5205,5206,4822,4842,4843,4907,5224,5227,5783,5124,5125,5863,5865,5866,5123,5861,5864,4633,5760,4626,4600,5265,5756,5784,5251,5768] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [6290,6296,6320,6294,6407,2649,6321,3217,3229,3230,3231,1624,3223,6352,6353,6408,6409,3228,1633,1615,3240,3242,2638,2645,2653,2882,2659,2665,2671,2709,2639,2872,2908,2909,2871,2873,2876,2877,2881,3192,3189,3190] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [451,452,453,979,982,981,983,3684,434,1253,3678,3679,3680,3686,3689,3682,991,992,4510,4512,4513,4507,4508,4509,3690,4040,4005,4038,4039,4004,4014,4006,1282,4467,4468,4530,4532] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [6345,6370,6371,6433,6434,5876,4933,5710,6337,6372,5891,5894,5896,6369,5695,5703,6313,6315,6458,6460,6431] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3138,3144,3148,3149,500,3397,3434,3396,3398,3155,3157,502,503,501,3142,3158,3151,5014,6270,6271,5007,5008,5006,6269,5046,6248,6246] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6766,6767,6777,6778,6779,5314,5311,5312,5313,5372,5373,5742,5743,5744,5279,5278,5355,5338,5361,4634,5758,5759,5757] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [206,216,209,2053,217,2328,208,198,2319,188,2323,2316,2315,2317,2061,233,230,2087,2093,2055,2059,2143,2080,2083,3554,3553] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3834,3852,3854,3855,2029,2232,3823,3830,3833,2286,2287,2273,2284,2285,2274,3505,6357,4890,6355,6356,6367,6368,6373,6374,6380,6384,2246,2251] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [5212,5213,5214,5215,973,4501,4502,4503,4504,4522,4523,4488,4792,4797,4801,5219,5231,5237] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [5074,5077,5073,5609,5610,5612,5613,5614,5570,5571,5583,5091,577,576,1151] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2896,3227,3233,3239,2940,2941,3249,2943,3253,1631,1632,1633,2938,3243] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4965,5667,5668,5671,4966,5644,5646,5882,5711] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        