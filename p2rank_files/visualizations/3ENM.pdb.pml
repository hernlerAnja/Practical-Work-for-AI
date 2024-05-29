
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
        
        load "data/3ENM.pdb", protein
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
 
        load "data/3ENM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3394,2349,2455,2456,2841,3422,3423,3425,3429,2842,2457,2458,3290,3291,3292,2863,2871,2877,2878,2882,2883,2442,3440,3397,3267,2887,2888,3400] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [7303,6881,6882,7272,7718,7304,7309,7716,7267,7313,7314,7851,7848,7855,7866,7286,7289,6868,6883,6884,7297,6775,7268,7717,7820,7823,7826,7693,7329,7330,7694,7825] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4915,4927,4929,4909,4911,4931,6801,4830,4906,4910,4829,4863,4864,4859,4823,4827,6800,6802,6672,4603,4632,4614,4615,4616,5029,6837,6838,6855,4397,4398,4389,4390,4391,4392,4395,4396,4399,4926,4942,4948,6836,4582,4583,4580,4581,4602] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [5001,2790,2791,2789,4959,4960,4961,4962,2584,2546,2547,2766,2806,4778,2762,2764,4751,2763,2765,2767,2548,4985,4990,4742,4743,4986,4989] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [7174,7192,7193,7232,7008,7009,7010,6610,7231,7000,7002,6900,6902,7230,6971,6933,6972,6973,7034,6967,6969,6970,6974] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [303,334,401,403,372,373,374,370,371,404,405,631,632,633,593,304,409,655,411,594,11,435] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [5009,5010,5011,5013,5008,1263,1269,1272,4528,1271,4438,4561,4643,4413,4411,4416,4439,4950,4968,4970] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [734,735,741,742,777,736,737,738,4536,1274,4457,740,1266,1267,4522,780,4507,698,707,708,4503,4510,4501,2217,2218,4461,4467,4470,4469] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [177,4542,159,160,161,4545,290,292,645,646,4662,5625,5626,5013,4658,4661,294,4527,4529,1258,1257] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1641,1673,1674,1675,1677,3543,3545,1676,1671,1672,3580,1629,1640,1615,1711,1678,1710,1712,1632,8718,3563,1634,1635,1637,1619,8719,8720,3549,3550,3556,1616] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6640,7199,7200,7201,7202,6660,6661,6639,6663,7198,7182,6755,6759,6760,6761,6764,7225,7241,7242,7244,6792,6793,6753,6678,6679] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2576,2608,2605,2606,2828,2580,2609,2613,2584,2547,2766,2805,2748,2767,2638,2225] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [7025,7048,7049,7629,7798,7628,7639,7633,7641,7794,7803] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1152,1162,892,920,2110,913,2112,894,520,943,944,1154,522] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [2755,2365,2257,2367,2364,2237,2240,2247,2243,2436,2834] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        