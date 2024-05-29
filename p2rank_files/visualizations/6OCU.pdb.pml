
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
        
        load "data/6OCU.pdb", protein
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
 
        load "data/6OCU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4172,4483,4485,5198,5804,5805,4451,4452,5207,5209,1253,1254,1257,5208,5210,5592,5587,5589,5591,5810,5811,5812,5808,5818,5202,4527,4481,4165,4170,4171,4166,4169,4143,4206,5625,5621,5622,4528,5649,5650,1773,1772,5788,5795,5794,4181,5893] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5329,5501,5398,5896,5933,6362,5330,5344,5900,5905,6361,6443,6445,6446,6453,6447,6452,6454,5884,5800,5802,5889,5902,5906,6427,6428,5948,6334,5940,5969,5931,5885,5520,5521] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4326,4328,4332,4333,4337,4341,4038,4039,4248,4285,4286,4287,4246,4271,4279,2582,4000,4002,3991,3962,3956,3958,3966,4323,4298,4317,4294,4301,4303,2785,4027,4017,4015,4009,4016,4020,2571,2572,4018,4019,4028,4029,2809,4045] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2862,2863,2868,2865,957,2778,2782,944,4291,4300,2745,3034,3036,4302,960,2836,3053,3054,945,943,4620,2871,3039,3049,3045,3046] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [6231,6251,6309,6437,6308,6219,6438,6307,6233,6608,6606,6559,6577,6560,6561,6562,6563,6556] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2914,4595,3067,4599,2909,2912,3061,2922,2921,4593,4594,7695,7696,7663,7664,7694,7669,3074,7670,7672,7635,4586] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4262,4263,4264,3024,4261,6990,3021,2720,2919,2723,3005,4586,2911,3029,3030,3028,2914,4595,4599,4600,2909,2912,2922,4606,3016] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4544,4545,842,845,4778,4810,840,834,4812,4836,4811,5840,4865,5864,5865,4831,4830,4833,5832,5837,4517,4862,4863] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [2897,3104,3108,8438,8440,2916,2917,2702,2705,8439,3062,2922,2711,8403,7662] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [6615,6728,6725,6726,6648,6649,6650,6618,7305,6585,7339,7341,6676,6679,6687,7342,7344,7345,6587,6616,7331,6580,7332,6614,6617,6729,7306,6727] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4441,4738,4740,1186,4774,4739,1956,1955,5180,1659,1660,1958,1222,1233] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1768,1797,1801,1804,5791,1773,5712,1273,1274,1769,1770,1771,1772,1799,5790,1805,5749,5750,5767,5773,6409] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4821,577,578,579,518,621,548,552,549,618,610,616,813,4790,816,784,837] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1696,1165,1166,1168,1569,1572,1485,1488,1492,1691,1694,1702,1703,1158,1588,1516] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4834,5193,5194,5876,4826,5171,5245,4856,5144,5148,5172,5493] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        