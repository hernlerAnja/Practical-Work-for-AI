
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
        
        load "data/5LMK.pdb", protein
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
 
        load "data/5LMK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1078,1150,256,147,273,1050,1079,92,146,107,108,96,98,100,693,89,94,95,662,93,656,679,686,1062,1151,1155,397,1158,635,632,642,659,500,501,636,637,638] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5082,5084,7658,7684,7685,7686,7687,7688,5079,7657,31,7622,7623,7654,7656,30,5098,7624,534,200,7253,7254,7663,28,236,522,523,525,531,7244,42,41,250,1,2,4,5,22,547,626] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4650,4651,4652,4612,4601,4602,4603,4605,4606,5158,5168,5185,4761,4778,5159,5161,5163,5164,5588,5676,5681,5576,5605,4613,5684,5027,5604,5677,5678,5682,5219,4596,4597,4598,4594,4600,5180,5182,5188,5205] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3013,3445,3446,5057,5058,5060,3422,5075,4509,4545,4547,4741,5152,4546,4705,4755,3012,3454,4536,5049,3003,5048] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [508,1137,6890,2341,6886,6889,1107,6888,526,6909,6907,6908,237,7260,7259,475,476,1095,1092,645,643,646,648,651,676,241,647,486,1120] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3534,3535,3570,2870,2871,2873,2874,3723,2866,1228,2878,1215,1245,2864,1244,3721,3569,4387,4396,4382,4394,3601,3685,3688,3719,3690,3695] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [2901,2963,2928,2929,2926,3778,2722,3774,3510,3515,3521,2932,2905,3767,3768,3770,3527,2935,3828,3830,2545,3833,3891,3817,3818,3864,3869,3870,3847,2588,2587,2570,2574] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [5036,5034,4742,4746,5169,5172,5174,5177,5646,5001,5662,5663,4999,5621,5618,5619,5635,5636,5637,6621,2668,2666,2667,3019,2645,2647,2648,2649,2651] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [1840,1859,1866,1867,1838,1839,1824,1833,2189,2191,2175,1432,1433,1442,2181,2182,2183,1419,1868,1827,2190] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [8063,8050,8061,8066,8051,6963,7204,7167,8011,8001,8005,8007,7176,6834,6835,7169,7170,7173,7142,6825,6821,8080,8103,8102,8124,7762,7768,8000,8003,7146,8052,7751,7756,7759] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [3174,3175,2878,2879,1215,1206,1201,1202,1205,1214,3535,3570,1228,1245,1247,1244,3542,3544,3541,3543,3569] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [5769,8627,8629,7936,7840,7842,7955,7956,7811,5754,7929,7926,7105,7775,5771,7957] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [553,3415,3413,4528,4506,4507,4535,4536,3445,3446,3447,4509] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [357,386,384,364,1173,1175,1176,1177,1181,1273,1275,1272,3188,1277,3179] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [5758,5737,5984,6666,6667,6668,6723,6684,5752,5750,5991,5990,5739] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [3574,3618,3620,3607,3609,3606,4076,2448,2440,2442,2444,2446,2450,3619] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [4905,4907,4885,5711,4878,7429,5699,5701,5702,5707,5703,5819,5798,5799,5803,5801] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [6425,6300,6292,6393,6395,6305,6311,6397,6155,6154] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [2572,3483,3499,3500,3489,3497,445,2541,442,3482,3485,3486,3487,3488,409,2562,2561] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [7850,7859,7848,6693,5749,7815,6697,7861,6694,6695,8309] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        