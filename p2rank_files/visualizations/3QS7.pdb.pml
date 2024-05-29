
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
        
        load "data/3QS7.pdb", protein
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
 
        load "data/3QS7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6274,6276,6240,6241,6242,6277,6046,6229,6172,6233,6044,6047,6378,6381,6383,6043,6133,6395,6396,6298,6001,6296,6126,6129,6132,6134,6127,6297,6299,6300,6301,6302,6147] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4079,4082,4083,4086,4235,4236,4238,4240,3993,3994,3996,4167,4168,4172,4179,4180,4161,4164,4165,4162,4076,4111,4335,4237,4239,4241,4215,4214,4216,4234,4320,4322,4233,4246,4254,4255,4317] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4965,4975,54,58,59,49,5161,599,5132,596,4972,5134,4974,600,603,568,593,5163,4962,4966,4977,4979,66,5160,10,592,622,628,40] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [9178,9194,9196,9529,9685,9701,9526,9530,9533,9700,9174,9645,10410,9641,9681,9688,9657,9659,10412,10414,10420,9187,9703,9183,9543,9547] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [6820,6462,6466,6471,6970,6944,6982,6942,6484,6824,6932,6813,6817,6821,6966,6474,6972,6973,7708,7705,7695,7697,7699,6475,6482,6986] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2056,8695,8675,8689,8698,8898,8705,8913,8701,8808,8811,8812,8821,8822,8806,8807,8809,2055,8885,8676] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [4398,4733,4736,4729,4732,4884,4885,4380,4844,4854,5611,4892,4887,4856,4882,4878,4900,4894,4898,4897,4396] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3285,3286,3284,3761,15,3283,3251,3246,3256,3281,3282,3239,9,3315,3232,3234,3231,3260,3261,3259,3265,3758,3756,3753,3754,3781] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [2577,2579,8869,2580,8866,8838,8840,8678,2581,8867,2609,8680,8672,8668,8671] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [7274,7071,7083,7080,7077,7057,7197,7261,7182,7184,7289,7185,7187,7188,7198,1048,1047,7058] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [8866,8838,8678,2581,2606,1984,8681,2609,8680,1992,2032,8672,8668,8671] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [8332,8450,8451,8365,8364,8626,8920,8344,8345,8328,8637,8905,8922] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2602,2604,2599,2613,1714,2362,2594,2621,2625,2635,2624,2637,2638,2387,2390,2384,2360,2371,2650] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [5115,5101,73,5197,5198,5199,5102,63,65,100,5116,69,60] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [6696,6746,6745,6710,6747,6833,7008,6714,6711,7281,6708,6832,7298] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [9423,9455,9541,9542,9723,10013,9456,9419,9435,9436,9999] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [6696,6746,6745,6710,6747,6833,7008,6714,6711,6708,6533,6832,6628] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        