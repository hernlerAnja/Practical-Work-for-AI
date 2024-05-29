
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
        
        load "data/6NVL.pdb", protein
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
 
        load "data/6NVL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [191,194,195,175,176,219,763,745,1158,742,1157,746,189,773,1134,1137,1234,1235,1241,489,530,604,606,1243,1250,1252,196,199,220,367,366,1242,1142,355,356,360,352,719,720,724,731,234,235,738,364] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3980,3984,3985,3991,5920,5921,5922,3983,5954,5955,5956,5957,5918,5924,5942,5986,5987,5951,5950,3976,5894,6106,6107,6131,6132,6071,5930,6037,6038,6083,5928,5889,5891,5943,5923,3441,3442,3445,3475,3782,3812,3776,3758,3785,3439,3436,3437,3438,6016,3467,3811,3959,3784,3789,3796,3788,3795,3798] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4337,4338,4452,4317,4318,4450,4453,4801,4813,4819,4815,4822,5234,5235,4847,4843,4840,4682,4464,4466,4468,4681,4683,4684,4796,4797,4451,4460,5311,5312,5313,5316,4574,4607,4572,4573,4781,4606] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2480,2483,3359,2348,2349,3279,2468,2835,2839,2861,2857,2860,3280,3352,3360,2471,2476,2878,2363,2851,2853,2716,2717,2718,3370,3353,3361,3372,2605,2637,2834] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [6593,7231,6591,6690,6691,6389,6695,6702,6713,6401,6272,6273,6288,6716,6734,6707,7311,7301,7304,7232,6493,6494,6519,7305,6520,6676,7320,7322,7306] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [861,868,851,863,864,7510,879,1808,3902,3904,3913,3866,3871,3877,3835,1592,1595,1801,1809,3829,853,854,855,1604,1594,1602,3860,3839,7487,7488,3914] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3914,3916,3949,3911,3912,7474,7476,7477,7479,7481,7819,7820,7478,3883,3886,7817,3979,4008,3947,3948,7780,7781,7783,4067,4099,4025,4026,4029,3922,4030,4075,3919,3881] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [5971,5410,5601,5826,5693,5783,5705,5824,5974,5571,5814,5568] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3710,3711,1646,1640,1643,1630,3722,3708,1343,1618,1619,1617,3823,3834,3827,3830,3820,3623,3626,3826,3694] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1045,1043,1458,1044,1996,1993,2000,1015,1455,1986,1988,1466,1989] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [7897,7002,6978,7896,7890,7682,7662,6870,6872,6834,7683,6973,6962,6957] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3071,3072,3330,2926,3041,3042,3043,3044,3312,3313,3314,3020,3040,2927] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5016,5015,5053,4990,5024,5270,5271,5289,4991,4992,4969,4993,5273,4887,4889,4989,4898,4968,5002] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        