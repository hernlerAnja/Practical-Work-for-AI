
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
        
        load "data/1BI8.pdb", protein
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
 
        load "data/1BI8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4317,4318,5501,5502,5503,5485,5486,4177,4180,4170,4662,4719,4428,4337,4315,4316,4335,4449,4712,4461,4718,4460,3825,3857,3860,5481,3822,3849,3851,4695,4696,3823,3824,3810] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1391,1066,1176,1178,1441,1447,1434,1439,1448,899,1190,1156,586,554,1424,1425,2197,2210,906,909,1044,1046,1047,2214,2230,2231,2232,2215,2229,1157,1063,1064,1045,539,2208,561] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [193,2855,2865,2875,2916,2915,3091,2903,200,201,202,203,2695,2639,199,2866,2626,176,177,2627,2628,2638,2937,2694,2946,2935,2936,2934] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6205,3471,3472,6126,6135,6136,6146,6187,6186,6137,6368,6362,5965,3473,3474,5910,5909,5898,5899,6208,6217,6206,3464,3470,6376,3448,6377] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4175,4289,4287,4288,4290,4291,4292,3344,3777,3778,3791,3792,3810,5468,5735,5463,5466,5469,5470,5729,3793,4286,4301,4303,4187,4176,4300,4297] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [539,904,905,1030,1032,1017,1018,1019,1020,1021,2195,2198,2199,2200,2197,506,507,2192,520,521,522,511,933,2464,73,148] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2719,953,2702,509,513,514,515,494,497,2943,2959,212,210,2693,2694,2691,2700,2703,2705,501,521,217,220,221,207,2696,224,945,946,947,959] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1007,1010,998,999,1000,1001,346,348,993,486,361,341,796,786,788,817,795,839,840,844,854,856,849] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3612,4057,4059,4067,4088,3617,3610,3574,3582,4066,4110,4111,3619,3622,3757,3632,4265,4269,4270,4271,4272,4125,4127,4278] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3765,3772,3780,3785,3786,5962,6214,6215,6217,3491,3792,3481,5965,5976,3488,5967,5964,5971,5974,3483] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [460,461,246,462,265,45,399,414,247,5,9,23,26,21,22,40] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3841,3843,3875,3874,3883,3939,3867,3869,6006,4215,4232,3802,3839,4220,3940,4228,4222,5987] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3294,3293,3303,3276,3280,3536,3685,3316,3517,3733,3297,3311] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [804,2022,2023,1291,1297,2021,2018,801,807,776,811,2032] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4072,5292,5293,4047,4562,4568,4569,5283,5294,5289] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        