
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
        
        load "data/7R9V.pdb", protein
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
 
        load "data/7R9V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4927,4906,4907,5286,4745,5301,5303,5334,5823,5824,5306,5921,4986,5902,5906,5907,5910,5904,5905,4947,5912,5913,5911,4692,5798,5799,5351,4691,4723,4677,4680,5332,5376,4662,5285,5290,5309,5284,5923,5205,5206,5207,5208,4951,4985,4987,4963,4984] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [6578,6067,6099,6102,6104,6105,6567,6001,6037,6039,6057,6058,6059,6040,6065,5999,6002,5998,6066,6072,6131,6129,6132,6569,6570,6571,6540,6542,6568,6545,6549,6124,6125,5695,6127,6151,6126] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4990,4991,5014,5019,5020,5023,5024,5050,5051,5013,5217,3530,3491,3492,3498,3516,3495,3496,3500,3490,3493,3520,3523,5052,1150,1148,3524,3528,3858,4992,4994,3857,5025,5027,4554,4555,4556,492,493,3775,3776,1146,4544,3807,3808,3809,3810,3811,3812,4563,3806,3774,4562,4548,5211,5214,5015,5194,5201] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [2374,2119,2122,2125,2126,2120,2150,2153,2203,3620,3612,2129,3613,2228,2205,2269,2367,2371,2109,2376,2377,2240,2379,2383,190,191,192,207,204,2163,2165,3621,3631,3636,3638,3947,3949,3951,2382,2398,2399,3956,3959,3960,3926,3952] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [4575,4577,4578,1024,4556,493,1041,1186,1187,1151,1152,1155,4850,1157,1159,4849,4545,4553,4533,4858,4860,5318,4883,4897,4899,4861,4881,5299,5292,5293,5294,5295,4547] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3874,3875,4147,4149,105,3870,3899,3903,3905,5237,3895,3847,4169,4205,4206,4173,4177,4180,4174,5243,5246] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [5076,5077,5115,5086,1209,1208,5125,508,509,1177,5052,5047,5049,5078,5196,3503,5084,5085,1150,5050,5080,5081,1183,1186,1187,1145,1146,1182,5079,5178,5197,5169,1217] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [3887,3890,3907,3908,3916,3586,3588,3915,3927,3929,6320,6327,6328,3928,3879,6326,4970,4971,4972,6330] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [6320,2356,2268,3928,2291,2099,2344,2358,2343,2357,2361,2355,3915,3927,3929,3916] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [1341,1356,1357,1350,4526,456,458,3767,3768,4077,459,4075,4107,4104,4106,4069,1373,4065,4527,4560,1028,1029,1032,468,470,469] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [1467,1469,2624,1465,1466,1470,3079,1938,3077,1923,3108,3076,3112,2622,2623,3106,3105,3074,2625,3137,2602,2565,2600,2601,2564,2554,2556,2558,3139] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [6362,3295,1683,1684,1685,1687,3293,2350,1689,3595,2353,3294,2348,2356,3302,6313,6315,6366,6377,6379,6369] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [3608,3359,3610,3651,3332,3335,3336,1957,1958,2160,2182,3626,3628,3614,3642,3648,3334] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [6312,6320,6318,6319,2356,2343,2355,3597,3599,6362,3295,3586,6313,6315,6379] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [5089,5093,5126,5095,3514,5061,6241,3234,3480,6218,6220,3502,5087,3503,3501] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [5359,5638,5831,6052,5639,6033,6023,6021,5492] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [1031,1000,999,1052,1281,1282,1310,4810,1265,1280,698,700,4811,1266] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [6051,5500,5530,5586,5612,5502,6049,5496,5608,5609] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [5706,5707,5708,5043,5752,5709,5715,5922] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [5009,6286,5741] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        