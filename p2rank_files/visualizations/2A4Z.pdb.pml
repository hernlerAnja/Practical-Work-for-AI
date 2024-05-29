
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
        
        load "data/2A4Z.pdb", protein
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
 
        load "data/2A4Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4512,4514,4477,4513,4535,4537,4538,4539,4675,4691,4534,4563,3129,3130,3131,4085,4086,3159,4692,4695,4071,4081,4481,4698,4708,3475,3476,4561,4568,4571,4572,4570,4601,4602,4603,986,987,1023,988,495,493,504,4610,4629,494,491,3140,3123,3128,3097,3076,3116,3117,3118,3119,430,3098,962,3121,3396,3397,958,961,431,3142,3427,3428,3429,3430,3431,3432,3104,3105,3106,444,457,445,453,3085,454,990,992,2876,2857,2861,2859,4502,4504,4678,4681,4564,4566,4659,4635,4638,4651,4655,4639,4641] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5388,5390,5391,4787,4808,5310,5311,4805,4256,5392,5393,5396,4234,4387,4191,4192,4193,4179,4429,4215,4216,4407,4685,4687,4765,4770,4782,4784,4766,4684,4686,4688,4689,5295,5286,4198,4204,4205,4823,4195] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4091,4096,857,858,410,878,392,393,1110,1111,4051,1140,3388,3712,408,387,386,1148,3387,4090,4092,4093,4095,3419,3733,4049,4050,3711,3710,1147,3704,3732,409,866,411,3390] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2060,2061,2063,2064,186,1899,187,3584,2056,2067,3261,3262,210,200,205,178,164,167,168,176,179,183,158,2068,2073,3582,3583,211,2062,203,1815,3237,2058,1811,3591,3592,3588,3228] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1399,5900,2390,2948,2949,2950,2451,5843,5811,5775,5812,2936,5787,2379,2622,2386,2394,2400,2412,2450,5778,2380,2911,2947,2946,2650,2649,2648,1390,2959,2961,2614,5904,5896,5898,5934] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2031,2032,2033,3538,3539,3551,3553,3509,3531,4454,3527,3534,5846,5848,3213,5858,5859,5864,5865,5867,4437,5855] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5925,5248,5399,5233,5240,5241,5827,4497,5804,5835,5836,5806,5922,4464,5863,5861] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [2002,2038,2037,1376,2042,1704,1720,1345,1359,1740,1721,1755,1396,1394,1415,1375,2050,2007] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [2874,2876,2870,2868,3105,3142,3140,5761,5762,5738,4578,4572,5740,3129] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4926,4924,4857,4867,6198,6226,6227,5282,4910,4912,4914,4889,4892,4895,6205,6210,6245,5275,5279,4836,5283,5287,5274] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [811,722,759,1080,1083,790,608,747,758] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [613,747,748,774,794,795,796,756,758,775,759,1083,790] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [4334,847,848,4356,4105,4106,4292,4291,4365,4347,4348,4324,838,837,833,4349] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5192,5456,5495,5383] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1219,1218,1581,2185,2191,1894,2175,1635,1637,2209,1205,1210,1212,1215,1202,1890] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2946,2958,2646,2682,2637,2684,1408,2679,2681,2952,1388,1390,1380,1383] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        