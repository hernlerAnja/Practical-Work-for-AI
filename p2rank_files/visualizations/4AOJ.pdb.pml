
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
        
        load "data/4AOJ.pdb", protein
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
 
        load "data/4AOJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4306,4301,4355,4356,4357,4311,4336,4337,4506,4866,4868,4869,4507,5372,4491,4891,4863,4864,4738,4739,4304,4303,5366,5367,5280,5371,5370,5296,5297,5364,5365,4300,4921,4894,5298,4895,4312,4503,4865,4867,4924,4928,5269,5278,4930,5279] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [565,460,1198,1199,1204,566,1131,751,758,1130,1132,748,334,694,690,691,692,201,330,332,333,318,199,200,143,144,145,149,150,147,148,696,1113,1114,1197,1200,755,1103,1112,180,181,1206,1205,718,722,721] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2411,2412,2773,2774,2259,2277,2278,2279,2768,2769,2771,3211,2225,2396,2833,2836,2860,2826,2829,2861,2234,2258,2227,2221,2222,2228,2223,2226,3278,3182,2643,3209,3210,3284,3285,3283,2800,2790,2796,2792,2799] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2269,2270,2271,1034,1040,1042,1026,444,2421,2730,2731,2186,2289,2290,2417,2268,481,1019,513,1021,1037,1018,479,2732,505] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4825,3119,2559,4263,2591,2560,4827,4826,3115,4367,4368,3090,3104,3109,3089,3096,3105,3092,4366,4512,4347,4348,4349,4511,4516,4522] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [5634,6037,6038,5601,5604,5845,5431,5748,5894,5888,5880,5751,5871] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4506,4866,4868,4869,4662,4663,5380,4507,4632,5372,5396,4655,4738,5367,5374,5378,5365,4865,4867,4629,4630] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1584,1704,1713,1721,1437,1434,1264,1678,1581,1726,1727,1467] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3036,3056,2610,3037,4057,3011,4058,4088,4091,2626,2628,3017,2609,2615] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3527,3787,3494,3497,3929,3641,3764,3773,3781,3738,3931,3932,3777] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4600,4633,4562,4564,4565,4590,4519,4520,4602,4507,4632,5392,5393,4331,4334] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2567,2568,3293,2641,2772,3278,3287,2538,2411,2412,2774,3295,2636] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        