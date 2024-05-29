
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
        
        load "data/4KBA.pdb", protein
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
 
        load "data/4KBA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2232,2235,2278,2280,2281,2230,3120,3121,2710,3217,2703,2678,2680,2681,2279,2385,2387,2372,2722,2748,2226,2718,2712,2697,2702,3215,3219,3220,3224,3225,3218,2452,2242,2237,2389,2666,2486,3090,2238] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1047,625,628,629,1046,153,245,607,111,152,604,1141,1144,1152,1016,412,606,1143,154,260,262,592,258,115,174,103,99,623,636,638,674,648,649,1145,1146,1149,377,1150] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [5469,5564,5566,5568,5572,5439,5470,5567,4835,4534,4538,5573,5575,4531,5030,5052,5029,5027,4800,4577,4685,4575,4681,4683,5015,5071,4522,4526,4574,4576,4528,5046,5048,4668,4596,5059,5051,5097,5569] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [6836,6838,6839,7252,6837,6943,6819,6930,7271,7794,7800,6947,7021,7055,6945,7239,7694,7254,7277,7276,7793,7792,7255,7789,7791,6821,7296,7695,7284,7664] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1783,1784,1786,1268,1632,1630,1602,1600,3921,1591,3532,1614,1782,4101,4102,3499,3500,4099,4103,1781,4076,3947,3949,1759,1625,1619,1622,4097,4111,4098,3507,1267,1300,1275,3942,3931,3935,3936,3917] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [6361,6362,6366,8612,8459,8460,8589,8462,8012,8013,8045,8432,8616,8431,8614,8611,8020,8021,5795,8428,8430,8444,8448,5770,8449,8455,6199,6202,6205,6194,6171,6180,6363,6212,6210,6364,5763,5762,6181,6182] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4301,5252,6619,6615,6617,4303,4305,6567,6569,6611,6554,6556,6597,4265,4266,6527,6528,6529,6523,4277,4238,6568,4239,6606,6614] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [829,2037,2039,8814,2035,8816,8818,8778,1976,1987,2017,2026,2031,1989,1943,1948,1949,8789,8751,8752] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [7700,8948,7330,8933,8935,7741,7290,7291,7715,7707,7739,8930,8931] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4409,4427,4412,3141,3133,3165,4410,4414,2716,2717,2756,3126,3167] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [7977,7973,7976,7979,8353,7966,7967,7972,8274,8258,8270,8278,8393,7971] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [6675,6690,5105,6673,5066,5482,5490,5065,5475,5516,6677] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [642,643,682,1067,2097,1093,1059,1052,2093,2095,2109] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [5006,4943,4964,4965,4471,4468,4676,4467,4487,5007,4693,4493,4491] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        