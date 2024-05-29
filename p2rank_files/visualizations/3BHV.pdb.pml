
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
        
        load "data/3BHV.pdb", protein
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
 
        load "data/3BHV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [420,1183,293,294,295,296,419,1186,127,161,163,104,105,111,113,119,129,661,663,664,665,666,1090,1078,1085,714,721,1179,527,1106,1107,1178,311,133,141,177,279,97,684,690,176,178,94,95,96,99,102,747,93,687,706,698,383,384,385,386,387,1199,1185,1208,1209] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5665,5666,5737,5266,5649,5637,4844,4984,4698,5738,5742,5743,5745,5088,4827,5241,5246,5249,4717,4661,4662,4664,4716,4672,4660,4666,4718,4842,5219,5220,5222,5224,5225,5229,5644] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1123,1135,1136,1120,1121,703,260,671,679,7018,7037,7038,7389,7390,534,536,504,503,673,674,675,1164,1165,514,538,7022,7023,2377,1148] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3510,4602,4568,4569,4570,4571,3511,4576,596,595,599,4590,4591,3508,3487,3519,3446,3478,4599,4612,4613,4600,4601,4771,5118,5121,3072,3063,3073,4807,5213,5109,5110] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3596,3599,3632,3634,3780,3633,1272,1273,2924,1258,1256,1263,2940,2941,2942,1275,2938,2939,3235,3605,1233,1234,1243,1242,3748,3749,3752,4471,3728,3777,2930,2931,2933,4459,4457,4445,3755,3759,2926,2934] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2226,2448,2217,2218,2219,2225,1409,1410,1863,1860,1903,2211,1449,1451,1455,1463,1473,2456,2457,1902,1869,1874,1876,2441,2442,2227,1911,1894,1898] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [7818,7819,7825,7383,7384,7831,1,559,560,562,46,550,551,259,7799,7820,10,32,35,223] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [7975,7977,8090,8091,8071,8763,8765,8751,5831,5832,5815,5817,5818,7944,7945,7946,8061,8064,8065,7235,7241,7244,7249,7911] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5682,5697,2698,2702,2703,5233,5679,5723,5724,2712,2710,5238,2726,2727,2728,5095,3079,5230,2707,2705,2706,5707,6714,5062,5063,5064] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2636,2653,2995,3023,2989,2992,3589,3591,3826,3823,3824,3834,3828,2961,2988,2965,3925,3584,3947,3886,3874,3889,3873,3883,3884,3875,2654,3920,3926,3903] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [7306,8237,8238,7303,8198,8215,8187,8136,8185,8186,7885,7895,7297,8140,8142,8146,7272,6955,7276,7896,8259,7901,7903,7890,7893,6964,6965,8201,7299,7300,7334,7093,6951] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2506,2508,2512,2519,4130,2510,2514,2516,2522,3673,3682,3681,3683,3684,3670,2465,3671,4128,4095,4123,4126,4127,2523,2524,2526] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [6488,6207,6368,6395,6397,6404,6345,6366,6372,6342] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [7913,7249,7250,7251,7252,7917,7546,5792,5793,5801,5852,5802,5831,5832,5815,7945,7946] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4631,5198,5179,4582,4583,5197,4853,4729] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3512,4568,4569,582,5140,581,3505,3507,3508,5120,5121,4,566,578] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        