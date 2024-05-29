
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
        
        load "data/6GVH.pdb", protein
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
 
        load "data/6GVH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4107,4109,4076,5639,5640,5643,4070,5635,5636,4068,4071,4072,5667,5668,4387,4388,4389,4391,4392,5161,4390,5142,4354,5152,5153,5154,4356,4355,4386,5840,4102,4108,4437,4438,5611,5830,5827,5817,5810,5833,5146,5607,5605,5629,5630,5631] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5518,5519,5283,6410,5348,5917,5950,5922,5948,5537,5326,5265,5295,5294,5991,5539,6498,6499,6500,6409,6489,6491,6492,6384,5967,5822,5901,5824,5925,5906,5919,5902] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2710,4191,2715,2718,232,234,233,2474,2478,2484,2486,2477,2722,2557,4542,4543,4199,4209,2706,2721,2447,2450,2713,2443,2446,2462,2471,2551,2553,2440,2441,2525,2526,2565,4214,216,218,4534,217,215,4216,2736] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [489,4345,4348,488,1534,1541,1521,486,498,500,1526,1522,5159,5123,5124,5158,5163,1191,5125,5184,1192,1195,4688,4690,4648,1557,4347,4652,4660,4687,4689] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4763,4789,4788,4828,4752,5857,4483,4486,5862,5865,5859,5882,5853,122,4475,4450,4454,4455,128,130,4730,4732,4427,4479] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [7066,7060,2694,2696,2679,2680,2697,2638,2420,2691,2700,2701,4173,4175,4164,4496,7068,4162,4512,2704,4510,4511,4161,2615,2616,7119,7118] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [5666,5665,5668,5694,539,1324,537,538,1384,1381,1383,5730,5692,5696,5731,5732,5733,5697,5700,5701,5703,5741,5663,1320,1361,1362,1323,1391,5785,5794,5693,5695] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5666,5665,5667,5668,1325,4048,4077,1324,4078,4081,4076,5639,5640,4070,4073,4074,5635,5636,4071,1323,522,5810,5830,5827,5817,5833,5629,5630,5631] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6494,5539,6497,6498,6499,6500,6489,6491,6492,5559,5556,5557,5519,5575,5902,5822,5901,5824,5601,5602,6512,6513,5603,5563] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [523,1212,1187,5458,1332,1170,5457,5153,5154,5175,5176,5468,5466] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2692,2694,7114,2693,2695,3868,3875,7133,7135,7061,7063,7121,7126] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3664,3667,3639,3655,3656,3658,3009,3012,3013,3033,3066,3043,3149,3150,3136,3046,3435] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2710,4191,233,4161,4182,4542,4543,4199,4209,2706,4509,4518,4214,4530,4534,4541,4539,4216,4535,4514,4500] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [7056,4108,4433,4434,4435,5610,4142,4430,4461,4469,4432,4467,4109,5577,5580,5581,5582,5579,5608] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        