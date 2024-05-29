
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
        
        load "data/7U2Z.pdb", protein
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
 
        load "data/7U2Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4603,4595,4596,4628,4827,4828,4829,4856,4833,4850,442,1345,1346,1349,1352,1353,1347,466,468,470,1203,4585,4604,1186,1202,1226,1219,4579,1215,1216,228,232,234,235,238,240,387,388,393,4855,389,413,410,392,406,222,223,224,241,1332,1331,460,461,473,477,480,459,455,462,1462,4627,4854,4873,4851] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4133,3233,3001,3154,3159,3227,3228,3247,3153,3155,3160,2047,2048,3235,3236,3237,2032,4151,3209,3211,3177,3180,3222,1809,4139,3003,3004,3006,2999,3002,1810,4248,4135,4138,4136,4137,3962,4223,4143,3244,3534,3240,2070,2059,2061,2069,1832,1834,1842,4238,4240,2054,2036] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1326,1329,1332,1242,1323,1324,1325,371,372,481,513,748,814,1214,1243,592,221,222,241,208,258,779,781,788,355,763,768,761,764,785,259,204,257,1226,1215] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4029,3139,3355,3549,4028,3137,3025,2975,3122,3567,3554,3571,4012,4111,4112,4115,4116,4109,4110,3248,3600,4000,3574,3581,4001,2988,2977,2978,2989,4118,3138,3026,2971] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1476,4586,4587,1517,1518,1519,1441,1448,1443,1477,1480,1827,1826,4575,4581,4582,1554,1546,1801,4612,4303,4305,4340,4343,4266,4263,1795,1800,4227,4231,4229,4332,4613] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1817,3972,1818,2989,2990,2996,4118,1798,1799,4250,4139,2991,3006,3007,3008,1808,3989,1793,4002,4005,4012,4001] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3761,3762,4036,4047,4049,4050,3763,3729,3799,3672,3674,3636,3637] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1571,1573,1562,1585,1584,1993,2022,2013,2015,1443,4789,4359,4371,4782,4229,4348,4775,4779,4370,2023] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3148,3526,3437,2951,3032,3036,3037,3033,3035,2795,2926,2928,3129,2796,2809,3419,3420] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4593,4595,4628,4827,4829,4856,4855,4618,4622,4653,4845] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1011,1283,850,851,975,977,1013,1255,1261,1263,1264,976,886,943] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1117,1119,1141,1116,2670,2369,2370,2361,1607,1613,1618,1380,1381,1620,1617,1619,1610,1611,1612,1623,2363] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3902,3903,5456,5457,5156,5138,5137,5144,5147,5149,5127,4397,4409,4396,3906,4403,4401,4405,4406,4404] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [28,381,674,655,29,673,184,265,183,268,270,159,161,656,42,740] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        