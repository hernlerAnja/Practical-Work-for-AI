
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
        
        load "data/8F88.pdb", protein
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
 
        load "data/8F88.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6910,3880,3882,6911,3855,4909,4470,4825,4827,4468,4109,4098,4099,4479,4131,4477,4478,2904,3878,3879,3910,3877] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4917,4913,4503,4512,4513,4514,4515,4500,4826,4827,4908,4467,4469,4495,4499,4742,4744,4745,4740,6491,6492,6493,4929,4801,6452,6497,6490,6494,6495,4770,4501,4774,4777,4491,4781,4498,4765,4766,4924,6919,6211] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2287,2283,2291,2293,2294,2295,2296,2297,2299,2318,4433,2288,4431,4435,4203,4405,4407,2321,2319,2320,2323,4126,4451,4485,4169,4170,4172,4173,4201,4184,4166,4165,4486] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [5387,5391,5495,5376,5378,5866,5883,5507,5740,5865,5504,5294,5493,5295,5869] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [185,3554,183,184,203,3416,3417,3418,179,180,1970,3329,3328,3330,3403,168,177,163,167,188,189,1931,3555,3571,3568,3572,3623,3402,3550,3398] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3750,3752,6865,6867,6861,2641,2639,6849,3200,3742,3187,3190,3198,3220,3223,3993,3994,2627,3214] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [4130,4131,4478,4475,4906,4909,4470,4825,4827,4908,4818,4816,4817,4820,4822,4905,4884,4885,4857,4859,4860,4887,4886,4895,4896] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4266,4308,4309,4304,4306,4307,2485,2493,2494,2481,2454,2455,2452,2448,2451,2450] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [6388,4596,6326,6364,6373,6365,6374,6382,6591,6389,4614,4597,4599,6587,6621,6585] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4504,4506,4507,3851,3852,3853,3854,4470,4471,4465,4466,4467,4469,3821,3826,4527] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [915,916,1434,6795,6807,1442,1444,334,6811,6813] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [960,1218,1219,1381,1401,854,856,867,935,861,1140,1202,978,975] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1046,1048,1028,1035,1030,931,666,689,690,691] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5422,5412,5905,5885,5883,5508,5739,5740,5522,5682,5723,5724] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [5403,5422,5470,5509] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [5205,5275,5278,5280,5072,5312,5199,5200,5201,6165,6166] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        