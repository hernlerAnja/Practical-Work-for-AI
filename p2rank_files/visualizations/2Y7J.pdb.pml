
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
        
        load "data/2Y7J.pdb", protein
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
 
        load "data/2Y7J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2492,4703,2471,2499,2500,2652,2653,2675,2450,2515,4909,2517,4886,4887,4701,4733,4734,4735,4726,4682,4709,4723,4725,4713,4719,2491,2635,2639,2490,2489,4611,4612,4873,4872,4888,4889,4890,5250,5252,5272,4749,4751,2655,4869,2638,2988,3004,2379,2380,2984,2986,2378,2424] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [233,234,387,388,372,390,6990,6991,7006,7129,7130,7008,6913,6914,389,6939,6960,6992,7143,7144,7146,171,251,249,196,235,6977,7126,6982,6986,146,373,774,775,7477,100,101,753,755,7475,6868,6869,7498,7497,6867] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3435,3446,3548,3556,3558,3560,3546,3544,3545,3050,3076,3084,3462,3463,2466,2454,2460,2463,3087,2629,2508,2631,2630,2455,2456,2506,2458,2507,2615,3030,2822,2821,3028,3027,3029,2900,3562,2789,2899,3024,3034] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [7953,6998,6999,6944,6945,6947,7106,7541,7544,6943,6949,8034,7952,7391,7545,7528,7118,7518,7519,7521,7523,7524,7520,7522,8041,8042,8043,8037,8036,7120,7122,7281,8044,6955,6964,6985,7121,7314,7581,7924,7925,7936,7578,7570] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [847,858,1201,1229,1230,179,822,823,821,1311,1312,1213,1320,365,557,1313,1314,1319,188,190,240,242,228,363,364,175,177,181,182,184,241,349,805,667,796,798,589,590,668,800,801,818] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [4695,4697,4698,4740,4742,4706,4692,4686,4688,5730,5812,5731,5344,5318,5355,5702,5352,4864,5819,5820,5821,4865,5814,5815,5714,4863,4741,5295,5297,5298,4690,4849,5164,5165,5166,5302,5315,5319,5320,5054] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1499,1485,1486,1497,911,905,907,875,1768,1743,1206,1477,1806,1779,1780,1781,1871,873,1196,1197,1205,906] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3104,3983,3102,3106,3734,3736,3722,3723,3719,4008,4048,4046,4090,4091,4021,4010,4020,4019,3136,3140,3134,3439,3438,3714] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [5372,5370,5706,5707,5374,5408,5403,6271,6234,6261,6270,6272,5400,5402,6259,5404,5968,5976,5977,5988,5990,6283,6297] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [8210,8212,8198,8199,8190,7596,7598,7929,7928,8495,8496,8497,8522,8580,8581,8524,8459] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [378,381,526,519,228,379,397,493,221,222,494,1332,1333,1334,1335,518,556,1320,365,557,1314,1315,1318] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4892,4990,5834,5016,4719,4720,4721,4865,4885,4884,4878,5023,4881,5053,4988,4879] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        