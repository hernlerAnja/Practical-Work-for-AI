
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
        
        load "data/7YSU.pdb", protein
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
 
        load "data/7YSU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6495,6496,6497,6498,6499,3720,3721,3697,3714,5552,5576,5577,5575,3616,6485,6486,3722,3696,3713,3087,3088,167,3680,3698,3086,3585,3587,3653,3579,3580,3583,3615,6416,6821,168,6380,3046,3056,5563,3557,6397,6402,6404,6410,6469,6394,6407,5549,6195,5556,159,160,165,172,3123,3124,3673,3670,187,184] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [9734,9735,9726,9727,9728,9729,11609,11591,11593,11594,11595,10957,10966,11610,10970,7647,10979,10982,11870,9607,9608,10969,10972,9609,10973,10976,10978,11867,11868,11871,7718,7722,7713,7676,7684,7709,7671,7672] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [10671,10743,10744,10745,10746,10747,10839,10829,10834,10820,10822,10824,10818,10819,10821,10823,10845,10841,10656,10314,10313,10315,10360,10361,10372,10393,10394,10399,10651,10295,10684,10685,10414,10296,10410,10422,10426] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7119,7118,7120,5164,5165,5507,5508,5521,6460,6444,6714,6459,7117,7032,7033,7034,7091,5181,7107,7095,7098,4775,4774,3872,3873,6158,6159,6160,6161,6162,6163,6164,6699] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3951,3977,3971,4150,4151,4156,4158,4161,8804,8788,3965,4175,4171,4172,3945,3946,3947,8676,4152,8789,8658,8975,8987,8657,8988,4176] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [124,3132,2722,2723,90,92,2724,2752,3096,3097,6384,123,2741,3155,2739,153,155,3157,156] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [5698,5188,5195,5738,12219,5234,5236,5702,6313,12217,12222,12227,12225,12241,5214,5220] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [6527,6550,6556,6557,6560,5533,6562,6552,5629,6594,6596,6597,5552,6532,5658,5659,5684,6564,5651,5657,5655,5558,5559,5624,5650,5626] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [2664,2330,2151,2338,2336,2631,2633,2636,2632,2645,1540,1653,1654] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [284,552,554,913,322,288,328,742,331,912,714,955,732,735,956,715,619] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5111,4371,4372,4702,4703,3794,3802,3795,5109,5110,7501,7504,7496,6664,3814,7493,7495,7490] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [11204,8590,8593,11206,11207,11896,10928,11895,11619,8336,11554,11552,11637,10895,8576,10892,10894,10927,10888,10890] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [4637,4638,5086,5087,4214,4647,8936,8938,4203,4205,8937,4669,4608,4209,4577,4614] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [7181,7202,7204,7205,4249,4280,4281,4283,4248,4247,7182,7164,7166,7077,4250,4304,4272,4273] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [10895,8576,8577,8334,11894,11908,10892,10927,11896,11895,11619,8336,11912,11915,8317,10889,10888,10890,8322] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [2907,2908,2909,1098,3266,2561,2562,3332,3334,1110,3269,3267] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [7835,7847,7849,7850,7837,7899,7900,7859,7902,7975,8059] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [8558,8559,8560,8561,10875,10876,8344,8386,10032,10033,8562,10870,10055,10865,10037,10871,10869,10034,8568,8573] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [8609,8610,8611,8627,11235,11242,8820,8628,8795,11228,9084,4071,4093,4094,11238,11239,11240,4084,4085,4091] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [11578,11805,9603,11786,11577,11825,11828,11824,11830,11710,11784,11818,11819,11792] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [10165,10285,10559,10287,10073,10668,10278,10660,10297] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        