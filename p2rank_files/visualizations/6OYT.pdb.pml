
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
        
        load "data/6OYT.pdb", protein
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
 
        load "data/6OYT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5530,5532,5533,5583,5686,5540,5541,5584,6057,6059,6486,6569,6570,6571,6572,6575,6081,5529,6487,6085,6460,6062,6078,6063,5535,6039,6040,5701,6076,6086] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [683,698,701,1101,705,1100,168,172,174,706,725,679,682,1074,329,659,660,169,171,226,227,344,528,1183,1184,1189,179,180,186,187,346,345,1185] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3737,3840,4221,3680,3682,3683,3679,4214,4217,4216,3980,4008,4010,4750,4757,3698,3857,4642,4742,4743,4746,4747,3685,3688,3690,3691,4749,3736,3738,3686,4657,4658,4740,4741,4258,4262,4631,4236,4239,4255] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2394,2397,2402,2378,2803,2360,2375,2802,2886,2401,2776,2885,2887,2888,2891,1863,1859,1860,1865,1862,1912,1913,2016,1914,2353,2355,2356,2894,1870,1871,1874,2032,2892] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1129,1141,1142,1117,4674,4249,4685,668,1169,1170,669,4699,4694,4698] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4913,4914,4911,4912,5273,5276,5277,3153,3152,5259,4909,4916,4917,4920,4504,5278,5282,5290,4544,4915,4532] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2829,2839,2840,2843,2830,2844,6048,6065,6554,6556,6503,6527,6528,6539,6064,6537,6060,2819] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4091,4225,4226,4725,4726,4727,4090,4709,4671,4674,4249,4230,1129,1127,1128,1138,1141,1117,4699,4708,4698,4710] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6738,6740,6742,6363,6361,6373,6736,6743,7195,7214,7218,6744,7209,7212,7213,6747,7225] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [987,1257,1646,1632,1633,975,1255] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [56,58,53,60,68,77,79,36,577,578,590,576,633] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [557,29,21,14,25,289,267,323,556,304] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1122,3824,1124,766,765,733,776,3767,3768,1123,696] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4679,4680,4681,4290,4314,4315,4317,4316,256,4327,312] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        