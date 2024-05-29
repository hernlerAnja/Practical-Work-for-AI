
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
        
        load "data/6GUB.pdb", protein
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
 
        load "data/6GUB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5142,5558,5173,5559,4599,4600,5535,5139,5145,4561,4563,4565,4617,4618,4619,4567,5122,4720,5114,4877,5118,4737,5638,4981,5112,5113,5115,4735,5117,5630,5631,5635,5530,5542] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [147,91,93,145,146,89,95,626,643,646,261,617,618,248,676,1135,1041,1046,1063,1034,484,485,1062,1134,265,381,263,620,621,622,1139,126,127,128,1142] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2988,2989,3423,5011,5014,5029,3389,3398,4503,3357,555,4494,3391,3420,3421,537,4473,4474,4476,559,4700,4664,4714,5106,4513,4514,4502,3430,5002,5003,5005,2979] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [7873,31,7848,7872,4,192,7438,7439,41,42,228,516,518,533,515,506,507,7880] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [8115,8116,8120,8814,8812,8800,7994,7995,5710,8024,8026,8114,8139,8141,8110,8112,8113,8108,7307,7957,7290,7304,5725,7296,7300,7960,7299,5708,5723,5724] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3689,3691,3545,2854,2840,1227,1229,3507,3510,3670,3660,3639,3663,4362,4364,4350,2846,2847,2849,2842] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [1420,2379,2380,1403,1850,1851,2173,2174,2175,1811,2167,1808,1426,1416,1366,2165,2166,1824,1817,1822,1823,1843] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5909,5912,5900,5898,5899,6623,6624,6625,6821,6830,6829,5922,5916,5861,6615,6616,6617,6307,6348,6304,6313,6609,6320,6346,6347] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [7020,7354,7355,7019,7389,8264,7327,7352,8195,8251,8235,8236,7148,8189,8191,7361,7934,7358,8247,7010,8286,8308,7330,7945,7950,7952,7944,7939,7942,8287] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1092,1076,1079,1091,659,631,628,629,635,7445,630,7093,7092,459,460,470,1121,1104,1120,2324,2325] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2939,2904,2878,2877,2902,3745,3500,3502,3737,2880,2905,2908,2911,2698,3741,2553,3484,3489,3495,3784,3785,3814,3858,2570,2569,3797,3836,3837,3831,3835,2527,3786,3794,3801] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5018,5034,5037,7840,7841,7869,7870,7839,5019,5020,7900,7902,7904,7835,7861,7866] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [5575,5617,5144,5145,5146,5131,2642,2643,5589,5590,5127,2626,2621,2624,5124,5125,2623,4956,4955,5600,5616,6775] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [8490,8043,8045,8491,8044,8034,8032,8031,8487,8488,6880,6835,6882,6883,6881] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [7306,7307,5727,7601,7304,7305,5725,7966,7967,7968,7994,7995,7600,5681,5745,5694,5708,5723,5724,5747,5719,5695] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [5502,5501,5519,5534,5798,5542,5660,5661,5637,4594,4597,5638,4588,4599] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [6246,6238,6436,6579,6101,6100] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [7712,7199,7542,7208,7543] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        