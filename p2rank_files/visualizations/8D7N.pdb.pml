
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
        
        load "data/8D7N.pdb", protein
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
 
        load "data/8D7N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [196,7059,7061,7062,6853,198,5051,5233,5964,5980,5723,5724,6103,6011,6015,6016,4954,4971,217,6807,6803,6818,6804,6056,6086,6102,6055,221,222,9479,5265,5266,5965,5262,5264,5934,7078,7081,7079,7080,5579,5578,6772,9478,9480,4977,5052,4979,4980,4988,4989,5029,5049,5050,5258] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2088,2347,2344,2346,2089,2103,2137,4913,2359,2360,547,549,550,551,1219,1249,1250,795,863,864,1265,1008,1009,1302,9580,274,9582,2366,9581,239,4911,4932,241,334,336,518,335,256,262,264,265,337,1371,2091,2090,2092,1387,4936,4937,1388] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1327,1400,4716,4717,4720,4730,4697,4699,4734,2247,4666,4879,4737,4882,1316,1328,2170,2181,2154,2245,2246,2251,4723,2193,4859,4862] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [6869,9412,9414,6962,6885,6960,6961,6911,6972,2,5,167,6042,15,19,22,145,146,8,6043,6115] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [324,312,323,325,568,585,599,603,604,1169,6153,6193,1171,6152,6149,6150,6151,6161,6162,276,283,311,589] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [5884,5318,5314,5033,5283,5038,5039,5040,5027,1434,1436,1437,1438,1435,5886] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [6377,9192,9193,9194,9195,9197,9132,9134,9135,9312,6422,6354,9136,9137,6423,6425,9138,9345,9310] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [8435,8485,8517,8515,8120,7918,8815,8567,8437,7622] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [6807,6806,9450,6086,6087,6089,6088,7557,9451,8140,7993,6211,9449] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1371,1372,1373,1374,2077,2092,2867,9551,9552,2842] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3722,3405,3720,2905,2907,3742,2906,3852,3203,3205,3800,3782,3795,3770,3802,4100,4102] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        